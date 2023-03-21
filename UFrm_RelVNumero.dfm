object Frm_RelVNumero: TFrm_RelVNumero
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 163
  ClientWidth = 451
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 56
    Top = 40
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
  object RzLabel2: TRzLabel
    Left = 231
    Top = 40
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
  object RzLabel3: TRzLabel
    Left = 56
    Top = 88
    Width = 55
    Height = 13
    Caption = 'Categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzLabel4: TRzLabel
    AlignWithMargins = True
    Left = 3
    Top = 7
    Width = 348
    Height = 24
    Margins.Top = 7
    Margins.Right = 100
    Align = alTop
    AutoSize = False
    Caption = 'VENDAS POR GRADE/CATEGORIA'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 56
    Top = 56
    Width = 169
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 231
    Top = 56
    Width = 169
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object RzDBLookupComboBox1: TRzDBLookupComboBox
    Left = 56
    Top = 103
    Width = 231
    Height = 21
    KeyField = 'ID_CATEGORIA'
    ListField = 'DESCRICAO'
    ListSource = DataSource2
    TabOrder = 2
  end
  object Button1: TButton
    Left = 293
    Top = 88
    Width = 107
    Height = 40
    Caption = 'Visualizar / Imprimir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = 24
    Top = 8
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
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 40
      Top = 62
      Width = 716
      Height = 43
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 0
        Top = 0
        Width = 716
        Height = 19
        Align = faClientTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE VENDAS DE GRADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 283
        Top = 18
        Width = 148
        Height = 13
        Alignment = taCenter
        Anchors = [fkLeft, fkRight]
        Caption = 'RELAT'#211'RIO DE VENDAS DE GRADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 40
      Top = 147
      Width = 716
      Height = 16
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 716
        Height = 16
        Align = faClient
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 40
      Top = 38
      Width = 716
      Height = 24
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 716
        Height = 16
        Align = faTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = 'relat'#243'rio emitido '
      end
    end
    object RLBand2: TRLBand
      Left = 40
      Top = 105
      Width = 716
      Height = 26
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 304
        Height = 26
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'TAMANHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 397
        Top = 0
        Width = 113
        Height = 26
        AutoSize = False
        Caption = 'QNT VENDIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 603
        Top = 0
        Width = 113
        Height = 26
        Align = faRight
        AutoSize = False
        Caption = 'ESTOQUE ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 40
      Top = 131
      Width = 716
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand3BeforePrint
      object RLDBText2: TRLDBText
        Left = 397
        Top = 0
        Width = 113
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'SUM'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel2
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 304
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'NUMERO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel1
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 603
        Top = 0
        Width = 113
        Height = 16
        Alignment = taCenter
        AutoSize = False
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
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(qtde),numero,(SELECT SUM(ESTOQUE) FROM produto_itens'
      
        ' WHERE produto_itens.tamanho = REL_VEN_NUMERO.numero) AS ESTOQUE' +
        ' from rel_ven_numero'
      
        ' where qtde >0 AND  REL_VEN_NUMERO.id_categoria =:R and data >=:' +
        'i and data <=:f'
      ' group by numero')
    Left = 752
    Top = 88
    ParamData = <
      item
        Name = 'R'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end>
    object FDQuery1SUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1NUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object FDQuery1ESTOQUE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 752
    Top = 32
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select distinct(produtos.id_categoria), categorias.descricao fro' +
        'm produtos'
      
        'join categorias on categorias.id_categoria = produtos.id_categor' +
        'ia')
    Left = 672
    Top = 88
    object FDQuery2ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object FDQuery2DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 672
    Top = 32
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 544
    Top = 48
  end
end
