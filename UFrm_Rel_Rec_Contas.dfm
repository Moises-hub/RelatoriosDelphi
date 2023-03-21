object Frm_Rel_Rec_Contas: TFrm_Rel_Rec_Contas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 377
  ClientWidth = 470
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
    Width = 470
    Height = 377
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    ExplicitWidth = 491
    object Label3: TLabel
      Left = 8
      Top = 160
      Width = 45
      Height = 13
      Caption = 'CAMPO 1'
    end
    object Label4: TLabel
      Left = 8
      Top = 205
      Width = 45
      Height = 13
      Caption = 'CAMPO 2'
    end
    object Label5: TLabel
      Left = 92
      Top = 205
      Width = 45
      Height = 13
      Caption = 'CAMPO 3'
    end
    object Label6: TLabel
      Left = 182
      Top = 205
      Width = 45
      Height = 13
      Caption = 'CAMPO 4'
    end
    object Label7: TLabel
      Left = 296
      Top = 205
      Width = 45
      Height = 13
      Caption = 'CAMPO 5'
    end
    object Label8: TLabel
      Left = 398
      Top = 205
      Width = 45
      Height = 13
      Caption = 'CAMPO 6'
    end
    object Label9: TLabel
      Left = 8
      Top = 259
      Width = 45
      Height = 13
      Caption = 'CAMPO 7'
    end
    object RzGroupBox1: TRzGroupBox
      Left = 0
      Top = 0
      Width = 470
      Height = 138
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 491
      object Label1: TLabel
        Left = 8
        Top = 16
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
        Left = 166
        Top = 16
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
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 8
        Top = 35
        Width = 152
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 166
        Top = 35
        Width = 152
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 166
        Top = 62
        Width = 152
        Height = 43
        Caption = 'Filtrar por'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Vencimento'
          'Emiss'#227'o')
        TabOrder = 2
        VisualStyle = vsGradient
      end
      object Button1: TButton
        Left = 343
        Top = 35
        Width = 106
        Height = 66
        Caption = 'Visualizar / Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 847
      Top = 144
      Width = 698
      Height = 201
      DataSource = DS_Contas
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object RLReport1: TRLReport
      Left = 260
      Top = 111
      Width = 794
      Height = 1123
      DataSource = DS_Contas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand2: TRLBand
        AlignWithMargins = True
        Left = 38
        Top = 38
        Width = 718
        Height = 247
        AlignToBottom = True
        BeforePrint = RLBand2BeforePrint
        object Shape1: TShape
          Left = 0
          Top = 64
          Width = 718
          Height = 179
        end
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 718
          Height = 65
        end
        object RLLabel1: TRLLabel
          Left = 20
          Top = 75
          Width = 118
          Height = 15
          Anchors = [fkLeft, fkTop, fkRight, fkBottom]
          AutoSize = False
          Caption = 'DETALHAMENTO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 18
          Top = 105
          Width = 70
          Height = 15
          AutoSize = False
          Caption = 'EMISS'#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 131
          Top = 105
          Width = 93
          Height = 15
          AutoSize = False
          Caption = 'VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 247
          Top = 105
          Width = 91
          Height = 15
          AutoSize = False
          Caption = 'DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 366
          Top = 105
          Width = 66
          Height = 15
          AutoSize = False
          Caption = 'PARCELA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 466
          Top = 105
          Width = 70
          Height = 15
          AutoSize = False
          Caption = 'VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 141
          Top = 75
          Width = 542
          Height = 16
          Anchors = [fkLeft, fkTop, fkRight, fkBottom]
          AutoSize = False
          DataField = 'NOME'
          DataSource = DS_Contas
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 18
          Top = 121
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = DS_Contas
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 247
          Top = 121
          Width = 91
          Height = 16
          AutoSize = False
          DataField = 'NDOC'
          DataSource = DS_Contas
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 366
          Top = 121
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = DS_Contas
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 466
          Top = 121
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'VALOR'
          DataSource = DS_Contas
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 168
          Top = 200
          Width = 370
          Height = 36
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'RAZAO_SOCIAL'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 105
          Top = 40
          Width = 568
          Height = 19
          Alignment = taCenter
          AutoSize = False
          DataField = 'CNPJ'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLImage1: TRLImage
          Left = 40
          Top = 7
          Width = 52
          Height = 52
          Stretch = True
        end
        object RLMemo1: TRLMemo
          Left = 20
          Top = 152
          Width = 663
          Height = 20
          AutoSize = False
          Behavior = [beSiteExpander]
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 105
          Top = 11
          Width = 568
          Height = 19
          Alignment = taCenter
          AutoSize = False
          DataField = 'NOME_EMPRESA'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel18: TRLLabel
          Left = 131
          Top = 122
          Width = 93
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 682
          Top = 2
          Width = 33
          Height = 14
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object Edit1: TEdit
      Left = 59
      Top = 157
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      Text = 'DETALHAMENTO'
    end
    object Edit2: TEdit
      Left = 92
      Top = 224
      Width = 76
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      Text = 'VENCIMENTO'
    end
    object Edit3: TEdit
      Left = 8
      Top = 224
      Width = 68
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      Text = 'EMISS'#195'O'
    end
    object Edit4: TEdit
      Left = 182
      Top = 224
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      Text = 'DOCUMENTO'
    end
    object Edit5: TEdit
      Left = 296
      Top = 224
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
      Text = 'PARCELA'
    end
    object Edit6: TEdit
      Left = 398
      Top = 224
      Width = 72
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
      Text = 'VALOR'
    end
    object Memo1: TMemo
      Left = 3
      Top = 278
      Width = 462
      Height = 89
      TabOrder = 9
    end
  end
  object Contas: TSQLDataSet
    CommandText = 'select * from rel_rec_contas'
    MaxBlobSize = -1
    Params = <>
    Left = 40
    Top = 384
  end
  object Prov_Contas: TDataSetProvider
    DataSet = Contas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 88
    Top = 384
  end
  object Cli_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Contas'
    Left = 152
    Top = 384
    object Cli_ContasID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      Precision = 18
      Size = 0
    end
    object Cli_ContasNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object Cli_ContasEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object Cli_ContasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Cli_ContasPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object Cli_ContasNDOC: TStringField
      FieldName = 'NDOC'
    end
    object Cli_ContasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Cli_ContasMULTA: TSingleField
      FieldName = 'MULTA'
    end
    object Cli_ContasJUROS: TSingleField
      FieldName = 'JUROS'
    end
  end
  object DS_Contas: TDataSource
    DataSet = Cli_Contas
    Left = 208
    Top = 384
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 256
    Top = 448
  end
  object Empresa: TSQLDataSet
    CommandText = 'select * from empresa'
    MaxBlobSize = 1
    Params = <>
    Left = 40
    Top = 448
  end
  object CD_Empresa: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from empresa where id_empresa =:p'
    Params = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 200
    Top = 448
    object CD_EmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object CD_EmpresaTIPO_ATIVIDADE: TSmallintField
      FieldName = 'TIPO_ATIVIDADE'
    end
    object CD_EmpresaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object CD_EmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object CD_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_EmpresaID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      Precision = 18
      Size = 0
    end
    object CD_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object CD_EmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CD_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CD_EmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object CD_EmpresaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 18
    end
    object CD_EmpresaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 18
    end
    object CD_EmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 18
    end
    object CD_EmpresaPRACA: TStringField
      FieldName = 'PRACA'
      Size = 50
    end
    object CD_EmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object CD_EmpresaCHAVE1: TStringField
      FieldName = 'CHAVE1'
      Size = 14
    end
    object CD_EmpresaCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 14
    end
    object CD_EmpresaIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object CD_EmpresaTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
    end
    object CD_EmpresaSMTP_ENDERECO: TStringField
      FieldName = 'SMTP_ENDERECO'
      Size = 100
    end
    object CD_EmpresaSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object CD_EmpresaSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
    end
    object CD_EmpresaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object CD_EmpresaSUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object CD_EmpresaCONTRIB_IPI: TSmallintField
      FieldName = 'CONTRIB_IPI'
    end
    object CD_EmpresaTIPO_MF: TSmallintField
      FieldName = 'TIPO_MF'
    end
    object CD_EmpresaSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object CD_EmpresaREG_TRIBUTARIO: TSmallintField
      FieldName = 'REG_TRIBUTARIO'
    end
    object CD_EmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CD_EmpresaIM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object CD_EmpresaSMTP_SSL: TSmallintField
      FieldName = 'SMTP_SSL'
    end
    object CD_EmpresaCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Empresa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 104
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = CD_Empresa
    Left = 288
    Top = 440
  end
end
