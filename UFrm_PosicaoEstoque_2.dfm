object Frm_PosicaoEstoque_2: TFrm_PosicaoEstoque_2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Posicao Estoque_2'
  ClientHeight = 354
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 73
    Width = 51
    Height = 13
    Caption = 'Categoria:'
  end
  object Label2: TLabel
    Left = 39
    Top = 100
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label3: TLabel
    Left = 39
    Top = 127
    Width = 73
    Height = 13
    Caption = 'Departamento:'
  end
  object Label4: TLabel
    Left = 39
    Top = 154
    Width = 62
    Height = 13
    Caption = 'Agrupar por:'
  end
  object Label5: TLabel
    Left = 39
    Top = 181
    Width = 42
    Height = 13
    Caption = 'Cole'#231#227'o:'
  end
  object Label6: TLabel
    Left = 39
    Top = 43
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object RzComboBox1: TRzComboBox
    Left = 118
    Top = 70
    Width = 305
    Height = 22
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object RzComboBox2: TRzComboBox
    Left = 118
    Top = 97
    Width = 305
    Height = 22
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object RzComboBox3: TRzComboBox
    Left = 118
    Top = 124
    Width = 305
    Height = 22
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object RzComboBox4: TRzComboBox
    Left = 118
    Top = 151
    Width = 305
    Height = 22
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    TabOrder = 4
    Text = 'TRIBUTACAO'
    Items.Strings = (
      'TRIBUTACAO'
      'NCM'
      'CATEGORIA'
      'MARCA'
      'COLECAO')
    ItemIndex = 0
    Values.Strings = (
      'st'
      'ncm'
      'categoria'
      'marca'
      'colecao')
  end
  object RzComboBox5: TRzComboBox
    Left = 118
    Top = 178
    Width = 305
    Height = 22
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 88
    Top = 214
    Width = 169
    Height = 17
    Caption = 'Mostrar pre'#231'o de Custo'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object CheckBox3: TCheckBox
    Left = 88
    Top = 237
    Width = 169
    Height = 17
    Caption = 'Mostrar Pre'#231'o de Venda'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object CheckBox5: TCheckBox
    Left = 280
    Top = 238
    Width = 143
    Height = 17
    Caption = 'Somente Produtos Ativos'
    TabOrder = 8
  end
  object RzBitBtn1: TRzBitBtn
    Left = 308
    Top = 286
    Width = 115
    Height = 41
    Caption = 'Filtrar / Imprimir'
    HotTrack = True
    TabOrder = 9
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object RLReport1: TRLReport
    Left = 107
    Top = 437
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    Borders.FixedBottom = True
    DataSource = DS_Query_Relatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.ForceEmulation = True
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 19
      BandType = btTitle
      object RLSystemInfo1: TRLSystemInfo
        Left = 656
        Top = 0
        Width = 60
        Height = 19
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 58
      Width = 716
      Height = 31
      BandType = btColumnHeader
      object RLLabel10: TRLLabel
        Left = 1
        Top = 17
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
      object RLLabel11: TRLLabel
        Left = 0
        Top = -1
        Width = 378
        Height = 19
        Caption = 'RELAT'#211'RIO DE ESTOQUE AGRUPADO POR TRIBUTA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 39
      Top = 89
      Width = 716
      Height = 73
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      Borders.FixedLeft = True
      Borders.FixedTop = True
      Borders.FixedRight = True
      BeforePrint = RLGroup1BeforePrint
      object RLBand3: TRLBand
        Left = 1
        Top = 1
        Width = 714
        Height = 40
        BandType = btColumnHeader
        object RLLabel1: TRLLabel
          Left = 2
          Top = 25
          Width = 39
          Height = 13
          AutoSize = False
          Caption = 'C'#211'DIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 45
          Top = 25
          Width = 62
          Height = 13
          AutoSize = False
          Caption = 'REFER'#202'NCIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 109
          Top = 24
          Width = 58
          Height = 13
          AutoSize = False
          Caption = 'NCM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 171
          Top = 25
          Width = 234
          Height = 13
          AutoSize = False
          Caption = 'PRODUTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 409
          Top = 25
          Width = 44
          Height = 13
          AutoSize = False
          Caption = 'ESTOQUE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 462
          Top = 25
          Width = 82
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PRE'#199'O DE CUSTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 549
          Top = 25
          Width = 86
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PRE'#199'O DE VENDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 640
          Top = 24
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 4
          Top = 7
          Width = 85
          Height = 13
          AutoSize = False
          Caption = 'C'#211'DIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 96
          Top = 6
          Width = 69
          Height = 14
          DataField = 'TRIBUTACAO'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 1
        Top = 41
        Width = 714
        Height = 16
        BeforePrint = RLBand4BeforePrint
        object RLDBText1: TRLDBText
          Left = -9
          Top = 3
          Width = 62
          Height = 13
          Alignment = taCenter
          DataField = 'ID_PRODUTO'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 45
          Top = 3
          Width = 62
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'REF'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 109
          Top = 3
          Width = 58
          Height = 13
          AutoSize = False
          DataField = 'NCM'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 171
          Top = 3
          Width = 234
          Height = 13
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 409
          Top = 3
          Width = 44
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESTOQ'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 462
          Top = 3
          Width = 82
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_CUSTO'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 549
          Top = 3
          Width = 86
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_VENDA'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 640
          Top = 3
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
        end
      end
      object RLBand5: TRLBand
        Left = 1
        Top = 57
        Width = 714
        Height = 17
        BandType = btSummary
        Color = 15132390
        ParentColor = False
        Transparent = False
        object RLLabel12: TRLLabel
          Left = 351
          Top = 0
          Width = 58
          Height = 17
          Align = faRight
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlBottom
          ParentFont = False
          Transparent = False
        end
        object RLDBResult1: TRLDBResult
          Left = 409
          Top = 0
          Width = 305
          Height = 17
          Align = faRight
          Alignment = taRightJustify
          DataField = 'TOTAL'
          DataSource = DS_Query_Relatorio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Info = riSum
          Layout = tlBottom
          ParentFont = False
          Text = '/           TOTAL PRE'#199'O DE CUSTO POR GRUPO    '
        end
      end
    end
    object RLBand6: TRLBand
      Left = 39
      Top = 162
      Width = 716
      Height = 51
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Transparent = False
      object RLLabel13: TRLLabel
        Left = 550
        Top = 9
        Width = 149
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 550
        Top = 31
        Width = 149
        Height = 16
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DS_Query_Relatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel14: TRLLabel
        Left = 377
        Top = 10
        Width = 91
        Height = 16
        Caption = 'ESTOQUE TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 376
        Top = 31
        Width = 133
        Height = 16
        Caption = 'TOTAL PRE'#199'O DE CUSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand7: TRLBand
      Left = 39
      Top = 213
      Width = 716
      Height = 16
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 629
        Top = 0
        Width = 87
        Height = 16
        Align = faRight
        Alignment = taRightJustify
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
  end
  object Memo1: TMemo
    Left = 556
    Top = 62
    Width = 552
    Height = 337
    Lines.Strings = (
      'Memo1')
    TabOrder = 11
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 118
    Top = 40
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 280
    Top = 215
    Width = 143
    Height = 17
    Caption = 'Mostra Estoque Negativo'
    TabOrder = 12
  end
  object Query_Relatorio: TFDQuery
    OnCalcFields = Query_RelatorioCalcFields
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select'
      '   id_produto,'
      '   ref,'
      '   ncm,'
      '   descricao,'
      '   cast(sum(estoq) as decimal(15,2)) as estoq,'
      '   preco_custo,'
      '   preco_venda,'
      '   tributacao,'
      '   id_tributacao,'
      '   id_categoria,'
      '   categoria,'
      '   marca,'
      '   tipo,'
      '   id_colecao,'
      '   colecao from Rel_Posicao_Est_Agrupado'
      '   group by'
      '    id_produto,'
      '   ref,'
      '   ncm,'
      '   descricao,'
      '   preco_custo,'
      '   preco_venda,'
      '   tributacao,'
      '   id_tributacao,'
      '   id_categoria,'
      '   categoria,'
      '   marca,'
      '   tipo,'
      '   id_colecao,'
      '   colecao')
    Left = 16
    Top = 296
    object Query_RelatorioID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object Query_RelatorioREF: TStringField
      FieldName = 'REF'
      Origin = 'REF'
      Size = 15
    end
    object Query_RelatorioNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object Query_RelatorioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object Query_RelatorioPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      currency = True
      Precision = 18
    end
    object Query_RelatorioPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      currency = True
      Precision = 18
    end
    object Query_RelatorioTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      Origin = 'TRIBUTACAO'
      Size = 59
    end
    object Query_RelatorioID_TRIBUTACAO: TSmallintField
      FieldName = 'ID_TRIBUTACAO'
      Origin = 'ID_TRIBUTACAO'
    end
    object Query_RelatorioID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object Query_RelatorioCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 50
    end
    object Query_RelatorioMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object Query_RelatorioTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Query_RelatorioID_COLECAO: TIntegerField
      FieldName = 'ID_COLECAO'
      Origin = 'ID_COLECAO'
    end
    object Query_RelatorioCOLECAO: TStringField
      FieldName = 'COLECAO'
      Origin = 'COLECAO'
      Size = 50
    end
    object Query_RelatorioTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      currency = True
      Calculated = True
    end
    object Query_RelatorioESTOQ: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQ'
      Origin = 'ESTOQ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Query_Relatorio: TDataSource
    DataSet = Query_Relatorio
    Left = 120
    Top = 304
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 232
    Top = 320
  end
end
