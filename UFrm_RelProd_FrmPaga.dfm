object Frm_RelProd_FrmPaga: TFrm_RelProd_FrmPaga
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Produtos por Esp'#233'cie de Pagamento'
  ClientHeight = 179
  ClientWidth = 442
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox1: TRzGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 3
    Width = 422
    Height = 49
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'Per'#237'odo'
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 24
    ExplicitWidth = 345
    object Label1: TLabel
      Left = 30
      Top = 22
      Width = 12
      Height = 13
      Caption = 'de'
    end
    object Label2: TLabel
      Left = 186
      Top = 20
      Width = 16
      Height = 13
      Caption = 'at'#233
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 48
      Top = 16
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 208
      Top = 16
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
  end
  object RzGroupBox2: TRzGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 58
    Width = 422
    Height = 49
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'Produto'
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitWidth = 438
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 48
      Top = 16
      Width = 367
      Height = 21
      KeyField = 'CONDICAO'
      ListField = 'DESCRICAO'
      ListSource = DS_Query_Produto
      TabOrder = 0
    end
  end
  object RzBitBtn1: TRzBitBtn
    Left = 258
    Top = 128
    Cursor = crHandPoint
    Caption = 'Filtrar'
    HotTrack = True
    TabOrder = 2
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object RzBitBtn2: TRzBitBtn
    Left = 350
    Top = 128
    Cursor = crHandPoint
    Caption = 'Sair'
    HotTrack = True
    TabOrder = 3
    ThemeAware = False
    OnClick = RzBitBtn2Click
  end
  object RLReport1: TRLReport
    Left = 40
    Top = 234
    Width = 794
    Height = 1123
    DataSource = DS_Query_Filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 57
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      object RLLabel1: TRLLabel
        Left = 3
        Top = 3
        Width = 380
        Height = 19
        Caption = 'Relat'#243'rio de Produtos por Esp'#233'cie de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 21
        Width = 48
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 38
        Width = 48
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 666
        Top = 3
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 156
      Width = 718
      Height = 16
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 544
        Top = 2
        Width = 171
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPagePreview
        ParentFont = False
        Text = '# / #'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 95
      Width = 718
      Height = 26
      BandType = btColumnHeader
      object RLLabel4: TRLLabel
        Left = 0
        Top = 0
        Width = 57
        Height = 26
        Align = faLeft
        AutoSize = False
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 57
        Top = 0
        Width = 49
        Height = 26
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 160
        Top = 0
        Width = 70
        Height = 26
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'ID PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 230
        Top = 0
        Width = 276
        Height = 26
        Align = faLeft
        AutoSize = False
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 106
        Top = 0
        Width = 54
        Height = 26
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'ID PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 506
        Top = 0
        Width = 97
        Height = 26
        Align = faLeft
        AutoSize = False
        Caption = 'FORMA DE PAG.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 603
        Top = 0
        Width = 110
        Height = 26
        Align = faLeft
        AutoSize = False
        Caption = 'ESP'#201'CIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 19
      object RLDBText1: TRLDBText
        Left = 0
        Top = 2
        Width = 26
        Height = 13
        DataField = 'DATA'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel4
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 62
        Top = 2
        Width = 38
        Height = 13
        Alignment = taCenter
        DataField = 'PEDIDO'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 114
        Top = 2
        Width = 38
        Height = 13
        Alignment = taCenter
        DataField = 'PEDIDO'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel6
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 164
        Top = 2
        Width = 62
        Height = 13
        Alignment = taCenter
        DataField = 'ID_PRODUTO'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel7
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 230
        Top = 2
        Width = 276
        Height = 13
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel8
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 506
        Top = 2
        Width = 92
        Height = 13
        DataField = 'FORM_PAGAMENTO'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel9
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 603
        Top = 2
        Width = 37
        Height = 13
        DataField = 'ESPECIE'
        DataSource = DS_Query_Filtro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel10
        ParentFont = False
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 140
      Width = 718
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Width = 2
    end
  end
  object Query_produtos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select 0 ID_PRODUTO,'
      '       '#39#39' CONDICAO,'
      '       '#39'TODOS'#39' DESCRICAO'
      '       FROM RDB$DATABASE'
      'UNION'
      'SELECT ID_PRODUTO,'
      '       '#39' AND id_produto ='#39'||ID_PRODUTO,'
      '       DESCRICAO'
      'FROM PRODUTOS'
      'WHERE (TIPO <> 4)')
    Left = 112
    Top = 176
    object Query_produtosID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_produtosCONDICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONDICAO'
      Origin = 'CONDICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 37
    end
    object Query_produtosDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object DS_Query_Produto: TDataSource
    DataSet = Query_produtos
    Left = 112
    Top = 232
  end
  object Query_Filtro: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select FIRST 100 * from REL_PRODUTO_FORMAPAGAMENTO')
    Left = 232
    Top = 176
    object Query_FiltroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Query_FiltroPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_FiltroID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object Query_FiltroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object Query_FiltroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object Query_FiltroQTDE: TSingleField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object Query_FiltroFORM_PAGAMENTO: TStringField
      FieldName = 'FORM_PAGAMENTO'
      Origin = 'FORM_PAGAMENTO'
      Size = 50
    end
    object Query_FiltroESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 50
    end
  end
  object DS_Query_Filtro: TDataSource
    DataSet = Query_Filtro
    Left = 232
    Top = 232
  end
end
