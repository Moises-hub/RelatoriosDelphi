object Frm_Rel_LOTE: TFrm_Rel_LOTE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 344
  ClientWidth = 551
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
    Width = 551
    Height = 344
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clCream
    GradientColorStop = clWhite
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 538
    ExplicitHeight = 392
    object RzLabel1: TRzLabel
      Left = 86
      Top = 43
      Width = 55
      Height = 13
      Caption = 'Categoria'
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
      Left = 104
      Top = 91
      Width = 35
      Height = 13
      Caption = 'Marca'
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
      Top = 138
      Width = 83
      Height = 13
      Caption = 'Departamento'
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
      Left = 44
      Top = 245
      Width = 104
      Height = 13
      Caption = 'Vencimento Inicial'
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
      Left = 283
      Top = 245
      Width = 96
      Height = 13
      Caption = 'Vencimento Final'
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
      Left = 144
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'TODAS AS CATEGORIAS')
      Values.Strings = (
        '0')
    end
    object RzComboBox2: TRzComboBox
      Left = 144
      Top = 88
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'TODAS AS MARCAS')
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 117
      Top = 177
      Width = 194
      Height = 42
      Caption = 'Mostrar Estoque'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 3
      GradientColorStyle = gcsCustom
      ItemIndex = 2
      Items.Strings = (
        'Negativo'
        'Positivo'
        'Ambos')
      TabOrder = 2
      Transparent = True
    end
    object RzComboBox3: TRzComboBox
      Left = 144
      Top = 135
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
    object Button1: TButton
      Left = 390
      Top = 276
      Width = 122
      Height = 36
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object RLReport1: TRLReport
      Left = 588
      Top = 76
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      DataSource = DS_CD_Lotes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      BeforePrint = RLReport1BeforePrint
      object RLGroup1: TRLGroup
        Left = 39
        Top = 73
        Width = 716
        Height = 71
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataFields = 'ID_PRODUTO'
        object RLBand2: TRLBand
          Left = 0
          Top = 1
          Width = 716
          Height = 16
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clCream
          ParentColor = False
          Transparent = False
          BeforePrint = RLBand2BeforePrint
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 716
            Height = 13
            Align = faTop
            DataField = 'PRODUTO'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 38
          Width = 716
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand4BeforePrint
          object RLDBText2: TRLDBText
            Left = 118
            Top = 2
            Width = 91
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'LOTE'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel1
            ParentFont = False
            Text = ''
          end
          object RLDBText3: TRLDBText
            Left = 209
            Top = 1
            Width = 110
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'PENEIRA'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel2
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 397
            Top = 0
            Width = 108
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PRECO_CUSTO'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel4
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 505
            Top = 1
            Width = 119
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PRECO_VENDA'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel5
            ParentFont = False
            Text = ''
          end
          object RLLabel9: TRLLabel
            Left = 319
            Top = 0
            Width = 78
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel3
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            AlignWithMargins = True
            Left = 624
            Top = 2
            Width = 92
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VENCIMENTO'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel10
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 115
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'FABRICACAO'
            DataSource = DS_CD_Lotes
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel11
            ParentFont = False
            Text = ''
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 17
          Width = 716
          Height = 21
          BandType = btHeader
          object RLLabel1: TRLLabel
            Left = 118
            Top = 0
            Width = 91
            Height = 21
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'LOTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 209
            Top = 0
            Width = 110
            Height = 21
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'PENEIRA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 319
            Top = 0
            Width = 78
            Height = 21
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'ESTOQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 397
            Top = 0
            Width = 108
            Height = 21
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'P. C.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            AlignWithMargins = True
            Left = 505
            Top = 0
            Width = 119
            Height = 21
            Margins.Right = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'P. V.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            AlignWithMargins = True
            Left = 624
            Top = 0
            Width = 92
            Height = 21
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VENC.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 115
            Height = 21
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'FABR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 54
          Width = 716
          Height = 14
          BandType = btSummary
          Color = clCream
          ParentColor = False
          Transparent = False
          object RLLabel7: TRLLabel
            Left = 0
            Top = 0
            Width = 47
            Height = 14
            Align = faLeftTop
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
      end
      object RLBand1: TRLBand
        Left = 39
        Top = 56
        Width = 716
        Height = 17
        BandType = btTitle
        object RLLabel12: TRLLabel
          Left = 0
          Top = 2
          Width = 716
          Height = 15
          Align = faBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 39
        Top = 39
        Width = 716
        Height = 17
        BandType = btTitle
        object RLSystemInfo1: TRLSystemInfo
          Left = 643
          Top = 0
          Width = 57
          Height = 15
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Info = itFullDate
          ParentFont = False
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 0
          Top = 0
          Width = 220
          Height = 17
          Align = faLeft
          Alignment = taCenter
          Caption = 'RELAT'#211'RIO ESTOQUE POR LOTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object CheckBox1: TCheckBox
      Left = 315
      Top = 42
      Width = 175
      Height = 17
      Caption = 'MOSTRAR PRE'#199'O DE CUSTO'
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 317
      Top = 76
      Width = 164
      Height = 17
      Caption = 'MOSTRAR PRE'#199'O DE VENDA'
      TabOrder = 7
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 154
      Top = 239
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 8
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 383
      Top = 239
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 9
    end
    object RzRadioGroup2: TRzRadioGroup
      Left = 317
      Top = 177
      Width = 185
      Height = 42
      Caption = 'LOTE STATUS'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 3
      GradientColorStyle = gcsCustom
      GroupStyle = gsStandard
      ItemIndex = 2
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Ambos')
      TabOrder = 10
      Transparent = True
    end
    object CheckBox3: TCheckBox
      Left = 317
      Top = 107
      Width = 187
      Height = 17
      Caption = 'MOSTRAR DATA DE VENCIMENTO'
      TabOrder = 11
    end
    object CheckBox4: TCheckBox
      Left = 317
      Top = 139
      Width = 187
      Height = 17
      Caption = 'MOSTRAR DATA DE FABRICACAO'
      TabOrder = 12
    end
  end
  object Lotes: TSQLDataSet
    CommandText = 'select * from Rel_Lote'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 792
    Top = 176
  end
  object Prov_Lotes: TDataSetProvider
    DataSet = Lotes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 792
    Top = 224
  end
  object CD_Lotes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Lotes'
    Left = 792
    Top = 280
    object CD_LotesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object CD_LotesPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object CD_LotesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 18
    end
    object CD_LotesPENEIRA: TStringField
      FieldName = 'PENEIRA'
      Size = 18
    end
    object CD_LotesID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
    end
    object CD_LotesMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object CD_LotesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CD_LotesESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
      EditFormat = ',0.####'
    end
    object CD_LotesPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 18
      Size = 4
    end
    object CD_LotesPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 4
    end
    object CD_LotesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object CD_LotesSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object CD_LotesFABRICACAO: TDateField
      FieldName = 'FABRICACAO'
    end
  end
  object DS_CD_Lotes: TDataSource
    DataSet = CD_Lotes
    Left = 792
    Top = 336
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'SELECT SUM(ESTOQUE) FROM produto_lotes'#13#10'WHERE ID_PRODUTO =:E and' +
      ' (produto_lotes.status =:s)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'E'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 's'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection1
    Left = 718
    Top = 158
  end
end
