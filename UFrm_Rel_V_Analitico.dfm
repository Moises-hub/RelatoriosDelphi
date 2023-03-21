object Frm_Rel_V_Analitico: TFrm_Rel_V_Analitico
  Left = 0
  Top = 0
  Caption = 'Vendas de Produtos Anal'#237'ticos'
  ClientHeight = 376
  ClientWidth = 1305
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1305
    Height = 89
    Align = alTop
    BorderOuter = fsNone
    Color = clMenu
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = clWhite
    TabOrder = 0
    VisualStyle = vsClassic
    object Label2: TLabel
      Left = 36
      Top = 18
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
      Left = 161
      Top = 18
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
    object Label6: TLabel
      Left = 288
      Top = 18
      Width = 83
      Height = 13
      Caption = 'Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 483
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 34
      Top = 37
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 161
      Top = 37
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox4: TRzComboBox
      Left = 288
      Top = 37
      Width = 175
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object RzBitBtn1: TRzBitBtn
      Left = 710
      Top = 34
      Width = 64
      Height = 26
      Cursor = crHandPoint
      Caption = 'Filtrar'
      HotTrack = True
      TabOrder = 3
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 780
      Top = 34
      Width = 64
      Height = 26
      Cursor = crHandPoint
      Caption = 'Excel'
      HotTrack = True
      TabOrder = 4
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
    object RzComboBox1: TRzComboBox
      Left = 483
      Top = 37
      Width = 197
      Height = 21
      Style = csDropDownList
      TabOrder = 5
    end
  end
  object DBGrid: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 89
    Width = 1285
    Height = 284
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Align = alClient
    BorderStyle = bsNone
    DataSource = DS_Query_V_Analitico
    DrawingStyle = gdsGradient
    FixedColor = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FILIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'N'#186' VENDA'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_DE_COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'VALOR DE COMPRA'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'VALOR DESCONTO'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_GARANTIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'VALOR GARANTIA'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_DE_VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'VALOR DE VENDA'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'VALOR COMISSAO'
        Width = 116
        Visible = True
      end>
  end
  object Query_V_Analitico: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM REL_VENDAS_ANALITICO')
    Left = 456
    Top = 192
    object Query_V_AnaliticoFILIAL: TStringField
      FieldName = 'FILIAL'
      Origin = 'FILIAL'
      Size = 50
    end
    object Query_V_AnaliticoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 50
    end
    object Query_V_AnaliticoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 4
    end
    object Query_V_AnaliticoN_VENDA: TStringField
      FieldName = 'N_VENDA'
      Origin = 'N_VENDA'
      Size = 18
    end
    object Query_V_AnaliticoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object Query_V_AnaliticoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 100
    end
    object Query_V_AnaliticoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object Query_V_AnaliticoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_V_AnaliticoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      FixedChar = True
      Size = 0
    end
    object Query_V_AnaliticoSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 15
    end
    object Query_V_AnaliticoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Query_V_AnaliticoVALOR_DE_COMPRA: TBCDField
      FieldName = 'VALOR_DE_COMPRA'
      Origin = 'VALOR_DE_COMPRA'
      Precision = 18
    end
    object Query_V_AnaliticoVALOR_DESCONTO: TSingleField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
    end
    object Query_V_AnaliticoVALOR_GARANTIA: TIntegerField
      FieldName = 'VALOR_GARANTIA'
      Origin = 'VALOR_GARANTIA'
    end
    object Query_V_AnaliticoVALOR_DE_VENDA: TBCDField
      FieldName = 'VALOR_DE_VENDA'
      Origin = 'VALOR_DE_VENDA'
      Precision = 18
      Size = 2
    end
    object Query_V_AnaliticoVALOR_COMISSAO: TIntegerField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
    end
    object Query_V_AnaliticoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object Query_V_AnaliticoID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
  end
  object DS_Query_V_Analitico: TDataSource
    DataSet = Query_V_Analitico
    Left = 464
    Top = 256
  end
  object SaveDialog1: TSaveDialog
    Left = 168
    Top = 8
  end
end
