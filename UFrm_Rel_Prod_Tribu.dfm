object Frm_Rel_Prod_Tribu: TFrm_Rel_Prod_Tribu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'RELAT'#211'RIO DE ESTOQUE AGRUPADO POR TRIBUTA'#199#195'O'
  ClientHeight = 269
  ClientWidth = 379
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
    Left = 40
    Top = 72
    Width = 59
    Height = 13
    Caption = 'CATEGORIA'
  end
  object Label2: TLabel
    Left = 40
    Top = 98
    Width = 36
    Height = 13
    Caption = 'MARCA'
  end
  object Label3: TLabel
    Left = 40
    Top = 129
    Width = 81
    Height = 13
    Caption = 'DEPARTAMENTO'
  end
  object Label4: TLabel
    Left = 40
    Top = 35
    Width = 65
    Height = 13
    Caption = 'TRIBUTA'#199#195'O'
  end
  object RzComboBox1: TRzComboBox
    Left = 132
    Top = 64
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 1
  end
  object RzComboBox2: TRzComboBox
    Left = 132
    Top = 95
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 2
  end
  object RzComboBox3: TRzComboBox
    Left = 132
    Top = 126
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 3
  end
  object Button1: TButton
    Left = 216
    Top = 184
    Width = 133
    Height = 33
    Caption = 'Visualizar / Imprimir'
    TabOrder = 4
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 168
    Width = 97
    Height = 17
    Caption = 'Estoque Real'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 64
    Top = 191
    Width = 97
    Height = 17
    Caption = 'Estoque Fiscal'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object RLReport1: TRLReport
    Left = 24
    Top = 279
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand3: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 24
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 668
        Top = 0
        Width = 48
        Height = 13
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 39
      Top = 63
      Width = 716
      Height = 52
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel6: TRLLabel
        Left = 0
        Top = 6
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
      object RLLabel7: TRLLabel
        Left = 1
        Top = 24
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
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 204
      Width = 716
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo2: TRLSystemInfo
        Left = 323
        Top = 1
        Width = 69
        Height = 13
        Align = faCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 39
      Top = 115
      Width = 716
      Height = 89
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataFields = 'TRIBUTACAO'
      BeforePrint = RLGroup1BeforePrint
      object RLBand2: TRLBand
        Left = 1
        Top = 47
        Width = 714
        Height = 17
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'CODIGO'
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
          Left = 40
          Top = -1
          Width = 260
          Height = 15
          AutoSize = False
          DataField = 'DESCRICAO'
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
        object RLDBText4: TRLDBText
          Left = 480
          Top = 0
          Width = 105
          Height = 15
          AutoSize = False
          DataField = 'CATEGORIA'
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
        object RLDBText5: TRLDBText
          Left = 585
          Top = 0
          Width = 129
          Height = 15
          AutoSize = False
          DataField = 'DEPARTAMENTO'
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
        object RLDBText3: TRLDBText
          Left = 360
          Top = -1
          Width = 60
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'ESTOQUE_FISCAL'
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
        object RLDBText6: TRLDBText
          Left = 300
          Top = -1
          Width = 60
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'ESTOQUE_REAL'
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
        object RLDBText8: TRLDBText
          Left = 420
          Top = -1
          Width = 60
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'ESTOQUE'
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
      end
      object RLBand1: TRLBand
        Left = 1
        Top = 0
        Width = 714
        Height = 47
        BandType = btColumnHeader
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 0
          Top = 26
          Width = 40
          Height = 21
          Align = faLeft
          Alignment = taCenter
          Caption = 'C'#211'DIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 40
          Top = 26
          Width = 260
          Height = 21
          Align = faLeft
          AutoSize = False
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 360
          Top = 26
          Width = 60
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'EST_FISCAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 300
          Top = 26
          Width = 60
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'EST_REAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 480
          Top = 26
          Width = 105
          Height = 21
          Align = faLeft
          AutoSize = False
          Caption = 'CATEGORIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 585
          Top = 26
          Width = 129
          Height = 21
          Align = faLeft
          Caption = 'DEPARTAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 0
          Top = 0
          Width = 714
          Height = 26
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          DataField = 'TRIBUTACAO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 420
          Top = 26
          Width = 60
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'ESTOQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 1
        Top = 64
        Width = 714
        Height = 22
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel8: TRLLabel
          Left = 310
          Top = 5
          Width = 40
          Height = 13
          Alignment = taCenter
          Caption = 'C'#211'DIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLLabel9
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 370
          Top = 5
          Width = 40
          Height = 13
          Alignment = taCenter
          Caption = 'C'#211'DIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLLabel3
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 430
          Top = 5
          Width = 40
          Height = 13
          Alignment = taCenter
          Caption = 'C'#211'DIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLLabel4
          ParentFont = False
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 235
          Top = 3
          Width = 58
          Height = 15
          Alignment = taCenter
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RzComboBox4: TRzComboBox
    Left = 132
    Top = 32
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 0
    Text = '<TODOS>'
    Items.Strings = (
      '<TODOS>'
      '000 - TRIBUTADA INTEGRALMENTE'
      '010 - TRIBUTADA C/ ICMS ST'
      '020 - REDU'#199#195'O DE BASE DE CALCULO'
      '030 - ISENTA OU N'#195'O TRIBUTADA C/ ICMS ST'
      '040 - ISENTA OU N'#195'O TRIBUTADA'
      '041 - N'#195'O TRIBUTADA'
      '050 - SUSPEN'#199#195'O'
      '051 - DIFERIMENTO'
      '060 - ICMS COBRADO ANTERIORMENTE'
      '070 - REDU'#199#195'O DE BASE DE CALCULO C/ ICMS ST'
      '090 - OUTROS')
    ItemIndex = 0
    Values.Strings = (
      ' '
      ' and ST = 0'
      ' and ST = 10'
      ' and ST = 20'
      ' and ST = 30'
      ' and ST = 40'
      ' and ST = 41'
      ' and ST = 50'
      ' and ST = 51'
      ' and ST = 60'
      ' and ST = 70'
      ' and ST = 90')
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select first 100 * from REL_PRODUTO_AGRUPADO_TRIBUTACAO'
      'ORDER BY TRIBUTACAO, DESCRICAO, DEPARTAMENTO, CATEGORIA')
    Left = 728
    Top = 48
    object FDQuery1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object FDQuery1REF: TStringField
      FieldName = 'REF'
      Origin = 'REF'
      Size = 15
    end
    object FDQuery1NCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object FDQuery1ESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object FDQuery1TRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      Origin = 'TRIBUTACAO'
      Size = 48
    end
    object FDQuery1ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object FDQuery1MARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object FDQuery1CATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 50
    end
    object FDQuery1ID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object FDQuery1DEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      Size = 50
    end
    object FDQuery1ESTOQUE_FISCAL: TBCDField
      FieldName = 'ESTOQUE_FISCAL'
      Origin = 'ESTOQUE_FISCAL'
      Precision = 18
      Size = 2
    end
    object FDQuery1ESTOQUE_REAL: TBCDField
      FieldName = 'ESTOQUE_REAL'
      Origin = 'ESTOQUE_REAL'
      Precision = 18
      Size = 2
    end
    object FDQuery1TIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object FDQuery1ST: TSmallintField
      FieldName = 'ST'
      Origin = 'ST'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 736
    Top = 104
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    Left = 848
    Top = 56
  end
end
