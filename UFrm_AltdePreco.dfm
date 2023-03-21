object Frm_AltdePreco: TFrm_AltdePreco
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Altera'#231#227'o do Pre'#231'o'
  ClientHeight = 149
  ClientWidth = 312
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 312
    Height = 149
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 144
    ExplicitWidth = 1149
    ExplicitHeight = 565
    object Label2: TLabel
      Left = 156
      Top = 11
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
    object Label3: TLabel
      Left = 24
      Top = 15
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
    object Label1: TLabel
      Left = 24
      Top = 57
      Width = 65
      Height = 13
      Caption = 'CATEGORIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 24
      Top = 30
      Width = 126
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 156
      Top = 30
      Width = 126
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object Button1: TButton
      Left = 184
      Top = 107
      Width = 98
      Height = 27
      Cursor = crHandPoint
      Caption = 'Filtrar / Visualizar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object RzComboBox1: TRzComboBox
      Left = 24
      Top = 70
      Width = 258
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
  end
  object RLReport1: TRLReport
    Left = 104
    Top = 159
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = False
    Borders.DrawRight = True
    Borders.DrawBottom = False
    DataSource = DS_CD_Produto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand6: TRLBand
      Left = 39
      Top = 57
      Width = 716
      Height = 38
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel17: TRLLabel
        Left = 0
        Top = 19
        Width = 716
        Height = 14
        Align = faWidth
        Alignment = taCenter
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 1
        Width = 716
        Height = 20
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO ALTERA'#199#195'O DE PRE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Berlin Sans FB'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 38
      Width = 716
      Height = 19
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLSystemInfo3: TRLSystemInfo
        Left = 634
        Top = 0
        Width = 82
        Height = 18
        Align = faRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 0
        Top = 0
        Width = 35
        Height = 18
        Align = faLeft
        DataField = 'RAZAO_SOCIAL'
        DataSource = DM.DS_Emitente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 35
        Top = 0
        Width = 81
        Height = 18
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 39
      Top = 95
      Width = 716
      Height = 110
      DataFields = 'CATEGORIA'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 716
        Height = 28
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 16
          Top = 6
          Width = 82
          Height = 16
          Caption = 'CATEGORIA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 104
          Top = 6
          Width = 601
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = clWhite
          DataField = 'CATEGORIA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 28
        Width = 716
        Height = 81
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText4: TRLDBText
          Left = 320
          Top = 21
          Width = 388
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'DESCRICAO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 230
          Top = 21
          Width = 84
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'REF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 134
          Top = 21
          Width = 93
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'ID_PRODUTO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel10
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 11
          Top = 21
          Width = 121
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
        end
        object RLLabel10: TRLLabel
          Left = 134
          Top = 3
          Width = 93
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'ID PRODUTO'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 230
          Top = 3
          Width = 84
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'REF'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 320
          Top = 3
          Width = 388
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'DESCRI'#199#195'O'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 11
          Top = 3
          Width = 121
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'DATA ALTERA'#199#195'O'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 320
          Top = 38
          Width = 125
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'PRE'#199'O DE CUSTO'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 320
          Top = 57
          Width = 125
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'PRECO_CUSTO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 451
          Top = 38
          Width = 126
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'PRE'#199'O MIN'#205'MO'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 451
          Top = 57
          Width = 126
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'PRECO_MINIMO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
        end
        object RLLabel7: TRLLabel
          Left = 583
          Top = 38
          Width = 125
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'PRE'#199'O TABELA'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 583
          Top = 57
          Width = 125
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'PRECO_TABELA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
        end
      end
    end
  end
  object DS_CD_Produto: TDataSource
    DataSet = CD_Produtos
    Left = 520
    Top = 56
  end
  object CD_Produtos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Produtos'
    Left = 432
    Top = 56
    object CD_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CD_ProdutosREF: TStringField
      FieldName = 'REF'
      Size = 15
    end
    object CD_ProdutosID_PRODUTO: TFMTBCDField
      FieldName = 'ID_PRODUTO'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_ProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object CD_ProdutosDATA: TDateField
      FieldName = 'DATA'
    end
    object CD_ProdutosPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 18
      Size = 4
    end
    object CD_ProdutosPRECO_MINIMO: TFMTBCDField
      FieldName = 'PRECO_MINIMO'
      Precision = 18
      Size = 4
    end
    object CD_ProdutosPRECO_TABELA: TFMTBCDField
      FieldName = 'PRECO_TABELA'
      Precision = 18
      Size = 4
    end
    object CD_ProdutosDATA_UPDATE: TDateField
      FieldName = 'DATA_UPDATE'
    end
  end
  object Prov_Produtos: TDataSetProvider
    DataSet = Produtos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 336
    Top = 56
  end
  object Produtos: TSQLDataSet
    CommandText = 
      'SELECT PRODUTOS.DESCRICAO,'#13#10'       PRODUTOS.REF,'#13#10'       PRODUTO' +
      'S.id_produto,'#13#10'       categorias.descricao AS CATEGORIA,'#13#10'      ' +
      ' Produto_precos.data,'#13#10'       produto_precos.preco_custo,'#13#10'     ' +
      '  produto_precos.preco_minimo,'#13#10'       produto_precos.preco_tabe' +
      'la,'#13#10'       produto_precos.data_update'#13#10'       FROM PRODUTOS'#13#10'  ' +
      '     LEFT JOIN categorias ON(CATEGORIAS.id_categoria = PRODUTOS.' +
      'id_categoria)'#13#10'       left JOIN produto_precos ON(produto_precos' +
      '.id_produto = PRODUTOS.id_produto)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 280
    Top = 72
  end
end
