object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 507
  ClientWidth = 1255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 1255
    Height = 386
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'FORMA DE PAGTO'
        Width = 247
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NATUREZA'
        Title.Caption = 'NATUREZA DE OPERA'#199#195'O'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#176' NOTA FISCAL'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAEMINF'
        Title.Caption = 'DATA DE EM. DA NFE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFCE_NUMERO'
        Title.Caption = 'N'#176' NFCE'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Title.Caption = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'PEDIDO'
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1255
    Height = 121
    Align = alTop
    TabOrder = 1
    VisualStyle = vsGradient
    object Label3: TLabel
      Left = 432
      Top = 4
      Width = 127
      Height = 13
      Caption = 'Especie de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 616
      Top = 7
      Width = 125
      Height = 13
      Caption = 'Natureza de Opera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 432
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 432
      Top = 21
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 424
      Height = 117
      Align = alLeft
      Caption = 'Filtrar por Data'
      TabOrder = 1
      object Label1: TLabel
        Left = 13
        Top = 21
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
      object Label2: TLabel
        Left = 214
        Top = 21
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
        Left = 83
        Top = 18
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 272
        Top = 18
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 62
        Top = 45
        Width = 216
        Height = 41
        Caption = 'Filtrar por Data'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Emiss'#227'o da NFSe'
          'Emiss'#227'o da NFe')
        TabOrder = 2
        VisualStyle = vsGradient
      end
      object RLLabel12: TRLLabel
        Left = 5
        Top = 98
        Width = 6
        Height = 13
        Borders.Style = bsClear
        Caption = ' '
        Transparent = False
      end
      object RzRadioGroup2: TRzRadioGroup
        Left = 284
        Top = 45
        Width = 134
        Height = 41
        Caption = 'Tipo'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Saida'
          'Entrada')
        ParentFont = False
        TabOrder = 4
      end
    end
    object Button1: TButton
      Left = 1056
      Top = 26
      Width = 78
      Height = 34
      Caption = 'Filtrar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 871
      Top = 5
      Width = 50
      Height = 19
      Caption = '+'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 616
      Top = 26
      Width = 434
      Height = 89
      Enabled = False
      ParentColor = True
      ScrollBars = ssBoth
      TabOrder = 4
    end
    object Button3: TButton
      Left = 1056
      Top = 61
      Width = 78
      Height = 34
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = Button3Click
    end
    object RzComboBox2: TRzComboBox
      Left = 432
      Top = 67
      Width = 145
      Height = 21
      TabOrder = 6
      Text = 'Emitido'
      Items.Strings = (
        'Emitido'
        'Cancelado')
      ItemIndex = 0
      Values.Strings = (
        '1'
        '9')
    end
  end
  object Memo2: TMemo
    Left = 949
    Top = 233
    Width = 185
    Height = 234
    TabOrder = 2
    Visible = False
  end
  object RLReport1: TRLReport
    Left = 64
    Top = 233
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = False
    Borders.Width = 2
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 40
      Top = 56
      Width = 716
      Height = 61
      BandType = btTitle
      BeforePrint = RLBand1BeforePrint
      object RLLabel8: TRLLabel
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
      object RLLabel9: TRLLabel
        Left = 14
        Top = 25
        Width = 688
        Height = 32
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 40
      Top = 117
      Width = 716
      Height = 20
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = -1
        Top = 3
        Width = 101
        Height = 14
        AutoSize = False
        Caption = 'Data Emis.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 104
        Top = 3
        Width = 64
        Height = 14
        AutoSize = False
        Caption = 'NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 170
        Top = 3
        Width = 71
        Height = 14
        AutoSize = False
        Caption = 'NFC-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 304
        Top = 3
        Width = 324
        Height = 14
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 634
        Top = 4
        Width = 79
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 247
        Top = 3
        Width = 48
        Height = 14
        AutoSize = False
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 40
      Top = 137
      Width = 716
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLDetailGrid1BeforePrint
      object RLDBText1: TRLDBText
        Left = -1
        Top = 0
        Width = 101
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATAEMINF'
        DataSource = DataSource1
        Holder = RLLabel1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 104
        Top = 0
        Width = 64
        Height = 13
        AutoSize = False
        DataField = 'NUMERO'
        DataSource = DataSource1
        Holder = RLLabel3
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 170
        Top = 0
        Width = 71
        Height = 13
        AutoSize = False
        DataField = 'NFCE_NUMERO'
        DataSource = DataSource1
        Holder = RLLabel4
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 304
        Top = 0
        Width = 324
        Height = 13
        AutoSize = False
        DataField = 'NOME'
        DataSource = DataSource1
        Holder = RLLabel5
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 247
        Top = 0
        Width = 48
        Height = 13
        AutoSize = False
        DataField = 'CODIGO_FISCAL'
        DataSource = DataSource1
        Holder = RLLabel7
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 632
        Top = 0
        Width = 81
        Height = 13
        Alignment = taRightJustify
      end
    end
    object RLBand3: TRLBand
      Left = 40
      Top = 154
      Width = 716
      Height = 20
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand3BeforePrint
      object RLLabel10: TRLLabel
        Left = 651
        Top = 1
        Width = 65
        Height = 19
        Align = faClientRight
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 1
        Width = 617
        Height = 19
        Align = faClientLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 334
        Top = 2
        Width = 79
        Height = 16
        Info = itDetailCount
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 40
      Top = 38
      Width = 716
      Height = 18
      BandType = btHeader
      object RLSystemInfo2: TRLSystemInfo
        Left = 556
        Top = 0
        Width = 160
        Height = 18
        Align = faClientRight
        Alignment = taCenter
        Borders.Color = clGray
        Info = itNow
        Text = 'Relat'#243'rio emitido em '
      end
    end
    object RLBand5: TRLBand
      Left = 40
      Top = 174
      Width = 716
      Height = 20
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 576
        Top = 1
        Width = 140
        Height = 19
        Align = faClientRight
        Alignment = taCenter
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 14
        Top = 1
        Width = 120
        Height = 16
        Caption = 'www.silenus.com.br'
      end
    end
  end
  object Memo3: TMemo
    Left = 1112
    Top = 205
    Width = 185
    Height = 234
    TabOrder = 4
    Visible = False
  end
  object Query_Pedidos: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'pedidos.id_pedido,'
      'pedidos.numero,'
      'pedidos.data_hora,'
      'pedidos.nota_fiscal_serv,'
      'pedidos.nfce_numero,'
      'clientes.nome,'
      'nota_fiscal.valor_total,'
      'nota_fiscal.nota_fiscal,'
      'nota_fiscal.data_emissao as dataEmiNF,'
      'especie_pgto.descricao,'
      'forma_pgto.descricao'
      'from pedidos'
      ' inner join clientes'
      ' on(clientes.id_cliente = pedidos.id_cliente)'
      ' inner join nota_fiscal'
      ' on (nota_fiscal.id_pedido = pedidos.id_pedido)'
      'inner join especie_pgto'
      'on(especie_pgto.id_especie = pedidos.id_especie)'
      'inner join forma_pgto'
      'on(forma_pgto.id_forma = pedidos.id_forma)')
    Left = 168
    Top = 192
    object Query_PedidosID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = '"PEDIDOS"."ID_PEDIDO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_PedidosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"PEDIDOS"."NUMERO"'
    end
    object Query_PedidosDATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
      Origin = '"PEDIDOS"."DATA_HORA"'
    end
    object Query_PedidosNOTA_FISCAL_SERV: TIBStringField
      FieldName = 'NOTA_FISCAL_SERV'
      Origin = '"PEDIDOS"."NOTA_FISCAL_SERV"'
      Size = 18
    end
    object Query_PedidosNFCE_NUMERO: TIBStringField
      FieldName = 'NFCE_NUMERO'
      Origin = '"PEDIDOS"."NFCE_NUMERO"'
      Size = 18
    end
    object Query_PedidosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 70
    end
    object Query_PedidosVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"NOTA_FISCAL"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_PedidosNOTA_FISCAL: TIBStringField
      FieldName = 'NOTA_FISCAL'
      Origin = '"NOTA_FISCAL"."NOTA_FISCAL"'
      Size = 18
    end
    object Query_PedidosDATAEMINF: TDateField
      FieldName = 'DATAEMINF'
      Origin = '"NOTA_FISCAL"."DATA_EMISSAO"'
    end
    object Query_PedidosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ESPECIE_PGTO"."DESCRICAO"'
      Size = 50
    end
    object Query_PedidosDESCRICAO1: TIBStringField
      FieldName = 'DESCRICAO1'
      Origin = '"FORMA_PGTO"."DESCRICAO"'
      Size = 50
    end
  end
  object Tab_Especie: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ESPECIE_PGTO'
    UniDirectional = False
    Left = 160
    Top = 248
    object Tab_EspecieID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Required = True
    end
    object Tab_EspecieDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Tab_EspecieTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object Tab_EspecieDOCUMENTO: TSmallintField
      FieldName = 'DOCUMENTO'
    end
    object Tab_EspecieDIAS: TSmallintField
      FieldName = 'DIAS'
    end
    object Tab_EspecieTEF: TSmallintField
      FieldName = 'TEF'
    end
    object Tab_EspeciePDV: TSmallintField
      FieldName = 'PDV'
    end
    object Tab_EspecieVINCULADO: TSmallintField
      FieldName = 'VINCULADO'
    end
    object Tab_EspecieECF: TIBStringField
      FieldName = 'ECF'
      Size = 3
    end
    object Tab_EspecieNFCE: TIBStringField
      FieldName = 'NFCE'
      Size = 3
    end
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 472
    Top = 320
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 312
    Top = 192
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 400
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 400
    Top = 368
  end
  object Query_Nat: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from natureza_operacao')
    Left = 152
    Top = 336
    object Query_NatCODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NATUREZA_OPERACAO"."CODIGO_FISCAL"'
      Size = 10
    end
    object Query_NatDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"NATUREZA_OPERACAO"."DESCRICAO"'
      Size = 50
    end
    object Query_NatID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
      Origin = '"NATUREZA_OPERACAO"."ID_NATUREZA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_NatDESCRICAO_NOTA: TIBStringField
      FieldName = 'DESCRICAO_NOTA'
      Origin = '"NATUREZA_OPERACAO"."DESCRICAO_NOTA"'
      Size = 50
    end
    object Query_NatES: TSmallintField
      FieldName = 'ES'
      Origin = '"NATUREZA_OPERACAO"."ES"'
    end
    object Query_NatESTOQUE_FISICO: TSmallintField
      FieldName = 'ESTOQUE_FISICO'
      Origin = '"NATUREZA_OPERACAO"."ESTOQUE_FISICO"'
    end
    object Query_NatESTOQUE_FISCAL: TSmallintField
      FieldName = 'ESTOQUE_FISCAL'
      Origin = '"NATUREZA_OPERACAO"."ESTOQUE_FISCAL"'
    end
    object Query_NatFINANCEIRO: TSmallintField
      FieldName = 'FINANCEIRO'
      Origin = '"NATUREZA_OPERACAO"."FINANCEIRO"'
    end
    object Query_NatCALC_ICMS: TSmallintField
      FieldName = 'CALC_ICMS'
      Origin = '"NATUREZA_OPERACAO"."CALC_ICMS"'
    end
    object Query_NatCALC_IPI: TSmallintField
      FieldName = 'CALC_IPI'
      Origin = '"NATUREZA_OPERACAO"."CALC_IPI"'
    end
    object Query_NatCALC_ISS: TSmallintField
      FieldName = 'CALC_ISS'
      Origin = '"NATUREZA_OPERACAO"."CALC_ISS"'
    end
    object Query_NatREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
      Origin = '"NATUREZA_OPERACAO"."REDUCAO_ICMS"'
    end
    object Query_NatREDUCAO_IPI: TFloatField
      FieldName = 'REDUCAO_IPI'
      Origin = '"NATUREZA_OPERACAO"."REDUCAO_IPI"'
    end
    object Query_NatTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"NATUREZA_OPERACAO"."TIPO"'
    end
    object Query_NatPROCESSO: TSmallintField
      FieldName = 'PROCESSO'
      Origin = '"NATUREZA_OPERACAO"."PROCESSO"'
    end
    object Query_NatCALC_COMISSAO: TSmallintField
      FieldName = 'CALC_COMISSAO'
      Origin = '"NATUREZA_OPERACAO"."CALC_COMISSAO"'
    end
    object Query_NatICMS_ATIVO: TSmallintField
      FieldName = 'ICMS_ATIVO'
      Origin = '"NATUREZA_OPERACAO"."ICMS_ATIVO"'
    end
    object Query_NatICMS: TFloatField
      FieldName = 'ICMS'
      Origin = '"NATUREZA_OPERACAO"."ICMS"'
    end
    object Query_NatUF: TIBStringField
      FieldName = 'UF'
      Origin = '"NATUREZA_OPERACAO"."UF"'
      Size = 2
    end
    object Query_NatTRIBUTACAO: TSmallintField
      FieldName = 'TRIBUTACAO'
      Origin = '"NATUREZA_OPERACAO"."TRIBUTACAO"'
    end
    object Query_NatOPERACAO: TSmallintField
      FieldName = 'OPERACAO'
      Origin = '"NATUREZA_OPERACAO"."OPERACAO"'
    end
    object Query_NatID_TERMO_OBS: TIntegerField
      FieldName = 'ID_TERMO_OBS'
      Origin = '"NATUREZA_OPERACAO"."ID_TERMO_OBS"'
    end
    object Query_NatTIPO_ENTREGA: TSmallintField
      FieldName = 'TIPO_ENTREGA'
      Origin = '"NATUREZA_OPERACAO"."TIPO_ENTREGA"'
    end
    object Query_NatTIPO_DESTINO: TSmallintField
      FieldName = 'TIPO_DESTINO'
      Origin = '"NATUREZA_OPERACAO"."TIPO_DESTINO"'
    end
    object Query_NatIPI_CST: TIBStringField
      FieldName = 'IPI_CST'
      Origin = '"NATUREZA_OPERACAO"."IPI_CST"'
      Size = 6
    end
    object Query_NatPIS_CST: TIBStringField
      FieldName = 'PIS_CST'
      Origin = '"NATUREZA_OPERACAO"."PIS_CST"'
      Size = 6
    end
    object Query_NatCOFINS_CST: TIBStringField
      FieldName = 'COFINS_CST'
      Origin = '"NATUREZA_OPERACAO"."COFINS_CST"'
      Size = 6
    end
    object Query_NatPIS: TFloatField
      FieldName = 'PIS'
      Origin = '"NATUREZA_OPERACAO"."PIS"'
    end
    object Query_NatIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"NATUREZA_OPERACAO"."IPI"'
    end
    object Query_NatCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = '"NATUREZA_OPERACAO"."COFINS"'
    end
    object Query_NatCSOSN: TIBStringField
      FieldName = 'CSOSN'
      Origin = '"NATUREZA_OPERACAO"."CSOSN"'
      Size = 6
    end
    object Query_NatCFOP_ATIVO: TSmallintField
      FieldName = 'CFOP_ATIVO'
      Origin = '"NATUREZA_OPERACAO"."CFOP_ATIVO"'
    end
    object Query_NatICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
      Origin = '"NATUREZA_OPERACAO"."ICMS_SUB"'
    end
    object Query_NatORIGEM_MERCADORIA: TSmallintField
      FieldName = 'ORIGEM_MERCADORIA'
      Origin = '"NATUREZA_OPERACAO"."ORIGEM_MERCADORIA"'
    end
    object Query_NatIPI_ENQLEG: TIBStringField
      FieldName = 'IPI_ENQLEG'
      Origin = '"NATUREZA_OPERACAO"."IPI_ENQLEG"'
      Size = 6
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 304
    Top = 256
  end
end
