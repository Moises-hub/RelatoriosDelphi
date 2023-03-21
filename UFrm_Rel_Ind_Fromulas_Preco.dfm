object Frm_Rel_Ind_Fromulas_Preco: TFrm_Rel_Ind_Fromulas_Preco
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Formulas Pre'#231'o'
  ClientHeight = 161
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzRadioGroup1: TRzRadioGroup
    Left = 24
    Top = 8
    Width = 201
    Height = 97
    Caption = 'Status'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'Ativo'
      'Inativo'
      'Todos')
    ParentFont = False
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 256
    Top = 15
    Width = 181
    Height = 17
    Caption = 'Pre'#231'o de Formula'#231#227'o'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 256
    Top = 38
    Width = 181
    Height = 17
    Caption = 'Mostrar Pre'#231'o Final'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 2
  end
  object RzBitBtn1: TRzBitBtn
    Left = 244
    Top = 103
    Width = 193
    Height = 37
    Caption = 'Filtrar'
    HotTrack = True
    HotTrackColor = clGray
    TabOrder = 3
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object RLReport1: TRLReport
    Left = 56
    Top = 200
    Width = 794
    Height = 1123
    DataSource = DS_Query_Formulas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 45
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Transparent = False
      object RLLabel7: TRLLabel
        Left = 0
        Top = 15
        Width = 258
        Height = 24
        Caption = 'LISTAGEM PRE'#199'OS F'#211'RMULAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 678
        Top = 1
        Width = 39
        Height = 16
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 618
        Top = 1
        Width = 60
        Height = 16
        Align = faRightTop
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
      Left = 38
      Top = 83
      Width = 718
      Height = 17
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Color = 15790320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 1
        Top = 0
        Width = 205
        Height = 16
        Align = faLeft
        AutoSize = False
        Caption = 'FORMULA'
        Transparent = False
      end
      object RLLabel2: TRLLabel
        AlignWithMargins = True
        Left = 206
        Top = 0
        Width = 216
        Height = 16
        Align = faLeft
        AutoSize = False
        Caption = 'PRODUTO'
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 422
        Top = 0
        Width = 92
        Height = 16
        Align = faLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'FORMULA'#199#195'O'
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 514
        Top = 0
        Width = 104
        Height = 16
        Align = faLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PRE'#199'O FINAL'
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 618
        Top = 0
        Width = 98
        Height = 16
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'STATUS'
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 100
      Width = 718
      Height = 20
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Transparent = False
      BeforePrint = RLBand3BeforePrint
      object RLDBText1: TRLDBText
        Left = 1
        Top = 2
        Width = 205
        Height = 16
        AutoSize = False
        DataField = 'FORMULA'
        DataSource = DS_Query_Formulas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel1
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 206
        Top = 2
        Width = 216
        Height = 16
        AutoSize = False
        DataField = 'PRODUTO'
        DataSource = DS_Query_Formulas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel2
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 422
        Top = 2
        Width = 92
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FORMULACAO'
        DataSource = DS_Query_Formulas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel3
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 514
        Top = 2
        Width = 104
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_FINAL'
        DataSource = DS_Query_Formulas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel4
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 618
        Top = 2
        Width = 98
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 120
      Width = 718
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLSystemInfo2: TRLSystemInfo
        Left = 630
        Top = 0
        Width = 87
        Height = 16
        Align = faRightTop
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
  object Query_Formulas: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from REL_IND_FORMULAS')
    Left = 760
    Top = 24
    object Query_FormulasID_FORMULA: TIntegerField
      FieldName = 'ID_FORMULA'
      Origin = 'ID_FORMULA'
    end
    object Query_FormulasFORMULA: TStringField
      FieldName = 'FORMULA'
      Origin = 'FORMULA'
      Size = 50
    end
    object Query_FormulasPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object Query_FormulasFORMULACAO: TFloatField
      FieldName = 'FORMULACAO'
      Origin = 'FORMULACAO'
      currency = True
    end
    object Query_FormulasTIPO_MARGEM: TStringField
      FieldName = 'TIPO_MARGEM'
      Origin = 'TIPO_MARGEM'
      FixedChar = True
      Size = 2
    end
    object Query_FormulasMARGEM: TSingleField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
    end
    object Query_FormulasPRECO_FINAL: TFloatField
      FieldName = 'PRECO_FINAL'
      Origin = 'PRECO_FINAL'
      currency = True
    end
    object Query_FormulasSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object DS_Query_Formulas: TDataSource
    DataSet = Query_Formulas
    Left = 872
    Top = 24
  end
end
