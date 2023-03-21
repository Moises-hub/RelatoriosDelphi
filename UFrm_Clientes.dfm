object Frm_Clientes: TFrm_Clientes
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Clientes'
  ClientHeight = 326
  ClientWidth = 525
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 326
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    ExplicitWidth = 346
    ExplicitHeight = 197
    object RzLabel1: TRzLabel
      Left = 48
      Top = 27
      Width = 33
      Height = 13
      Caption = 'da ID '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel2: TRzLabel
      Left = 207
      Top = 27
      Width = 38
      Height = 13
      Caption = 'at'#233' ID '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel4: TRzLabel
      Left = 183
      Top = 63
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel3: TRzLabel
      Left = 55
      Top = 63
      Width = 24
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel5: TRzLabel
      Left = 42
      Top = 107
      Width = 36
      Height = 13
      Caption = 'Classe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzComboBox1: TRzComboBox
      Left = 226
      Top = 60
      Width = 89
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'ATIVO'
        'INATIVO')
      ItemIndex = 0
      Values.Strings = (
        '  '
        'and classificacao <> 1'
        'and classificacao =1')
    end
    object Edit1: TEdit
      Left = 84
      Top = 24
      Width = 41
      Height = 21
      MaxLength = 5
      TabOrder = 1
      Text = '1'
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 246
      Top = 24
      Width = 43
      Height = 21
      MaxLength = 5
      TabOrder = 2
      Text = '99999'
      OnKeyPress = Edit2KeyPress
    end
    object RLReport1: TRLReport
      Left = 26
      Top = 250
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
      object RLBand4: TRLBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 18
        BandType = btHeader
        object RLSystemInfo2: TRLSystemInfo
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
      object RLBand3: TRLBand
        Left = 38
        Top = 56
        Width = 1047
        Height = 49
        BandType = btTitle
        BeforePrint = RLBand3BeforePrint
        object RLLabel11: TRLLabel
          Left = 10
          Top = 27
          Width = 148
          Height = 16
          Caption = 'LISTAGEM DE CLIENTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 0
          Top = 0
          Width = 1047
          Height = 18
          Align = faTop
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand2: TRLBand
        Left = 38
        Top = 145
        Width = 1047
        Height = 25
        BandType = btFooter
        object RLLabel16: TRLLabel
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
        object RLSystemInfo1: TRLSystemInfo
          Left = 891
          Top = 0
          Width = 53
          Height = 25
          Align = faRight
          Alignment = taRightJustify
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 944
          Top = 0
          Width = 103
          Height = 25
          Align = faRight
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itLastPageNumber
          ParentFont = False
          Text = '-  '
        end
      end
      object RLBand1: TRLBand
        Left = 38
        Top = 105
        Width = 1047
        Height = 24
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        object RLLabel1: TRLLabel
          Left = 54
          Top = 6
          Width = 38
          Height = 15
          Caption = 'NOME'
        end
        object RLLabel3: TRLLabel
          Left = 309
          Top = 6
          Width = 23
          Height = 15
          Caption = 'CPF'
        end
        object RLLabel4: TRLLabel
          Left = 8
          Top = 6
          Width = 27
          Height = 15
          Caption = 'COD'
        end
        object RLLabel5: TRLLabel
          Left = 458
          Top = 6
          Width = 61
          Height = 15
          Caption = 'ENDERE'#199'O'
        end
        object RLLabel2: TRLLabel
          Left = 882
          Top = 6
          Width = 43
          Height = 15
          Caption = 'CIDADE'
        end
      end
      object RLBand5: TRLBand
        Left = 38
        Top = 129
        Width = 1047
        Height = 16
        Color = clMenu
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        BeforePrint = RLBand5BeforePrint
        object RLDBText1: TRLDBText
          Left = 8
          Top = 0
          Width = 27
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID_CLIENTE'
          DataSource = DataSource1
          Holder = RLLabel4
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 51
          Top = -1
          Width = 257
          Height = 15
          AutoSize = False
          DataField = 'NOME'
          DataSource = DataSource1
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 309
          Top = -2
          Width = 145
          Height = 15
          AutoSize = False
          DataField = 'CPF_CNPJ'
          DataSource = DataSource1
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 458
          Top = 0
          Width = 422
          Height = 15
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = DataSource1
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 882
          Top = 0
          Width = 153
          Height = 15
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = DataSource1
          Text = ''
          Transparent = False
        end
      end
    end
    object RzComboBox2: TRzComboBox
      Left = 85
      Top = 60
      Width = 87
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'CLIENTES'
        'FORNECEDORES')
      ItemIndex = 0
      Values.Strings = (
        '  '
        'and tipo = 1'
        'and tipo = 2')
    end
    object RzComboBox3: TRzComboBox
      Left = 84
      Top = 104
      Width = 231
      Height = 21
      Style = csDropDownList
      TabOrder = 5
    end
    object Button1: TButton
      Left = 373
      Top = 207
      Width = 105
      Height = 37
      Caption = 'Visualizar/ Imprimir'
      TabOrder = 6
      OnClick = Button1Click
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 55
      Top = 138
      Width = 332
      Height = 49
      Caption = 'Ordenar por'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'ID'
        'NOME'
        'ENDERE'#199'O'
        'REGIAO')
      SpaceEvenly = True
      TabOrder = 7
      VerticalSpacing = 0
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT FIRST(50) clientes.ID_CLIENTE,'
      '       CLIENTES.CPF_CNPJ,'
      '       clientes.nome, '
      '       CLIENTES.nome_fantasia,'
      
        '       clientes_dados.endereco||'#39', '#39'||clientes_dados.numero||COA' +
        'LESCE('#39' - '#39'||clientes_dados.complemento,'#39' '#39'||'#39#39')'
      
        '       ||coalesce('#39' - '#39'||CLIENTES_DADOS.bairro,'#39' '#39'||'#39#39') as ender' +
        'eco,'
      '       regioes.cidade||'#39'-'#39'||regioes.uf as cidade'
      '       from clientes'
      
        '       left join clientes_dados on clientes_dados.id_cliente = c' +
        'lientes.id_cliente'
      
        '       left join regioes on regioes.id_regiao = clientes.id_regi' +
        'ao')
    Left = 464
    Top = 32
    object FDQuery1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object FDQuery1NOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 50
    end
    object FDQuery1ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 126
    end
    object FDQuery1CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 53
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 536
    Top = 32
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    Left = 376
    Top = 40
  end
end
