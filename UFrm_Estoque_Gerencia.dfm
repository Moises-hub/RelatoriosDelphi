object Frm_Estoque_Gerencia: TFrm_Estoque_Gerencia
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'RELAT'#211'RIO GERENCIAL DE ESTOQUE'
  ClientHeight = 126
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 21
    Top = 19
    Width = 40
    Height = 16
    Caption = 'Marca:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object RzComboBox2: TRzComboBox
    Left = 67
    Top = 18
    Width = 281
    Height = 22
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 21
    Top = 61
    Width = 185
    Height = 17
    Caption = 'Somente Com Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object RLReport1: TRLReport
    Left = 20
    Top = 188
    Width = 1123
    Height = 794
    DataSource = DS_Query_Estoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 35
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 1012
        Top = 0
        Width = 35
        Height = 35
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 73
      Width = 1047
      Height = 35
      BandType = btColumnHeader
      object RLLabel4: TRLLabel
        Left = 0
        Top = 0
        Width = 250
        Height = 35
        Align = faLeft
        Caption = 'RELAT'#211'RIO GERENCIAL DE ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 108
      Width = 1047
      Height = 19
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLABEL1: TRLLabel
        Left = 0
        Top = 0
        Width = 41
        Height = 18
        Align = faLeft
        AutoSize = False
        Caption = 'C'#211'D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 41
        Top = 0
        Width = 427
        Height = 18
        Align = faClient
        AutoSize = False
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 468
        Top = 0
        Width = 159
        Height = 18
        Align = faRight
        AutoSize = False
        Caption = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 627
        Top = 0
        Width = 86
        Height = 18
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'EST. MIN.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 713
        Top = 0
        Width = 74
        Height = 18
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 787
        Top = 0
        Width = 86
        Height = 18
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'ESTOQUE APR.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 961
        Top = 0
        Width = 86
        Height = 18
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'SALDO DISP.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 873
        Top = 0
        Width = 88
        Height = 18
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'SALDO A ENT.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 127
      Width = 1047
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand4BeforePrint
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 41
        Height = 19
        Align = faLeft
        AutoSize = False
        DataField = 'ID_PRODUTO'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLABEL1
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 41
        Top = 0
        Width = 427
        Height = 19
        Align = faLeft
        AutoSize = False
        Color = clWhite
        DataField = 'DESCRICAO'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel2
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 468
        Top = 0
        Width = 159
        Height = 19
        Align = faRight
        AutoSize = False
        DataField = 'MARCA'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel3
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 627
        Top = 0
        Width = 86
        Height = 19
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        DataField = 'ESTOQUE_MIN'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 713
        Top = 0
        Width = 74
        Height = 19
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        DataField = 'ESTOQUE'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel7
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 787
        Top = 0
        Width = 86
        Height = 19
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        DataField = 'ESTOQUEA'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel8
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 961
        Top = 0
        Width = 86
        Height = 19
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        DataField = 'SALDO_D'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel9
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 873
        Top = 0
        Width = 88
        Height = 19
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        DataField = 'SALDOE'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel6
        ParentFont = False
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 146
      Width = 1047
      Height = 28
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 823
        Top = 1
        Width = 224
        Height = 27
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itPagePreview
        ParentFont = False
        Text = 'Pag. # de #'
      end
    end
  end
  object RzBitBtn1: TRzBitBtn
    Left = 231
    Top = 61
    Width = 117
    Height = 33
    Cursor = crHandPoint
    Caption = 'Visualizar / Imprimir'
    HotTrack = True
    TabOrder = 3
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object Query_Estoque: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select  tabelaprodutos.id_produto,'
      '        tabelaprodutos.descricao,'
      '        tabelaprodutos.marca,'
      '        COALESCE(tabelaprodutos.estoque_MIN,0) estoque_MIN,'
      '        tabelaprodutos.estoque,'
      '        tabelaprodutos.estoquea,'
      '        tabelaprodutos.saldoe,'
      '        tabelaprodutos.estoque - tabelaprodutos.estoqueA saldo_d'
      '         from   tabelaprodutos')
    Left = 664
    Top = 32
    object Query_EstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object Query_EstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object Query_EstoqueMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object Query_EstoqueESTOQUE_MIN: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object Query_EstoqueESTOQUEA: TSingleField
      FieldName = 'ESTOQUEA'
      Origin = 'ESTOQUEA'
    end
    object Query_EstoqueSALDO_D: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO_D'
      Origin = 'SALDO_D'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueSALDOE: TSingleField
      FieldName = 'SALDOE'
      Origin = 'SALDOE'
    end
  end
  object DS_Query_Estoque: TDataSource
    DataSet = Query_Estoque
    Left = 752
    Top = 32
  end
end
