object Frm_ListProdTributaria: TFrm_ListProdTributaria
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Lista Produtos Tributaria'
  ClientHeight = 283
  ClientWidth = 407
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
    Width = 407
    Height = 283
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    ExplicitWidth = 426
    ExplicitHeight = 271
    object Label1: TLabel
      Left = 36
      Top = 70
      Width = 81
      Height = 15
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 66
      Top = 102
      Width = 52
      Height = 15
      Caption = 'Categoria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 84
      Top = 134
      Width = 33
      Height = 15
      Caption = 'Marca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 100
      Top = 20
      Width = 304
      Height = 22
      Margins.Left = 100
      Margins.Top = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'List. Produtos Tribut'#225'ria'
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
      ExplicitLeft = 248
      ExplicitWidth = 124
    end
    object Label5: TLabel
      Left = 85
      Top = 168
      Width = 34
      Height = 15
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 124
      Top = 68
      Width = 169
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 0
    end
    object RzComboBox2: TRzComboBox
      Left = 124
      Top = 99
      Width = 169
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 1
    end
    object RzComboBox3: TRzComboBox
      Left = 124
      Top = 127
      Width = 169
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
    end
    object Button1: TButton
      Left = 56
      Top = 219
      Width = 129
      Height = 31
      Caption = 'Visualizar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object RLReport1: TRLReport
      Left = 124
      Top = 300
      Width = 1123
      Height = 794
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.FixedBottom = True
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      Visible = False
      object RLBand1: TRLBand
        Left = 40
        Top = 64
        Width = 1043
        Height = 22
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel4: TRLLabel
          Left = 0
          Top = 0
          Width = 1043
          Height = 19
          Align = faClientTop
          Alignment = taCenter
          Caption = 'Listagem de Produtos Tributaria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 40
        Top = 119
        Width = 1043
        Height = 16
        BandType = btFooter
        object RLSystemInfo2: TRLSystemInfo
          Left = 0
          Top = 0
          Width = 1043
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
        Width = 1043
        Height = 24
        BandType = btHeader
        object RLSystemInfo1: TRLSystemInfo
          Left = 0
          Top = 0
          Width = 1043
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
        Top = 86
        Width = 1043
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
          Width = 41
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#211'D'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 109
          Top = 0
          Width = 221
          Height = 13
          Align = faLeft
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 41
          Top = 0
          Width = 68
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Cod. F'#225'brica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 330
          Top = 0
          Width = 26
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'ST'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 478
          Top = 0
          Width = 36
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 409
          Top = 0
          Width = 69
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tributa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 754
          Top = 0
          Width = 70
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
        object RLLabel11: TRLLabel
          Left = 971
          Top = 0
          Width = 68
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Custo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 356
          Top = 0
          Width = 53
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Origem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 514
          Top = 0
          Width = 60
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'CFOP E'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 574
          Top = 0
          Width = 60
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'CFOP I'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 634
          Top = 0
          Width = 60
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'PIS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 694
          Top = 0
          Width = 60
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'COFINS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 824
          Top = 0
          Width = 67
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'REDU'#199#195'O E'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 891
          Top = 0
          Width = 80
          Height = 13
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'REDU'#199#195'O I'
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
        Top = 100
        Width = 1043
        Height = 19
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 41
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID_PRODUTO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 109
          Top = 0
          Width = 221
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 41
          Top = 0
          Width = 68
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'Q_VENDIDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 330
          Top = 0
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ST'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 478
          Top = 0
          Width = 36
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ICMS'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 409
          Top = 1
          Width = 69
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'TRIBUTACAO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 754
          Top = 0
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'CODIGO_NCM'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel10
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 971
          Top = 0
          Width = 68
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_CUSTO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel11
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 356
          Top = 0
          Width = 53
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ORIGEM'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 514
          Top = 0
          Width = 60
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'CFOP_S_E'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel12
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 574
          Top = 1
          Width = 60
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'CFOP_S_I'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel13
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 634
          Top = 0
          Width = 60
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'PIS'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 694
          Top = 0
          Width = 60
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'COFINS'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel14
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 824
          Top = 0
          Width = 67
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'RED_E'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel15
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 891
          Top = 0
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'CFOP_S_I'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel16
          ParentFont = False
          Text = ''
        end
      end
    end
    object Button2: TButton
      Left = 226
      Top = 219
      Width = 129
      Height = 31
      Caption = 'Gerar em Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 125
      Top = 155
      Width = 196
      Height = 42
      Caption = ''
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'ATIVO'
        'INATIVO'
        'TODOS')
      TabOrder = 6
      Transparent = True
      VisualStyle = vsGradient
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT FIRST 10 REL_LIST_PRODUTOS1.id_produto,'
      '                            REL_LIST_PRODUTOS1.codigo_fab,'
      '                            REL_LIST_PRODUTOS1.descricao,'
      '                            REL_LIST_PRODUTOS1.st,'
      '                            REL_LIST_PRODUTOS1.icms,'
      '                            REL_LIST_PRODUTOS1.tributacao,'
      '                            REL_LIST_PRODUTOS1.codigo_fiscal,'
      '                            REL_LIST_PRODUTOS1.codigo_ncm,'
      '                            REL_LIST_PRODUTOS1.preco_custo,'
      '                            REL_LIST_PRODUTOS1.CFOP_S_E,'
      '                            REL_LIST_PRODUTOS1.CFOP_S_I,'
      '                            REL_LIST_PRODUTOS1.ORIGEM,'
      '                            REL_LIST_PRODUTOS1.PIS,'
      '                            REL_LIST_PRODUTOS1.COFINS,'
      '                            REL_LIST_PRODUTOS1.RED_E,'
      '                            REL_LIST_PRODUTOS1.RED_I'
      '                            FROM REL_LIST_PRODUTOS1'
      
        '                     WHERE  REL_LIST_PRODUTOS1.id_produto IS NOT' +
        ' NULL')
    Left = 64
    Top = 176
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDQuery1CODIGO_FAB: TStringField
      FieldName = 'CODIGO_FAB'
      Origin = 'CODIGO_FAB'
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object FDQuery1ST: TStringField
      FieldName = 'ST'
      Origin = 'ST'
      Size = 6
    end
    object FDQuery1ICMS: TSingleField
      FieldName = 'ICMS'
      Origin = 'ICMS'
    end
    object FDQuery1TRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      Origin = 'TRIBUTACAO'
      FixedChar = True
      Size = 14
    end
    object FDQuery1CODIGO_FISCAL: TStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = 'CODIGO_FISCAL'
    end
    object FDQuery1CODIGO_NCM: TStringField
      FieldName = 'CODIGO_NCM'
      Origin = 'CODIGO_NCM'
    end
    object FDQuery1PRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      currency = True
      Precision = 18
    end
    object FDQuery1CFOP_S_E: TStringField
      FieldName = 'CFOP_S_E'
      Origin = 'CFOP_S_E'
      Size = 10
    end
    object FDQuery1CFOP_S_I: TStringField
      FieldName = 'CFOP_S_I'
      Origin = 'CFOP_S_I'
      Size = 10
    end
    object FDQuery1ORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object FDQuery1PIS: TSingleField
      FieldName = 'PIS'
      Origin = 'PIS'
    end
    object FDQuery1COFINS: TSingleField
      FieldName = 'COFINS'
      Origin = 'COFINS'
    end
    object FDQuery1RED_E: TSingleField
      FieldName = 'RED_E'
      Origin = 'RED_E'
    end
    object FDQuery1RED_I: TSingleField
      FieldName = 'RED_I'
      Origin = 'RED_I'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 64
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    Left = 280
    Top = 8
  end
end
