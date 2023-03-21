object Frm_Minuta: TFrm_Minuta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Minuta de Despacho'
  ClientHeight = 233
  ClientWidth = 451
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
  object Label1: TLabel
    Left = 48
    Top = 22
    Width = 70
    Height = 15
    Caption = 'DATA INICIAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 222
    Top = 22
    Width = 63
    Height = 15
    Caption = 'DATA FINAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 67
    Width = 41
    Height = 15
    Caption = 'REGIAO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 115
    Width = 61
    Height = 15
    Caption = 'VENDEDOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 48
    Top = 40
    Width = 147
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 222
    Top = 40
    Width = 147
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object Button1: TButton
    Left = 246
    Top = 160
    Width = 123
    Height = 25
    Caption = 'Visualizar / Imprimir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = 16
    Top = 179
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MaxBands = 3
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 1085
      Height = 49
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.Color = clGray
      object RLLabel13: TRLLabel
        Left = 808
        Top = 10
        Width = 128
        Height = 15
        Alignment = taCenter
        Caption = 'TRANSPORTADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 808
        Top = 27
        Width = 128
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'TRANSPORTADORA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel13
        ParentFont = False
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 3
        Top = 6
        Width = 86
        Height = 15
        DataField = 'RAZAO_SOCIAL'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 3
        Top = 26
        Width = 30
        Height = 15
        DataField = 'CNPJ'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 68
      Width = 1085
      Height = 49
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.Color = clGray
      object RLSystemInfo1: TRLSystemInfo
        Left = 943
        Top = 4
        Width = 139
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'RELAT'#211'RIO EMITIDO '
      end
      object RLLabel17: TRLLabel
        Left = 458
        Top = 15
        Width = 169
        Height = 19
        Align = faCenter
        Caption = 'Minuta de Despacho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 19
      Top = 229
      Width = 1085
      Height = 16
      BandType = btColumnFooter
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 974
        Top = 0
        Width = 111
        Height = 16
        Align = faRight
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = '/'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 890
        Top = 0
        Width = 84
        Height = 16
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 19
      Top = 117
      Width = 1085
      Height = 112
      DataFields = 'NATUREZA_OP'
      Transparent = False
      BeforePrint = RLGroup1BeforePrint
      object RLBand2: TRLBand
        Left = 0
        Top = 66
        Width = 1085
        Height = 21
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 0
          Top = 2
          Width = 36
          Height = 16
          AutoSize = False
          DataField = 'NFE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 36
          Top = 2
          Width = 46
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'VOLUME'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 82
          Top = 2
          Width = 52
          Height = 16
          AutoSize = False
          DataField = 'N_PEDIDO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 134
          Top = 2
          Width = 154
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 288
          Top = 2
          Width = 183
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE_F'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 471
          Top = 2
          Width = 91
          Height = 16
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 562
          Top = 2
          Width = 108
          Height = 16
          AutoSize = False
          DataField = 'BAIRRO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 670
          Top = 2
          Width = 94
          Height = 16
          AutoSize = False
          DataField = 'REPRESENTANTE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 881
          Top = 2
          Width = 72
          Height = 16
          AutoSize = False
          DataField = 'PRAZO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 764
          Top = 2
          Width = 117
          Height = 16
          AutoSize = False
          DataField = 'ESPECIE_PG'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel10
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText11: TRLDBText
          Left = 953
          Top = 2
          Width = 54
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'PESO_BRUTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel11
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 1007
          Top = 2
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel12
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 38
        Width = 1085
        Height = 28
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Borders.Color = clSilver
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 0
          Top = 2
          Width = 36
          Height = 24
          Align = faLeft
          AutoSize = False
          Caption = 'NF-e'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 36
          Top = 2
          Width = 46
          Height = 24
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'VOL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 82
          Top = 2
          Width = 52
          Height = 24
          Align = faLeft
          AutoSize = False
          Caption = 'PEDIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 134
          Top = 2
          Width = 154
          Height = 24
          Align = faLeft
          AutoSize = False
          Caption = 'CLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 288
          Top = 2
          Width = 183
          Height = 24
          Align = faLeft
          AutoSize = False
          Caption = 'NOME FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 471
          Top = 2
          Width = 91
          Height = 24
          Align = faLeft
          AutoSize = False
          Caption = 'CIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 562
          Top = 2
          Width = 108
          Height = 24
          Align = faLeft
          AutoSize = False
          Caption = 'BAIRRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 670
          Top = 2
          Width = 94
          Height = 24
          Align = faClient
          AutoSize = False
          Caption = 'REPR.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 881
          Top = 2
          Width = 72
          Height = 24
          Align = faRight
          AutoSize = False
          Caption = 'PRAZO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 764
          Top = 2
          Width = 117
          Height = 24
          Align = faRight
          AutoSize = False
          Caption = 'ESP'#201'CIE PAG.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 953
          Top = 2
          Width = 54
          Height = 24
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'PESO BR.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 1007
          Top = 2
          Width = 78
          Height = 24
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 1085
        Height = 38
        BandType = btColumnHeader
        Transparent = False
        BeforePrint = RLBand5BeforePrint
        object RLLabel14: TRLLabel
          Left = 8
          Top = 16
          Width = 64
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 87
        Width = 1085
        Height = 22
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Transparent = False
        object RLLabel15: TRLLabel
          Left = 3
          Top = 4
          Width = 58
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 1020
          Top = 2
          Width = 58
          Height = 15
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RzComboBox1: TRzComboBox
    Left = 48
    Top = 84
    Width = 321
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 4
  end
  object RzComboBox2: TRzComboBox
    Left = 48
    Top = 132
    Width = 321
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 5
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT* FROM MIN_DESPACHO'
      'WHERE ((data >=:I) AND (data <=:F)) AND Id_depto =:D'
      'ORDER BY NATUREZA_OP DESC')
    Left = 624
    Top = 16
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'D'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery1TRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      Origin = 'TRANSPORTADORA'
      Size = 70
    end
    object FDQuery1NFE: TStringField
      FieldName = 'NFE'
      Origin = 'NFE'
      Size = 18
    end
    object FDQuery1VOLUME: TIntegerField
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
    end
    object FDQuery1N_PEDIDO: TStringField
      FieldName = 'N_PEDIDO'
      Origin = 'N_PEDIDO'
      Size = 18
    end
    object FDQuery1CLIENTE_F: TStringField
      FieldName = 'CLIENTE_F'
      Origin = 'CLIENTE_F'
      Size = 70
    end
    object FDQuery1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object FDQuery1CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQuery1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDQuery1REPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 50
    end
    object FDQuery1PRAZO: TStringField
      FieldName = 'PRAZO'
      Origin = 'PRAZO'
      Size = 50
    end
    object FDQuery1ESPECIE_PG: TStringField
      FieldName = 'ESPECIE_PG'
      Origin = 'ESPECIE_PG'
      Size = 50
    end
    object FDQuery1PESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object FDQuery1NATUREZA_OP: TStringField
      FieldName = 'NATUREZA_OP'
      Origin = 'NATUREZA_OP'
      FixedChar = True
      Size = 11
    end
    object FDQuery1DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQuery1UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQuery1REGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
    end
    object FDQuery1ID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object FDQuery1VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object FDQuery1VALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 616
    Top = 80
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'SELECT SUM(min_despacho.valor),min_despacho.especie_pg||'#39':'#39' AS e' +
        'specie_pg, NATUREZA_OP FROM min_despacho'
      
        'WHERE ((data >=:I) AND (data <=:F)) AND min_despacho.regiao =:R ' +
        'AND NATUREZA_OP =:N AND Id_depto =:D'
      'GROUP BY min_despacho.especie_pg,NATUREZA_OP'
      'ORDER BY NATUREZA_OP DESC')
    Left = 520
    Top = 16
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'R'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'N'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 11
      end
      item
        Name = 'D'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery2ESPECIE_PG: TStringField
      FieldName = 'ESPECIE_PG'
      Origin = 'ESPECIE_PG'
      Size = 50
    end
    object FDQuery2NATUREZA_OP: TStringField
      FieldName = 'NATUREZA_OP'
      Origin = 'NATUREZA_OP'
      FixedChar = True
      Size = 11
    end
    object FDQuery2SUM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object REGIAO: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT(CLIENTES.ID_REGIAO), regioes.cidade||'#39'-'#39'||regioe' +
        's.uf AS CIDADE FROM CLIENTES'
      'INNER JOIN REGIOES ON REGIOES.id_regiao = CLIENTES.id_regiao'
      'ORDER BY regioes.uf, regioes.cidade')
    Left = 800
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 520
    Top = 80
  end
  object FDQuery3: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT SUM(min_despacho.valor) FROM min_despacho'
      
        'WHERE ((data >=:I) AND (data <=:F)) AND min_despacho.regiao =:R ' +
        'AND NATUREZA_OP =:N AND Id_depto =:D')
    Left = 704
    Top = 24
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'R'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'N'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 11
      end
      item
        Name = 'D'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery3SUM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object FDQuery4: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT empresa.razao_social, empresa.cnpj FROM EMPRESA'
      'WHERE ID_EMPRESA =:P')
    Left = 400
    Top = 24
    ParamData = <
      item
        Name = 'P'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery4RAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 50
    end
    object FDQuery4CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
  end
  object DataSource3: TDataSource
    DataSet = FDQuery4
    Left = 416
    Top = 88
  end
  object FDQuery5: TFDQuery
    IndexFieldNames = 'REGIAO'
    MasterSource = DataSource1
    MasterFields = 'REGIAO'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT* FROM MIN_DESPACHO'
      'WHERE ((data >=:I) AND (data <=:F)) AND Id_depto =:D'
      'ORDER BY CIDADE DESC')
    Left = 608
    Top = 152
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'D'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery5TRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      Origin = 'TRANSPORTADORA'
      Size = 70
    end
    object FDQuery5NFE: TStringField
      FieldName = 'NFE'
      Origin = 'NFE'
      Size = 18
    end
    object FDQuery5VOLUME: TIntegerField
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
    end
    object FDQuery5N_PEDIDO: TStringField
      FieldName = 'N_PEDIDO'
      Origin = 'N_PEDIDO'
      Size = 18
    end
    object FDQuery5CLIENTE_F: TStringField
      FieldName = 'CLIENTE_F'
      Origin = 'CLIENTE_F'
      Size = 70
    end
    object FDQuery5CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object FDQuery5CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQuery5BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDQuery5REPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 50
    end
    object FDQuery5PRAZO: TStringField
      FieldName = 'PRAZO'
      Origin = 'PRAZO'
      Size = 50
    end
    object FDQuery5ESPECIE_PG: TStringField
      FieldName = 'ESPECIE_PG'
      Origin = 'ESPECIE_PG'
      Size = 50
    end
    object FDQuery5PESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object FDQuery5VALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object FDQuery5NATUREZA_OP: TStringField
      FieldName = 'NATUREZA_OP'
      Origin = 'NATUREZA_OP'
      FixedChar = True
      Size = 11
    end
    object FDQuery5DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQuery5UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQuery5REGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
    end
    object FDQuery5ID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object FDQuery5VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
  end
  object DataSource4: TDataSource
    DataSet = FDQuery5
    Left = 608
    Top = 200
  end
end
