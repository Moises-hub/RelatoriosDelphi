object Frm_Rel_ContasPlanoContas: TFrm_Rel_ContasPlanoContas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio Contas por Plano de Contas'
  ClientHeight = 301
  ClientWidth = 382
  Color = clBtnHighlight
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
    Left = 20
    Top = 85
    Width = 90
    Height = 13
    Caption = 'Centro de Custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 22
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
    Left = 210
    Top = 22
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
  object Label4: TLabel
    Left = 20
    Top = 143
    Width = 90
    Height = 13
    Caption = 'Plano de Contas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RLReport2: TRLReport
    Left = 55
    Top = 298
    Width = 1123
    Height = 794
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLGroup2: TRLGroup
      Left = 38
      Top = 117
      Width = 1047
      Height = 92
      Borders.Sides = sdAll
      DataFields = 'ID_PLANO'
      object RLDetailGrid2: TRLDetailGrid
        Left = 1
        Top = 47
        Width = 1045
        Height = 17
        object RLDBText11: TRLDBText
          Left = 0
          Top = 0
          Width = 116
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'DATA_EMISSAO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 513
          Top = 0
          Width = 104
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'N_DOC'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 232
          Top = 0
          Width = 97
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'CLASSE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 329
          Top = 0
          Width = 184
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'PLANO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 116
          Top = 0
          Width = 116
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'DATA_EMISSAO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 617
          Top = 0
          Width = 77
          Height = 17
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 705
          Top = 0
          Width = 191
          Height = 17
          Align = faRight
          AutoSize = False
          DataField = 'CENTRO_CUSTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 896
          Top = 0
          Width = 149
          Height = 17
          Align = faRight
          AutoSize = False
          DataField = 'CAIXA'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 1
        Top = 1
        Width = 1045
        Height = 46
        BandType = btColumnHeader
        object RLDBText20: TRLDBText
          Left = 134
          Top = 5
          Width = 358
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'PLANO_CO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel17: TRLLabel
          Left = 13
          Top = 5
          Width = 115
          Height = 15
          Alignment = taRightJustify
          Caption = 'PLANO DE CONTAS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 3
          Top = 29
          Width = 113
          Height = 15
          Caption = 'DATA DE EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 617
          Top = 29
          Width = 77
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText3
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 513
          Top = 29
          Width = 104
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText15
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 232
          Top = 29
          Width = 97
          Height = 15
          AutoSize = False
          Caption = 'N'#186' CONT'#193'BIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText18
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 329
          Top = 28
          Width = 184
          Height = 15
          AutoSize = False
          Caption = 'NOME CONT'#193'BIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText1
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 116
          Top = 29
          Width = 97
          Height = 15
          Caption = 'DATA QUITA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText2
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 705
          Top = 31
          Width = 191
          Height = 15
          AutoSize = False
          Caption = 'CENTRO DE CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText4
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 896
          Top = 31
          Width = 149
          Height = 15
          AutoSize = False
          Caption = 'LOCAL DE QUITA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText5
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 1
        Top = 64
        Width = 1045
        Height = 25
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 699
          Top = 0
          Width = 346
          Height = 25
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'VALOR'
          DataSource = DataSource1
          DisplayMask = '###,###.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'VALOR TOTAL: R$'
        end
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 18
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 915
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
    object RLBand9: TRLBand
      Left = 38
      Top = 56
      Width = 1047
      Height = 61
      BandType = btTitle
      object RLLabel30: TRLLabel
        Left = 14
        Top = 11
        Width = 280
        Height = 16
        Caption = 'RELAT'#211'RIO CONTAS POR PLANO DE CONTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
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
    object RLBand1: TRLBand
      Left = 38
      Top = 209
      Width = 1047
      Height = 25
      BandType = btColumnFooter
      object RLLabel5: TRLLabel
        Left = 0
        Top = 0
        Width = 360
        Height = 25
        Align = faLeft
        Caption = 'Coliseu Sistemas - www.coliseusistemas.com.br - (67)3423-2227'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
      end
    end
  end
  object Button1: TButton
    Left = 262
    Top = 221
    Width = 93
    Height = 36
    Caption = 'Visualizar / Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object RzComboBox1: TRzComboBox
    Left = 20
    Top = 104
    Width = 335
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'ENTREGUE'
      'N'#195'O ENTREGUE'
      'ENTREGA PARCIAL')
    ItemIndex = 0
    Values.Strings = (
      ' '
      'AND MOV_ENTREGAS.tipo = 1'
      'AND MOV_ENTREGAS.tipo = 2'
      'AND MOV_ENTREGAS.tipo = 3')
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 24
    Top = 42
    Width = 141
    Height = 21
    EditType = etDate
    TabOrder = 3
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 210
    Top = 41
    Width = 145
    Height = 21
    EditType = etDate
    TabOrder = 4
  end
  object RzComboBox2: TRzComboBox
    Left = 20
    Top = 162
    Width = 335
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'ENTREGUE'
      'N'#195'O ENTREGUE'
      'ENTREGA PARCIAL')
    ItemIndex = 0
    Values.Strings = (
      ' '
      'AND MOV_ENTREGAS.tipo = 1'
      'AND MOV_ENTREGAS.tipo = 2'
      'AND MOV_ENTREGAS.tipo = 3')
  end
  object RzRadioGroup1: TRzRadioGroup
    Left = 24
    Top = 200
    Width = 113
    Height = 73
    Caption = 'Contas a:'
    GroupStyle = gsStandard
    ItemIndex = 0
    Items.Strings = (
      'Pagar'
      'Receber')
    TabOrder = 6
  end
  object RzRadioGroup2: TRzRadioGroup
    Left = 143
    Top = 200
    Width = 113
    Height = 73
    Caption = 'Filtrar por data'
    GroupStyle = gsStandard
    ItemIndex = 0
    Items.Strings = (
      'Emiss'#227'o'
      'Pagamento')
    TabOrder = 7
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT FIRST 1000 CONTAS.data_emissao,'
      '       CONTAS.data_pagamento,'
      '       CONTAS.id_plano,'
      '       plano_contas.classe,'
      '       plano_contas.descricao AS PLANO,'
      
        '       plano_contas.classe||'#39'-'#39'|| plano_contas.descricao AS plan' +
        'o_co,'
      '       CONTAS.n_doc,'
      '       CLIENTES.NOME,'
      '       contas.valor,'
      '       centro_custos.descricao AS CENTRO_CUSTO,'
      '       caixas.descricao AS CAIXA'
      '       from contas'
      
        '       left join plano_contas on(plano_contas.id_plano = contas.' +
        'id_plano)'
      
        '       left join centro_custos on(centro_custos.id_centro = cont' +
        'as.id_depto)'
      
        '       left join clientes on(clientes.id_cliente = contas.id_cli' +
        'ente)'
      '       left join caixas on(caixas.id_caixa = contas.id_caixa)'
      'ORDER BY PLANO_CONTAS.DESCRICAO')
    Left = 423
    Top = 96
    object FDQuery1DATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object FDQuery1DATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object FDQuery1ID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
      Origin = 'ID_PLANO'
    end
    object FDQuery1CLASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSE'
      Origin = 'CLASSE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PLANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLANO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1PLANO_CO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLANO_CO'
      Origin = 'PLANO_CO'
      ProviderFlags = []
      ReadOnly = True
      Size = 71
    end
    object FDQuery1N_DOC: TStringField
      FieldName = 'N_DOC'
      Origin = 'N_DOC'
    end
    object FDQuery1NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object FDQuery1VALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery1CENTRO_CUSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTRO_CUSTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 424
    Top = 152
  end
end
