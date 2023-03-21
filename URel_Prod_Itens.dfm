object Frm_Rel_ProdItem: TFrm_Rel_ProdItem
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Movimenta'#231#227'o por Grade'
  ClientHeight = 174
  ClientWidth = 614
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 174
    Align = alClient
    BorderOuter = fsNone
    Color = clMenu
    GradientColorStart = clActiveCaption
    GradientColorStop = clActiveCaption
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 1122
    ExplicitHeight = 449
    object Label2: TLabel
      Left = 28
      Top = 29
      Width = 64
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 216
      Top = 29
      Width = 56
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 65
      Top = 72
      Width = 27
      Height = 13
      Caption = 'Pe'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 37
      Top = 114
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 390
      Top = 72
      Width = 19
      Height = 13
      Caption = 'E/S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 98
      Top = 26
      Width = 104
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object Button1: TButton
      Left = 463
      Top = 97
      Width = 97
      Height = 34
      Caption = 'Visualizar / Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 275
      Top = 26
      Width = 104
      Height = 21
      EditType = etDate
      TabOrder = 2
    end
    object RzComboBox1: TRzComboBox
      Left = 98
      Top = 69
      Width = 281
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
    end
    object RzComboBox2: TRzComboBox
      Left = 415
      Top = 69
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
      Text = 'Saida'
      Items.Strings = (
        'Saida'
        'Entrada')
      ItemIndex = 0
      Values.Strings = (
        '1'
        '2')
    end
    object dxLookupTreeView1: TdxLookupTreeView
      Left = 98
      Top = 114
      Width = 334
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 5
      TabStop = True
      Text = 'CALCADOS'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'DESCRICAO'
      DividedChar = '.'
      ListSource = DataSource3
      KeyField = 'ID_CATEGORIA'
      ListField = 'DESCRICAO'
      Options = [trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'PAI'
      RootValue = Null
      TextStyle = tvtsShort
      Alignment = taLeftJustify
    end
    object RLReport1: TRLReport
      Left = 76
      Top = 154
      Width = 794
      Height = 1123
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand5: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 46
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand5BeforePrint
        object RLLabel5: TRLLabel
          Left = 3
          Top = 1
          Width = 507
          Height = 26
          Caption = 'RELAT'#211'RIO MOVIMENTA'#199#195'O  DE PRODUTOS POR GRADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 4
          Top = 25
          Width = 236
          Height = 18
          Caption = 'RELAT'#211'RIO DE PRODUTOS POR GRADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 84
        Width = 718
        Height = 117
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataFields = 'ID_PRODUTO'
        BeforePrint = RLGroup1BeforePrint
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 27
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = clWhite
          ParentColor = False
          Transparent = False
          object RLDBText2: TRLDBText
            Left = 78
            Top = 3
            Width = 603
            Height = 19
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 3
            Width = 72
            Height = 19
            Caption = 'PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand1: TRLBand
          Left = 0
          Top = 27
          Width = 718
          Height = 17
          BandType = btHeader
          object RLLabel2: TRLLabel
            Left = 8
            Top = 1
            Width = 110
            Height = 15
            Caption = 'CODIGO DE BARRAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 124
            Top = 1
            Width = 62
            Height = 15
            Caption = 'TAMANHO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 192
            Top = 1
            Width = 289
            Height = 15
            Caption = 'CLIENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 486
            Top = 1
            Width = 27
            Height = 15
            Caption = 'QNT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 528
            Top = 1
            Width = 82
            Height = 15
            Alignment = taRightJustify
            Caption = 'VALOR UNT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 616
            Top = 1
            Width = 99
            Height = 15
            Alignment = taRightJustify
            Caption = 'VALOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 44
          Width = 718
          Height = 24
          object RLDBText7: TRLDBText
            Left = 616
            Top = 3
            Width = 99
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR_TOTAL'
            DataSource = DataSource1
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 528
            Top = 3
            Width = 82
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR_UN'
            DataSource = DataSource1
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 486
            Top = 3
            Width = 27
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'QNTVENDIDO'
            DataSource = DataSource1
            Text = ''
          end
          object RLDBText4: TRLDBText
            Left = 192
            Top = 3
            Width = 289
            Height = 15
            AutoSize = False
            DataField = 'CLIENTE'
            DataSource = DataSource1
            Text = ''
          end
          object RLDBText3: TRLDBText
            Left = 124
            Top = 3
            Width = 62
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'TAMANHO'
            DataSource = DataSource1
            Text = ''
          end
          object RLDBText1: TRLDBText
            Left = 8
            Top = 3
            Width = 110
            Height = 15
            AutoSize = False
            DataField = 'CODIGO_BARRAS'
            DataSource = DataSource1
            Text = ''
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 68
          Width = 718
          Height = 45
          BandType = btSummary
          object RLMemo1: TRLMemo
            Left = 373
            Top = 6
            Width = 334
            Height = 30
            Alignment = taJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Borders.Sides = sdAll
            Borders.Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select  rel_prod_itens.id_produto, rel_prod_itens.codigo_barras,' +
        ' rel_prod_itens.cliente,rel_prod_itens.tamanho,rel_prod_itens.pr' +
        'oduto, cast(sum(rel_prod_itens.qntvendido) as decimal(14,2)) as ' +
        'soma,'
      
        'categorias.pai,categorias.id_categoria,rel_prod_itens.qntvendido' +
        ',rel_prod_itens.valor_un,rel_prod_itens.valor_total from categor' +
        'ias'
      
        'left join rel_prod_itens on(rel_prod_itens.id_categoria = catego' +
        'rias.id_categoria)'
      
        'where  rel_prod_itens.qntvendido is not null and ((rel_prod_iten' +
        's.DATA >=:A) AND (rel_prod_itens.DATA <=:P)) AND CODIGO_BARRAS L' +
        'IKE :R '
      'and categorias.pai =:c and rel_prod_itens.es =:es'
      
        'group by rel_prod_itens.codigo_barras, rel_prod_itens.produto, c' +
        'ategorias.pai,categorias.id_categoria,categorias.descricao,rel_p' +
        'rod_itens.cliente,rel_prod_itens.tamanho,rel_prod_itens.valor_un' +
        ',rel_prod_itens.valor_total'
      ',rel_prod_itens.qntvendido,rel_prod_itens.id_produto'
      'order by rel_prod_itens.produto,rel_prod_itens.tamanho')
    Left = 22
    Top = 94
    ParamData = <
      item
        Name = 'A'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'P'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'R'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end
      item
        Name = 'C'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ES'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object FDQuery1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object FDQuery1PAI: TIntegerField
      FieldName = 'PAI'
      Origin = 'PAI'
    end
    object FDQuery1ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1SOMA: TBCDField
      FieldName = 'SOMA'
      Origin = 'SOMA'
      Precision = 18
      Size = 2
    end
    object FDQuery1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 60
    end
    object FDQuery1TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 10
    end
    object FDQuery1CODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 40
    end
    object FDQuery1VALOR_UN: TBCDField
      FieldName = 'VALOR_UN'
      Origin = 'VALOR_UN'
      currency = True
      Precision = 18
    end
    object FDQuery1VALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery1QNTVENDIDO: TSingleField
      FieldName = 'QNTVENDIDO'
      Origin = 'QNTVENDIDO'
    end
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 470
    Top = 11
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 844
    Top = 30
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select codigo_barra,tamanho from produto_itens')
    Left = 640
    Top = 80
    object FDQuery2CODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Origin = 'CODIGO_BARRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object FDQuery2TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 576
    Top = 456
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'ID_CATEGORIA'
    Connection = DM.FDConnection1
    UpdateOptions.UpdateTableName = 'CATEGORIAS'
    TableName = 'CATEGORIAS'
    Left = 696
    Top = 16
    object FDTable1ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      Required = True
    end
    object FDTable1CLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
    end
    object FDTable1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FDTable1PAI: TIntegerField
      FieldName = 'PAI'
      Origin = 'PAI'
    end
    object FDTable1COMISSAO: TSingleField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object FDTable1ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object FDTable1USER_UP: TIntegerField
      FieldName = 'USER_UP'
      Origin = 'USER_UP'
    end
    object FDTable1DATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
      Origin = 'DATA_UP'
    end
    object FDTable1DESCONTO_MAX: TSingleField
      FieldName = 'DESCONTO_MAX'
      Origin = 'DESCONTO_MAX'
    end
    object FDTable1DATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
      Origin = 'DATA_RP'
    end
    object FDTable1OP_PRECO: TIntegerField
      FieldName = 'OP_PRECO'
      Origin = 'OP_PRECO'
    end
    object FDTable1VENDA_DESC: TSingleField
      FieldName = 'VENDA_DESC'
      Origin = 'VENDA_DESC'
    end
    object FDTable1VENDA_QTDE: TIntegerField
      FieldName = 'VENDA_QTDE'
      Origin = 'VENDA_QTDE'
    end
  end
  object DataSource3: TDataSource
    DataSet = FDTable1
    Left = 752
    Top = 48
  end
  object FDQuery3: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select        '#39'TAMANHO '#39'||produto_itens.tamanho as tamanho,'
      '              sum(pedido_itens.valor_total) as soma,'
      '              sum(pedido_itens.qtde) as qnt'
      '               from pedido_itens'
      
        '               join produto_itens on produto_itens.codigo_barra ' +
        '=pedido_itens.codigo_barra'
      
        '              left join produtos on produtos.id_produto = produt' +
        'o_itens.id_produto'
      
        '              LEFT JOIN categorias ON CATEGORIAS.id_categoria = ' +
        'PRODUTOS.id_categoria'
      
        '              join pedidos on pedidos.id_pedido = pedido_itens.i' +
        'd_pedido'
      
        '              join clientes on clientes.id_cliente = pedidos.id_' +
        'cliente'
      
        '              join natureza_operacao on natureza_operacao.id_nat' +
        'ureza = pedidos.id_natureza'
      
        '              where pedido_itens.qtde > 0 AND  pedidos.status = ' +
        '2 and (natureza_operacao.tipo <> 2) and (natureza_operacao.proce' +
        'sso <> 3)'
      
        '               AND NATUREZA_OPERACAO.ES =:F AND CAST(PEDIDOS.DAT' +
        'A_HORA AS date)>=:IN AND CAST(PEDIDOS.DATA_HORA AS date) <=:FIM '
      '               and produto_itens.id_produto =:p'
      '               group by  produto_itens.tamanho')
    Left = 8
    Top = 152
    ParamData = <
      item
        Name = 'F'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'P'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSource4: TDataSource
    DataSet = FDQuery3
    Left = 48
    Top = 312
  end
end
