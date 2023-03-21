object Frm_Rel_Rancking: TFrm_Rel_Rancking
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Rancking'
  ClientHeight = 191
  ClientWidth = 318
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
  object Label2: TLabel
    Left = 12
    Top = 6
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
  object Label3: TLabel
    Left = 169
    Top = 6
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
  object Label1: TLabel
    Left = 12
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 125
    Width = 54
    Height = 13
    Caption = 'Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 176
    Width = 39
    Height = 13
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 12
    Top = 26
    Width = 125
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 152
    Top = 26
    Width = 127
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object Button1: TButton
    Left = 182
    Top = 244
    Width = 93
    Height = 36
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
    Left = 12
    Top = 88
    Width = 267
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 4
  end
  object RzComboBox2: TRzComboBox
    Left = 12
    Top = 144
    Width = 267
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 3
  end
  object FDQuery1: TFDQuery
    SQL.Strings = (
      'SELECT REL_IC_VENDAS2.data_faturamento,'
      
        '       cast(SUM(REL_IC_VENDAS2.qtde_total) as currency(15,2)) AS' +
        ' QNT,'
      '       SUM(REL_IC_VENDAS2.valor_total) AS TOTAL,'
      '       REL_IC_VENDAS2.produto,'
      '       REL_IC_VENDAS2.id_produto'
      '       FROM REL_IC_VENDAS2'
      
        '       WHERE (TIPO_NT <> 2) AND ((PROCESSO = 1) AND (OPERACAO = ' +
        '1)) AND (STATUS = 2)'
      '       And (TIPO = 1) AND ((DATA_FATURAMENTO =:F))'
      '       GROUP BY PRODUTO,DATA_FATURAMENTO ,id_produto')
    Left = 864
    Top = 80
    ParamData = <
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery1DATA_FATURAMENTO: TDateField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FDQuery1QNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QNT'
      Origin = 'QNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object FDQuery1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 60
    end
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 944
    Top = 88
  end
  object FDQuery2: TFDQuery
    SQL.Strings = (
      'SELECT CLIENTES.ID_CLIENTE,CLIENTES.NOME FROM CLIENTES'
      'UNION'
      'SELECT 0,'#39'TODOS'#39' FROM RDB$DATABASE')
    Left = 320
    Top = 32
    object DateField1: TDateField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QNT'
      Origin = 'QNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object BCDField1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object StringField1: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 60
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 400
    Top = 40
  end
end
