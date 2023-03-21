object Frm_VMarca: TFrm_VMarca
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 112
  ClientWidth = 432
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
    Left = 32
    Top = 21
    Width = 68
    Height = 13
    Caption = 'DATA INICIAL'
  end
  object Label2: TLabel
    Left = 192
    Top = 21
    Width = 59
    Height = 13
    Caption = 'DATA FINAL'
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object Button1: TButton
    Left = 319
    Top = 38
    Width = 89
    Height = 25
    Caption = 'Filtra / Imprimir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = 32
    Top = 134
    Width = 794
    Height = 1123
    DataSource = DataSource1
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
      object RLLabel11: TRLLabel
        Left = 0
        Top = 1
        Width = 718
        Height = 18
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO'
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
    object RLBand2: TRLBand
      Left = 38
      Top = 95
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
        Left = 401
        Top = 1
        Width = 101
        Height = 16
        AutoSize = False
        Caption = 'MARCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 591
        Top = 1
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Holder = RLDBText3
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 511
        Top = 1
        Width = 74
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'QNT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Holder = RLDBText2
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 1
        Width = 82
        Height = 16
        AutoSize = False
        Caption = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 87
        Top = 1
        Width = 79
        Height = 16
        AutoSize = False
        Caption = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 116
      Width = 718
      Height = 21
      BeforePrint = RLDetailGrid1BeforePrint
      object RLDBText3: TRLDBText
        Left = 591
        Top = 2
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 401
        Top = 2
        Width = 101
        Height = 16
        AutoSize = False
        DataField = 'MARCA'
        DataSource = DataSource1
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
        Left = 511
        Top = 2
        Width = 74
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'QNT'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 3
        Top = 2
        Width = 82
        Height = 16
        AutoSize = False
        DataField = 'DATA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 87
        Top = 2
        Width = 302
        Height = 16
        AutoSize = False
        DataField = 'PRODUTO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 28
      GreenBarColor = clWhite
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      object RLLabel4: TRLLabel
        Left = 448
        Top = 4
        Width = 54
        Height = 18
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 511
        Top = 6
        Width = 74
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Holder = RLLabel8
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 591
        Top = 6
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Holder = RLLabel3
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 165
      Width = 718
      Height = 16
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 318
        Top = 1
        Width = 82
        Height = 14
        Align = faCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
  end
  object CheckBox1: TCheckBox
    Left = 200
    Top = 69
    Width = 113
    Height = 17
    Caption = 'Somente Produtos'
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = Query_FIltro
    Left = 584
    Top = 32
  end
  object Query_FIltro: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select sum(QNT)as qnt, sum(VALOR)as valor,data, MARCA, produto f' +
        'rom rel_vmarca'
      'where data >=:g and data<=:h'
      'group by data,  marca, produto')
    Left = 496
    Top = 32
    ParamData = <
      item
        Name = 'G'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'H'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_FIltroQNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QNT'
      Origin = 'QNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_FIltroVALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_FIltroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Query_FIltroMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object Query_FIltroPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
  end
  object query_Soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select  SUM(rel_vmarca.qnt) as qnt, SUM(rel_vmarca.valor)as valo' +
        'r from REL_VMARCA'
      'WHERE DATA>=:P AND DATA <=:C')
    Left = 688
    Top = 32
    ParamData = <
      item
        Name = 'P'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'C'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
