object FrmNF_Produtor: TFrmNF_Produtor
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 80
  ClientWidth = 450
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
    Width = 450
    Height = 80
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clSkyBlue
    TabOrder = 0
    ExplicitWidth = 435
    ExplicitHeight = 72
    object Label1: TLabel
      Left = 24
      Top = 10
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 192
      Top = 9
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 16
      Top = 28
      Width = 161
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 192
      Top = 28
      Width = 145
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object Button1: TButton
      Left = 352
      Top = 16
      Width = 65
      Height = 43
      Caption = 'Filtrar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object RLReport1: TRLReport
    Left = 85
    Top = 93
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 79
      Width = 718
      Height = 20
      BandType = btColumnHeader
      Color = clBtnFace
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 4
        Top = 2
        Width = 52
        Height = 14
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText2
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 247
        Top = 2
        Width = 47
        Height = 14
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText4
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 420
        Top = 2
        Width = 127
        Height = 14
        Caption = 'VALOR DOS PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 585
        Top = 2
        Width = 75
        Height = 14
        Caption = 'VALOR DA NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 161
        Top = 2
        Width = 30
        Height = 14
        Caption = 'N'#186' NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText7
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 82
        Top = 2
        Width = 33
        Height = 14
        Caption = 'HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText3
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 99
      Width = 718
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand2BeforePrint
      object RLDBText2: TRLDBText
        Left = 4
        Top = 1
        Width = 77
        Height = 14
        AutoSize = False
        DataField = 'EMISS'#195'O'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 247
        Top = 1
        Width = 171
        Height = 14
        AutoSize = False
        DataField = 'CLIENTE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 161
        Top = 1
        Width = 80
        Height = 14
        AutoSize = False
        DataField = 'N'#186' NF'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 82
        Top = 1
        Width = 63
        Height = 14
        AutoSize = False
        DataField = 'HORA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 420
        Top = 0
        Width = 55
        Height = 16
        Holder = RLLabel4
      end
      object RLLabel9: TRLLabel
        Left = 585
        Top = 0
        Width = 55
        Height = 16
        Holder = RLLabel6
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 41
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      object RLLabel8: TRLLabel
        Left = 14
        Top = 19
        Width = 186
        Height = 16
        Caption = 'RELAT'#211'RIO NF DE PRODUTOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 578
        Top = 2
        Width = 140
        Height = 16
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Relat'#243'rio Emitido '
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 580
        Top = 1
        Width = 138
        Height = 15
        Align = faRight
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'P'#225'gina '
      end
    end
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 304
    Top = 280
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 424
    Top = 272
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = ' '
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 384
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 392
    Top = 344
  end
end
