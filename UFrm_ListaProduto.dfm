object Frm_ListaProduto: TFrm_ListaProduto
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Produtos'
  ClientHeight = 146
  ClientWidth = 455
  Color = clGradientInactiveCaption
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
    Left = 13
    Top = 28
    Width = 53
    Height = 16
    Caption = 'ID inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 135
    Top = 28
    Width = 46
    Height = 16
    Caption = 'ID Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzRadioGroup1: TRzRadioGroup
    Left = 250
    Top = 8
    Width = 185
    Height = 89
    Caption = 'MOSTRA APENAS PRODUTOS:'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Com Estoque'
      'Sem Estoque'
      'Todos os Produtos')
    ParentFont = False
    TabOrder = 0
    Transparent = True
  end
  object RzCheckBox1: TRzCheckBox
    Left = 293
    Top = 115
    Width = 142
    Height = 17
    Caption = 'Mostrar Pre'#231'o M'#237'nimo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbUnchecked
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 72
    Top = 27
    Width = 57
    Height = 21
    TabOrder = 2
    Text = '1'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 187
    Top = 27
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '99999999'
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 135
    Top = 59
    Width = 109
    Height = 38
    Caption = 'Visualizar / Imprimir'
    TabOrder = 4
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = 72
    Top = 170
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 39
      Top = 115
      Width = 716
      Height = 21
      BandType = btColumnHeader
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 6
        Top = 4
        Width = 47
        Height = 15
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 70
        Top = 3
        Width = 371
        Height = 15
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 444
        Top = 4
        Width = 59
        Height = 15
        Alignment = taCenter
        Caption = 'ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 508
        Top = 4
        Width = 88
        Height = 15
        Caption = 'PRE'#199'O M'#205'NIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 603
        Top = 4
        Width = 100
        Height = 15
        Caption = 'PRE'#199'O DE TABELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 136
      Width = 716
      Height = 17
      Color = clMenuBar
      ParentColor = False
      Transparent = False
      BeforePrint = RLBand2BeforePrint
      object RLDBText1: TRLDBText
        Left = -8
        Top = 0
        Width = 76
        Height = 15
        Alignment = taCenter
        DataField = 'ID_PRODUTO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel1
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 70
        Top = -1
        Width = 371
        Height = 15
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel2
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 508
        Top = 0
        Width = 88
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_MINIMO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel4
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 603
        Top = 0
        Width = 100
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_TABELA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 446
        Top = 0
        Width = 54
        Height = 15
        Alignment = taCenter
        DataField = 'ESTOQUE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel3
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 24
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 668
        Top = 0
        Width = 48
        Height = 13
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 39
      Top = 63
      Width = 716
      Height = 52
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel6: TRLLabel
        Left = 0
        Top = 6
        Width = 184
        Height = 19
        Caption = 'RELAT'#211'RIO DE PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 1
        Top = 24
        Width = 144
        Height = 15
        Caption = 'RELAT'#211'RIO DE PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 153
      Width = 716
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo2: TRLSystemInfo
        Left = 323
        Top = 1
        Width = 69
        Height = 13
        Align = faCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select produtos.id_produto,'
      '       produtos.descricao,'
      '       produto_precos.preco_minimo,'
      '       produto_precos.preco_tabela,'
      '       produtos.estoque'
      '       from produtos'
      
        '       left join produto_precos on produto_precos.id_produto = p' +
        'rodutos.id_produto and produto_preco.ativa = 1'
      '       where produtos.tipo<>4')
    Left = 72
    Top = 88
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object FDQuery1PRECO_MINIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_MINIMO'
      Origin = 'PRECO_MINIMO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object FDQuery1PRECO_TABELA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_TABELA'
      Origin = 'PRECO_TABELA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object FDQuery1ESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 128
  end
end
