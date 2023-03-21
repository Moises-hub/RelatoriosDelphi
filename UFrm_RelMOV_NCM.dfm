object Frm_RelMOV_NCM: TFrm_RelMOV_NCM
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 189
  ClientWidth = 527
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 189
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    ExplicitWidth = 518
    ExplicitHeight = 172
    object RzLabel5: TRzLabel
      Left = 258
      Top = 59
      Width = 85
      Height = 26
      Alignment = taRightJustify
      Caption = 'Data de venda Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel4: TRzLabel
      Left = 33
      Top = 59
      Width = 85
      Height = 26
      Alignment = taRightJustify
      Caption = 'Data de Venda Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel1: TRzLabel
      Left = 93
      Top = 115
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'NCM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 250
      Top = 20
      Width = 274
      Height = 22
      Margins.Left = 250
      Margins.Top = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'MOVIMENTA'#199#195'O DE VENDAS POR  NCM   '
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitLeft = 288
      ExplicitWidth = 244
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 357
      Top = 66
      Width = 121
      Height = 21
      EditType = etDate
      MaxLength = 10
      TabOrder = 1
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 123
      Top = 66
      Width = 121
      Height = 21
      EditType = etDate
      MaxLength = 10
      TabOrder = 0
    end
    object Button1: TButton
      Left = 367
      Top = 105
      Width = 111
      Height = 36
      Caption = 'Visualizar / Imprimir'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 123
      Top = 112
      Width = 182
      Height = 21
      MaxLength = 20
      TabOrder = 2
    end
    object RLReport1: TRLReport
      Left = 0
      Top = 194
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.FixedBottom = True
      DataSource = DS_Query_MOVNCM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand1: TRLBand
        Left = 40
        Top = 64
        Width = 714
        Height = 43
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel4: TRLLabel
          Left = 0
          Top = 0
          Width = 714
          Height = 19
          Align = faClientTop
          Alignment = taCenter
          Caption = 'NCM'#39's MOVIMENTADOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 283
          Top = 18
          Width = 144
          Height = 13
          Alignment = taCenter
          Anchors = [fkLeft, fkRight]
          Caption = 'RELAT'#211'RIO DE VENDAS DE GRADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 40
        Top = 180
        Width = 714
        Height = 16
        BandType = btFooter
        object RLSystemInfo2: TRLSystemInfo
          Left = 0
          Top = 0
          Width = 714
          Height = 16
          Align = faClient
          Alignment = taCenter
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
      object RLBand6: TRLBand
        Left = 40
        Top = 40
        Width = 714
        Height = 24
        BandType = btHeader
        object RLSystemInfo1: TRLSystemInfo
          Left = 0
          Top = 0
          Width = 714
          Height = 16
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Info = itFullDate
          ParentFont = False
          Text = 'relat'#243'rio emitido '
        end
      end
      object RLBand2: TRLBand
        Left = 40
        Top = 107
        Width = 714
        Height = 14
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'NCM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 65
          Top = 0
          Width = 379
          Height = 13
          Align = faClient
          AutoSize = False
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 444
          Top = 0
          Width = 72
          Height = 13
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'QTD TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 615
          Top = 0
          Width = 99
          Height = 13
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR LIQUIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 516
          Top = 0
          Width = 99
          Height = 13
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR BRUTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 40
        Top = 121
        Width = 714
        Height = 19
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 65
          Height = 19
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'NCM'
          DataSource = DS_Query_MOVNCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 65
          Top = 0
          Width = 379
          Height = 19
          Align = faLeft
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DS_Query_MOVNCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 444
          Top = 0
          Width = 72
          Height = 19
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'Q_VENDIDA'
          DataSource = DS_Query_MOVNCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 615
          Top = 0
          Width = 99
          Height = 19
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'V_LIQUIDO'
          DataSource = DS_Query_MOVNCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 516
          Top = 0
          Width = 99
          Height = 19
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'V_VENDIDO'
          DataSource = DS_Query_MOVNCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 40
        Top = 140
        Width = 714
        Height = 40
        BandType = btSummary
        object RLDBText5: TRLDBText
          AlignWithMargins = True
          Left = 247
          Top = 0
          Width = 88
          Height = 40
          Margins.Right = 20
          Align = faRight
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'QNTVENDIDA'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = '#     '
        end
        object RLDBText6: TRLDBText
          AlignWithMargins = True
          Left = 438
          Top = 0
          Width = 84
          Height = 40
          Align = faRight
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'TOTALVENDIDO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel7: TRLLabel
          Left = 335
          Top = 0
          Width = 103
          Height = 40
          Align = faRight
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Valor total Bruto: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 92
          Top = 0
          Width = 155
          Height = 40
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Quantidade Total Vendida: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 522
          Top = 0
          Width = 114
          Height = 40
          Align = faRight
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Valor total Liquido: '
          Color = clCream
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          AlignWithMargins = True
          Left = 636
          Top = 0
          Width = 78
          Height = 40
          Align = faRight
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = clCream
          DataField = 'TOTALLIQUIDO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
    end
    object Memo1: TMemo
      Left = 768
      Top = 356
      Width = 481
      Height = 158
      Lines.Strings = (
        'Memo1')
      TabOrder = 5
    end
  end
  object Query_MOVNCM: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select MOV_NCM.ncm,'
      '       MOV_NCM.descricao,'
      
        '       cast(SUM(MOV_NCM.q_vendida)as DECIMAL(15,2)) AS Q_vendida' +
        ','
      '       cast(sum(MOV_NCM.v_vendido) as currency) as v_vendido,'
      '       cast(sum(MOV_NCM.v_liquido) as currency) as V_LIQUIDO'
      '        from MOV_NCM'
      
        'where cast(MOV_NCM.data as date) >=:i and cast(MOV_NCM.data as d' +
        'ate) <=:j'
      'group by  MOV_NCM.ncm, MOV_NCM.descricao')
    Left = 600
    Top = 64
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'J'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_MOVNCMNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 12
    end
    object Query_MOVNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object Query_MOVNCMQ_VENDIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Q_VENDIDA'
      Origin = 'Q_VENDIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Query_MOVNCMV_VENDIDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'V_VENDIDO'
      Origin = 'V_VENDIDO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object Query_MOVNCMV_LIQUIDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'V_LIQUIDO'
      Origin = 'V_LIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object DS_Query_MOVNCM: TDataSource
    DataSet = Query_MOVNCM
    Left = 536
    Top = 72
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 320
    Top = 40
  end
  object Query_Soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(cast(q_vendida as DECIMAL(15,2)))as qntvendida,'
      
        'sum(v_vendido)as totalvendido,sum(V_LIQUIDO)as totalLIQUIDO  fro' +
        'm mov_ncm')
    Left = 696
    Top = 80
    object Query_SomaTOTALVENDIDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALVENDIDO'
      Origin = 'TOTALVENDIDO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_SomaTOTALLIQUIDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALLIQUIDO'
      Origin = 'TOTALLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object Query_SomaQNTVENDIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QNTVENDIDA'
      Origin = 'QNTVENDIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_Soma
    Left = 608
    Top = 112
  end
end
