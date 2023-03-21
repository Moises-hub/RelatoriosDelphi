object Frm_RelVPorEspecie: TFrm_RelVPorEspecie
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 186
  ClientWidth = 454
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
    Width = 454
    Height = 186
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsMSOffice
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 425
    ExplicitHeight = 185
    object Label1: TLabel
      Left = 21
      Top = 85
      Width = 57
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 123
      Width = 86
      Height = 13
      Caption = 'Departamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 21
      Top = 100
      Width = 261
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 454
      Height = 77
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 425
      object Label2: TLabel
        Left = 156
        Top = 11
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
      object Label3: TLabel
        Left = 24
        Top = 15
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
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 24
        Top = 30
        Width = 126
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 156
        Top = 30
        Width = 126
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 326
        Top = 15
        Width = 126
        Height = 60
        Align = alRight
        Caption = 'Filtrar por Data de'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        Color = clWhite
        GradientColorStyle = gcsCustom
        GroupStyle = gsStandard
        ItemIndex = 1
        Items.Strings = (
          'Faturamento'
          'Emiss'#227'o')
        TabOrder = 2
        Transparent = True
        Visible = False
        VisualStyle = vsGradient
        ExplicitLeft = 297
      end
    end
    object RLReport1: TRLReport
      Left = 746
      Top = 83
      Width = 794
      Height = 1123
      DataSource = DS_Rel_ComEspecie
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand6: TRLBand
        Left = 38
        Top = 57
        Width = 718
        Height = 38
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel17: TRLLabel
          Left = 0
          Top = 19
          Width = 718
          Height = 14
          Align = faWidth
          Alignment = taCenter
          Caption = 'Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 0
          Top = 1
          Width = 718
          Height = 18
          Align = faTop
          Alignment = taCenter
          Caption = 'RELAT'#211'RIO COMISS'#195'O DE VENDAS POR M'#201'TODO DE PAGAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 19
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLSystemInfo3: TRLSystemInfo
          Left = 636
          Top = 0
          Width = 82
          Height = 18
          Align = faRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itPageNumber
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 0
          Top = 0
          Width = 35
          Height = 18
          Align = faLeft
          DataField = 'RAZAO_SOCIAL'
          DataSource = DM.DS_Emitente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 35
          Top = 0
          Width = 81
          Height = 18
          Align = faLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itFullDate
          ParentFont = False
          Text = ''
        end
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 95
        Width = 718
        Height = 92
        DataFields = 'ID_FUNCIONARIO'
        BeforePrint = RLGroup1BeforePrint
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 28
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 16
            Top = 6
            Width = 76
            Height = 16
            Caption = 'VENDEDOR:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 96
            Top = 6
            Width = 609
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            DataField = 'NOME'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 28
          Width = 718
          Height = 21
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          object RLLabel2: TRLLabel
            Left = 177
            Top = 1
            Width = 186
            Height = 16
            AutoSize = False
            Caption = 'ESP'#201'CIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 520
            Top = 1
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VALOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 608
            Top = 1
            Width = 98
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'COMISS'#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 367
            Top = 1
            Width = 150
            Height = 16
            AutoSize = False
            Caption = 'FORMA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 3
            Top = 1
            Width = 89
            Height = 16
            AutoSize = False
            Caption = 'EMISS'#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 95
            Top = 1
            Width = 79
            Height = 16
            AutoSize = False
            Caption = 'PEDIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 49
          Width = 718
          Height = 21
          BeforePrint = RLDetailGrid1BeforePrint
          object RLDBText3: TRLDBText
            Left = 520
            Top = -1
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel3
            ParentFont = False
            Text = ''
          end
          object RLDBText4: TRLDBText
            Left = 177
            Top = 1
            Width = 186
            Height = 16
            AutoSize = False
            DataField = 'ESPECIE'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel2
            ParentFont = False
            Text = ''
          end
          object RLDBText2: TRLDBText
            Left = 367
            Top = 0
            Width = 150
            Height = 16
            AutoSize = False
            DataField = 'FORMA_DE_PAGA'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel8
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 3
            Top = 0
            Width = 89
            Height = 16
            AutoSize = False
            DataField = 'EMISSAO'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel9
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 95
            Top = 0
            Width = 79
            Height = 16
            AutoSize = False
            DataField = 'PEDIDO'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel10
            ParentFont = False
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 608
            Top = -1
            Width = 98
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Comissao'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel4
            ParentFont = False
            Text = ''
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 70
          Width = 718
          Height = 21
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clWhite
          ParentColor = False
          Transparent = False
          object RLLabel6: TRLLabel
            Left = 550
            Top = 8
            Width = 58
            Height = 18
            Anchors = [fkRight, fkBottom]
            Caption = 'TOTAL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Layout = tlBottom
            ParentFont = False
            Transparent = False
          end
          object RLDBResult1: TRLDBResult
            Left = 608
            Top = 11
            Width = 109
            Height = 15
            Alignment = taRightJustify
            Anchors = [fkRight, fkBottom]
            DataField = 'Comissao'
            DataSource = DS_Rel_ComEspecie
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            Info = riSum
            Layout = tlBottom
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLMemo1: TRLMemo
            Left = 3
            Top = 2
            Width = 262
            Height = 17
            Alignment = taRightJustify
            Behavior = [beSiteExpander]
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 264
            Top = 2
            Width = 185
            Height = 17
            Behavior = [beSiteExpander]
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object Button1: TButton
      Left = 294
      Top = 117
      Width = 119
      Height = 27
      Cursor = crHandPoint
      Caption = 'Filtrar / Visualizar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object RzComboBox2: TRzComboBox
      Left = 21
      Top = 137
      Width = 261
      Height = 21
      Style = csDropDownList
      TabOrder = 4
    end
    object Memo1: TMemo
      Left = 24
      Top = 206
      Width = 673
      Height = 305
      Lines.Strings = (
        'Memo1')
      TabOrder = 5
      Visible = False
    end
  end
  object Rel_ComEspecie: TSQLDataSet
    CommandText = 'select * from rel_com_paga'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 232
    Top = 48
  end
  object Prov_Rel_ComEspecie: TDataSetProvider
    DataSet = Rel_ComEspecie
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 328
    Top = 24
  end
  object DS_Rel_ComEspecie: TDataSource
    DataSet = Cli_Rel_ComEspecie
    Left = 368
    Top = 56
  end
  object Cli_Rel_ComEspecie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Rel_ComEspecie'
    OnCalcFields = Cli_Rel_ComEspecieCalcFields
    Left = 136
    Top = 56
    object Cli_Rel_ComEspecieID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object Cli_Rel_ComEspecieNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cli_Rel_ComEspecieEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object Cli_Rel_ComEspecieID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object Cli_Rel_ComEspecieID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object Cli_Rel_ComEspecieFORMA_DE_PAGA: TStringField
      FieldName = 'FORMA_DE_PAGA'
      Size = 50
    end
    object Cli_Rel_ComEspeciePEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 18
    end
    object Cli_Rel_ComEspecieESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object Cli_Rel_ComEspecieVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Cli_Rel_ComEspecieID_DPTO: TIntegerField
      FieldName = 'ID_DPTO'
    end
    object Cli_Rel_ComEspecieCOMISSAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMISSAO'
      Calculated = True
    end
  end
  object Query_Soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select sum(rel_com_paga.valor), rel_com_paga.especie from rel_co' +
        'm_paga'
      
        ' where ((emissao >=:i) and (emissao <=:f)) AND ID_DPTO =:DP and ' +
        'ID_FUNCIONARIO =:func'
      ' group by rel_com_paga.especie')
    Left = 512
    Top = 56
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
        Name = 'DP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FUNC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Query_SomaSUM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Query_SomaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 50
    end
  end
end
