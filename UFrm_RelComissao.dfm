object Frm_RelComissao: TFrm_RelComissao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Comiss'#227'o'
  ClientHeight = 162
  ClientWidth = 485
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
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 485
    Height = 162
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 483
    ExplicitHeight = 138
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 72
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 63
      Height = 16
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 73
      Width = 63
      Height = 16
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 24
      Top = 43
      Width = 152
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 208
      Top = 43
      Width = 152
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object Button1: TButton
      Left = 375
      Top = 43
      Width = 91
      Height = 48
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
    object RzComboBox1: TRzComboBox
      Left = 24
      Top = 92
      Width = 336
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
    end
    object RLReport1: TRLReport
      Left = 344
      Top = 200
      Width = 794
      Height = 1123
      Borders.Sides = sdAll
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand4: TRLBand
        Left = 39
        Top = 39
        Width = 716
        Height = 18
        BandType = btHeader
        object RLSystemInfo2: TRLSystemInfo
          Left = 584
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
        Left = 39
        Top = 57
        Width = 716
        Height = 61
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
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
        Left = 39
        Top = 154
        Width = 716
        Height = 25
        BandType = btSummary
        object RLLabel15: TRLLabel
          Left = 645
          Top = 4
          Width = 71
          Height = 16
          Align = faCenterRight
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 39
        Top = 135
        Width = 716
        Height = 19
        Color = clGradientActiveCaption
        ParentColor = False
        Transparent = False
        BeforePrint = RLDetailGrid1BeforePrint
        object RLDBText7: TRLDBText
          Left = 400
          Top = 0
          Width = 85
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SOMA'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 3
          Top = 0
          Width = 390
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'VENDEDOR'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 491
          Top = 0
          Width = 59
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'PORCENTAGEM'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = '#%'
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 568
          Top = 0
          Width = 105
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MULTIPLY'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 39
        Top = 118
        Width = 716
        Height = 17
        BandType = btColumnHeader
        object RLLabel1: TRLLabel
          Left = 3
          Top = 2
          Width = 62
          Height = 14
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 400
          Top = 2
          Width = 85
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 491
          Top = 2
          Width = 59
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 568
          Top = 2
          Width = 105
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'COMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      'listavendas_simples.vendedor,'
      'sum(listavendas_simples.valor_total)as soma,'
      'listavendas_simples.id_vendedor,'
      'rel_cad_comicao.porcentagem,'
      
        '(sum(listavendas_simples.valor_total)/100)*rel_cad_comicao.porce' +
        'ntagem'
      'from listavendas_simples'
      
        'left join rel_comicao on(rel_comicao.id_funcionario = listavenda' +
        's_simples.id_vendedor)'
      
        'left join rel_cad_comicao on(rel_cad_comicao.id = rel_comicao.id' +
        ')'
      
        'group by  listavendas_simples.vendedor,listavendas_simples.id_ve' +
        'ndedor,rel_cad_comicao.porcentagem'
      'order by listavendas_simples.vendedor')
    SQLConnection = DM.SQLConnection1
    Left = 576
    Top = 24
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 760
    Top = 24
    object ClientDataSet1VENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object ClientDataSet1SOMA: TFloatField
      FieldName = 'SOMA'
      currency = True
    end
    object ClientDataSet1ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ClientDataSet1PORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1MULTIPLY: TFloatField
      FieldName = 'MULTIPLY'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 840
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 24
  end
  object Comissao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'vmi'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'vma'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 't'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select rel_cad_comicao.porcentagem from rel_cad_comicao'
      'left join rel_cad_comicao on(rel_cad_comicao.id=rel_comicao.id)'
      
        'where rel_cad_comicao.vmin <=:vmi and rel_cad_comicao.vmax >=:vm' +
        'a  and rel_comicao.id_funcionario =:t'
      'and rel_comicao.tipo =1')
    SQLConnection = DM.SQLConnection1
    Left = 840
    Top = 112
  end
end
