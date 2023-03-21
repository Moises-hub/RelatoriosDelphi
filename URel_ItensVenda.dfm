object Rel_ItensVenda: TRel_ItensVenda
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Itens de Venda'
  ClientHeight = 534
  ClientWidth = 917
  Color = clWhite
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
  object Label1: TLabel
    Left = 368
    Top = 2
    Width = 65
    Height = 15
    Caption = 'Data Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 491
    Top = 2
    Width = 57
    Height = 15
    Caption = 'Data Final'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 368
    Top = 52
    Width = 78
    Height = 15
    Caption = 'Departamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 368
    Top = 103
    Width = 53
    Height = 15
    Caption = 'Categoria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object RzRadioGroup1: TRzRadioGroup
    Left = 8
    Top = 3
    Width = 345
    Caption = 'Data por:'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Data de Emiss'#227'o (Pedido)'
      'Data de Processamento (Pedido)'
      'Data de Emiss'#227'o (NFe)')
    TabOrder = 0
    Transparent = True
    VerticalSpacing = 6
    VisualStyle = vsGradient
  end
  object cxDateEdit1: TcxDateEdit
    Left = 368
    Top = 21
    TabOrder = 1
    Width = 102
  end
  object cxDateEdit2: TcxDateEdit
    Left = 491
    Top = 21
    TabOrder = 2
    Width = 102
  end
  object RzComboBox1: TRzComboBox
    Left = 368
    Top = 70
    Width = 225
    Height = 21
    TabOrder = 3
  end
  object RzComboBox2: TRzComboBox
    Left = 368
    Top = 121
    Width = 225
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 234
    Top = 121
    Width = 102
    Height = 35
    Caption = 'Visualizar / Imprimir'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 126
    Top = 121
    Width = 102
    Height = 35
    Caption = 'Excel'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 18
    Top = 121
    Width = 102
    Height = 35
    Caption = 'Filtrar'
    TabOrder = 7
    OnClick = Button3Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 162
    Width = 620
    Height = 41
    BackgroundColor = clBtnFace
    TabOrder = 8
    Visible = False
  end
  object Memo1: TMemo
    Left = 680
    Top = 325
    Width = 705
    Height = 439
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 176
    Width = 917
    Height = 358
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNIT'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 116
        Visible = True
      end>
  end
  object Memo2: TMemo
    Left = 1033
    Top = 46
    Width = 473
    Height = 138
    Lines.Strings = (
      'Memo2')
    TabOrder = 12
  end
  object RLReport1: TRLReport
    Left = 73
    Top = 457
    Width = 1123
    Height = 794
    Margins.LeftMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand2: TRLBand
      Left = 30
      Top = 54
      Width = 1063
      Height = 89
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 1063
        Height = 19
        Align = faTop
        Caption = 'RELAT'#211'RIO DE ITENS VENDIDOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 45
        Top = 26
        Width = 52
        Height = 15
        Caption = 'PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 47
        Width = 94
        Height = 15
        Caption = 'DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 69
        Top = 68
        Width = 28
        Height = 15
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 103
        Top = 26
        Width = 53
        Height = 15
        Caption = 'PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 103
        Top = 47
        Width = 53
        Height = 15
        Caption = 'PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 103
        Top = 68
        Width = 53
        Height = 15
        Caption = 'PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 30
      Top = 143
      Width = 1063
      Height = 26
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel6: TRLLabel
        Left = 123
        Top = 1
        Width = 52
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'NF'#39'E: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 543
        Top = 1
        Width = 241
        Height = 25
        AutoSize = False
        Caption = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 960
        Top = 1
        Width = 102
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 70
        Top = 1
        Width = 50
        Height = 13
        Alignment = taCenter
        Caption = 'ID PEDIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 5
        Top = 1
        Width = 62
        Height = 13
        Alignment = taCenter
        Caption = 'EMISS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 241
        Top = 1
        Width = 248
        Height = 25
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 175
        Top = 1
        Width = 66
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'NFe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 489
        Top = 1
        Width = 54
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'COD PROD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 786
        Top = 1
        Width = 26
        Height = 13
        Alignment = taCenter
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 814
        Top = 1
        Width = 48
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 858
        Top = 1
        Width = 72
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VALOR UNT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 930
        Top = 1
        Width = 30
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'QNT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 30
      Top = 169
      Width = 1063
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLDBText6: TRLDBText
        Left = 543
        Top = 0
        Width = 241
        Height = 15
        AutoSize = False
        DataField = 'PRODUTO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel7
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 930
        Top = 0
        Width = 30
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'QTDE'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel9
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 960
        Top = 0
        Width = 102
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel10
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 123
        Top = 0
        Width = 52
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Color = clBtnHighlight
        DataField = 'NFE'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel6
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 5
        Top = 0
        Width = 62
        Height = 16
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA_EMISSAO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel12
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 70
        Top = 0
        Width = 50
        Height = 16
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        DataField = 'ID_PEDIDO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel4
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 175
        Top = 0
        Width = 66
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Color = clBtnHighlight
        DataField = 'NFE'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 241
        Top = 0
        Width = 248
        Height = 17
        AutoSize = False
        Color = clBtnHighlight
        DataField = 'CLIENTE'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel3
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 489
        Top = 0
        Width = 54
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Color = clBtnHighlight
        DataField = 'ID_PRODUTO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel8
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 786
        Top = 0
        Width = 26
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'CFOP'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel13
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 814
        Top = 0
        Width = 48
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'ICMS'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel14
        ParentFont = False
        Text = '#%'
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 858
        Top = 0
        Width = 72
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_UNIT'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel15
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 30
      Top = 197
      Width = 1063
      Height = 28
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedTop = True
      object RLLabel11: TRLLabel
        Left = 811
        Top = 7
        Width = 45
        Height = 15
        Caption = 'TOTAL: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 960
        Top = 7
        Width = 102
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DataSource2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel10
        ParentFont = False
        Text = 'R$ #'
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 880
        Top = 8
        Width = 80
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'QNT'
        DataSource = DataSource2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLBand6: TRLBand
      Left = 30
      Top = 185
      Width = 1063
      Height = 12
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
    end
    object RLBand1: TRLBand
      Left = 30
      Top = 225
      Width = 1063
      Height = 16
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 976
        Top = 0
        Width = 87
        Height = 16
        Align = faRight
        Info = itPageNumber
        Text = ''
      end
    end
    object RLBand7: TRLBand
      Left = 30
      Top = 38
      Width = 1063
      Height = 16
      BandType = btHeader
      object RLSystemInfo2: TRLSystemInfo
        Left = 1003
        Top = 0
        Width = 60
        Height = 16
        Align = faRight
        Info = itFullDate
        Text = ''
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'SELECT ID_PEDIDO,    PEDIDO,     NFE,     PRODUTO,   CAST(QTDE A' +
        'S NUMERIC(15,3))AS QTDE,   CAST(VALOR AS NUMERIC(15,3))AS  VALOR' +
        ',     DATA_EMISSAO,     ID_DEPTO,     ID_CATEGORIA,     MARCA,  ' +
        '   ID_CLIENTE,     CLIENTE,     ID_PRODUTO,     CFOP,     ICMS, ' +
        '    CAST(VALOR_UNIT AS NUMERIC(15,3))AS VALOR_UNIT,     DEPARTAM' +
        'ENTO,     VENDEDOR,     ES,     STATUS,     NFCE,     DATA_PROCE' +
        'SSA FROM REL_ITENSVENDA_NF')
    Left = 224
    Top = 360
    object FDQuery1ID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object FDQuery1PEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object FDQuery1NFE: TStringField
      FieldName = 'NFE'
      Origin = 'NFE'
      Size = 18
    end
    object FDQuery1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object FDQuery1QTDE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object FDQuery1VALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 3
    end
    object FDQuery1DATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object FDQuery1ID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object FDQuery1ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object FDQuery1MARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object FDQuery1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDQuery1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDQuery1CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object FDQuery1ICMS: TSingleField
      FieldName = 'ICMS'
      Origin = 'ICMS'
    end
    object FDQuery1VALOR_UNIT: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNIT'
      Origin = 'VALOR_UNIT'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 3
    end
    object FDQuery1DEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      Size = 50
    end
    object FDQuery1VENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object FDQuery1ES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object FDQuery1STATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object FDQuery1NFCE: TStringField
      FieldName = 'NFCE'
      Origin = 'NFCE'
      FixedChar = True
      Size = 1
    end
    object FDQuery1DATA_PROCESSA: TDateField
      FieldName = 'DATA_PROCESSA'
      Origin = 'DATA_PROCESSA'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 184
    Top = 488
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel|.xlsx'
    Left = 820
    Top = 379
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    Left = 608
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 576
    Top = 80
  end
end
