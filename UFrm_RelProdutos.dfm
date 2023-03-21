object Frm_RelProdutos: TFrm_RelProdutos
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Produtos'
  ClientHeight = 107
  ClientWidth = 528
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 107
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    ExplicitWidth = 550
    ExplicitHeight = 411
    object Label3: TLabel
      Left = 29
      Top = 32
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
      Left = 277
      Top = 32
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
      Left = 101
      Top = 29
      Width = 155
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 341
      Top = 29
      Width = 155
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object Button1: TButton
      Left = 389
      Top = 56
      Width = 107
      Height = 35
      Cursor = crHandPoint
      Caption = 'Filtrar / Visualizar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object RLReport1: TRLReport
      Left = 29
      Top = 152
      Width = 794
      Height = 1123
      DataSource = DS_CD_Produtos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand4: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 18
        BandType = btHeader
        object RLSystemInfo2: TRLSystemInfo
          Left = 586
          Top = 0
          Width = 132
          Height = 18
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
        Left = 38
        Top = 56
        Width = 718
        Height = 61
        BandType = btTitle
        object RLLabel11: TRLLabel
          Left = 14
          Top = 6
          Width = 331
          Height = 16
          Caption = 'RELAT'#211'RIO DE PRODUTOS POR DATA DE CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
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
      object RLBand5: TRLBand
        Left = 38
        Top = 149
        Width = 718
        Height = 17
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        Borders.FixedTop = True
        Borders.FixedRight = True
        Borders.FixedBottom = True
        object RLSystemInfo1: TRLSystemInfo
          Left = 323
          Top = 1
          Width = 72
          Height = 14
          Align = faCenter
          Alignment = taCenter
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 38
        Top = 117
        Width = 718
        Height = 16
        BandType = btColumnHeader
        Color = clGray
        ParentColor = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 0
          Top = 0
          Width = 98
          Height = 16
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText1
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 149
          Top = 0
          Width = 376
          Height = 16
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 524
          Top = 0
          Width = 90
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText6
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 95
          Top = 0
          Width = 54
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 620
          Top = 0
          Width = 90
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 38
        Top = 133
        Width = 718
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 98
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA_CADASTRO'
          DataSource = DS_CD_Produtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 95
          Top = 0
          Width = 54
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID_PRODUTO'
          DataSource = DS_CD_Produtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 524
          Top = 0
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = DS_CD_Produtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 149
          Top = 0
          Width = 376
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DS_CD_Produtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 620
          Top = 0
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESTOQUE'
          DataSource = DS_CD_Produtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
        end
      end
    end
  end
  object DS_Produtos: TSQLDataSet
    CommandText = 
      'select'#13#10'PRODUTOS.data_cadastro,'#13#10'produtos.id_produto,'#13#10'produtos.' +
      'descricao,'#13#10'produtos.unidade,'#13#10'produtos.estoque'#13#10' from produtos'#13 +
      #10'where data_cadastro >=:ini and data_cadastro <=:fim'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        Name = 'ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fim'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection1
    Left = 136
    Top = 80
  end
  object Prov_Produtos: TDataSetProvider
    DataSet = DS_Produtos
    Left = 192
    Top = 72
  end
  object CD_Produtos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Produtos'
    Left = 256
    Top = 72
    object CD_ProdutosID_PRODUTO: TFMTBCDField
      FieldName = 'ID_PRODUTO'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CD_ProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object CD_ProdutosESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
    end
    object CD_ProdutosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object DS_CD_Produtos: TDataSource
    DataSet = CD_Produtos
    Left = 328
    Top = 72
  end
end
