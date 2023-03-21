object Frm_RelReal_Fiscal: TFrm_RelReal_Fiscal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Real/Fiscal'
  ClientHeight = 160
  ClientWidth = 386
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
    Left = 47
    Top = 22
    Width = 41
    Height = 13
    Caption = 'MARCA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 23
    Top = 59
    Width = 65
    Height = 13
    Caption = 'CATEGORIA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 213
    Top = 83
    Width = 109
    Height = 38
    Caption = 'Visualizar / Imprimir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = 56
    Top = 167
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
    object RLBand1: TRLBand
      Left = 39
      Top = 115
      Width = 716
      Height = 21
      BandType = btColumnHeader
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 6
        Top = 4
        Width = 47
        Height = 15
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 180
        Top = 3
        Width = 294
        Height = 15
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 474
        Top = 3
        Width = 84
        Height = 15
        Alignment = taCenter
        Caption = 'ESTOQUE REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 560
        Top = 3
        Width = 92
        Height = 15
        Alignment = taCenter
        Caption = 'ESTOQUE FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 66
        Top = 4
        Width = 110
        Height = 15
        Caption = 'C'#211'DIGO DE BARRAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 652
        Top = 3
        Width = 64
        Height = 15
        Alignment = taCenter
        Caption = 'DIFEREN'#199'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 136
      Width = 716
      Height = 17
      Color = clMenuBar
      ParentColor = False
      Transparent = False
      BeforePrint = RLBand2BeforePrint
      object RLDBText1: TRLDBText
        Left = -6
        Top = 0
        Width = 72
        Height = 14
        Alignment = taCenter
        DataField = 'ID_PRODUTO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel1
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 180
        Top = -1
        Width = 294
        Height = 15
        AutoSize = False
        DataField = 'UPPER'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel2
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 490
        Top = -1
        Width = 52
        Height = 14
        Alignment = taCenter
        DataField = 'ESTOQUE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel3
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 577
        Top = 0
        Width = 58
        Height = 14
        Alignment = taCenter
        DataField = 'ESTOQUEF'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel4
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 78
        Top = 0
        Width = 86
        Height = 14
        Alignment = taCenter
        DataField = 'CODIGO_BARRA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 670
        Top = -1
        Width = 34
        Height = 14
        Alignment = taCenter
        DataField = 'SOMA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
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
        Width = 250
        Height = 19
        Caption = 'RELAT'#211'RIO PRODUTOS REAL/FISCAL'
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
      Top = 153
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
  end
  object RzComboBox1: TRzComboBox
    Left = 94
    Top = 19
    Width = 228
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 2
  end
  object RzComboBox2: TRzComboBox
    Left = 94
    Top = 56
    Width = 228
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 536
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select  produtos.id_produto,'
      '       produtos.codigo_barra,'
      '       upper(produtos.descricao),'
      '       produtos.estoque,'
      '       produtos.estoquef,'
      '       (case'
      '             when estoque = 0 then estoquef'
      '             when estoquef = 0 then estoque'
      '             when estoque < 0 then estoque + estoquef'
      '             when estoquef < 0 then estoquef + estoque'
      '             when estoque > estoquef then estoque - estoquef'
      '             when estoque < estoquef then  estoquef - estoque'
      '             else'
      '             estoque'
      '           end)as soma'
      '       from produtos'
      '       where produtos.tipo <> 4')
    Left = 528
    Top = 96
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1CODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Origin = 'CODIGO_BARRA'
      Size = 40
    end
    object FDQuery1ESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object FDQuery1ESTOQUEF: TSingleField
      FieldName = 'ESTOQUEF'
      Origin = 'ESTOQUEF'
    end
    object FDQuery1SOMA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SOMA'
      Origin = 'SOMA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1UPPER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UPPER'
      Origin = '"UPPER"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
end
