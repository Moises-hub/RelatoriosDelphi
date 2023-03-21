object Frm_Relatorio_Credito: TFrm_Relatorio_Credito
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Relatorio Credito'
  ClientHeight = 208
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox1: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 382
    Height = 206
    Align = alTop
    Caption = 'Per'#237'odo de Processamento'
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 22
      Top = 39
      Width = 12
      Height = 13
      Caption = 'de'
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel2: TRzLabel
      Left = 198
      Top = 39
      Width = 16
      Height = 13
      Caption = 'at'#233
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel4: TRzLabel
      Left = 18
      Top = 90
      Width = 33
      Height = 13
      Caption = 'Cliente'
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel3: TRzLabel
      Left = 8
      Top = 124
      Width = 46
      Height = 13
      Caption = 'Vendedor'
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 40
      Top = 39
      Width = 140
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 216
      Top = 39
      Width = 140
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox2: TRzComboBox
      Left = 67
      Top = 87
      Width = 289
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
    end
    object RzComboBox1: TRzComboBox
      Left = 67
      Top = 121
      Width = 289
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
    end
    object Button1: TButton
      Left = 284
      Top = 158
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object RLReport1: TRLReport
    Left = 91
    Top = 320
    Width = 794
    Height = 1123
    DataSource = Ds_Query
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 16
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 661
        Top = 0
        Width = 57
        Height = 16
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 54
      Width = 718
      Height = 59
      BandType = btHeader
      object RLLabel6: TRLLabel
        Left = 3
        Top = 6
        Width = 159
        Height = 19
        Caption = 'VENDAS COM CR'#201'DITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 7
        Top = 27
        Width = 137
        Height = 15
        Caption = 'COMPRAS COM CR'#201'DITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 113
      Width = 718
      Height = 105
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataFields = 'VENDEDOR'
      BeforePrint = RLGroup1BeforePrint
      object RLBand3: TRLBand
        Left = 1
        Top = 1
        Width = 716
        Height = 65
        BandType = btColumnHeader
        object RLDBText1: TRLDBText
          Left = 68
          Top = 4
          Width = 617
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = 16119285
          DataField = 'VENDEDOR'
          DataSource = Ds_Query
          ParentColor = False
          Text = ''
          Transparent = False
        end
        object RLLabel1: TRLLabel
          Left = 3
          Top = 5
          Width = 62
          Height = 15
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Vendedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 6
          Top = 49
          Width = 33
          Height = 15
          Caption = 'DATA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 79
          Top = 49
          Width = 44
          Height = 15
          Caption = 'PEDIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 176
          Top = 50
          Width = 415
          Height = 15
          AutoSize = False
          Caption = 'CLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 592
          Top = 49
          Width = 125
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 1
        Top = 66
        Width = 716
        Height = 18
        object RLDBText2: TRLDBText
          Left = 6
          Top = 1
          Width = 164
          Height = 16
          DataField = 'DATA_PROCESSAMENTO'
          DataSource = Ds_Query
          Holder = RLLabel2
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 79
          Top = 1
          Width = 53
          Height = 16
          DataField = 'PEDIDO'
          DataSource = Ds_Query
          Holder = RLLabel3
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 176
          Top = 1
          Width = 415
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = Ds_Query
          Holder = RLLabel5
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 592
          Top = 1
          Width = 125
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = Ds_Query
          Holder = RLLabel7
          Text = ''
        end
      end
      object RLBand5: TRLBand
        Left = 1
        Top = 84
        Width = 716
        Height = 20
        BandType = btSummary
        object RLLabel4: TRLLabel
          Left = 652
          Top = 0
          Width = 64
          Height = 20
          Align = faRight
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 218
      Width = 718
      Height = 16
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 638
        Top = 0
        Width = 80
        Height = 16
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
  end
  object Query: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from REL_CREDITO'
      'order by vendedor, data_processamento')
    Left = 960
    Top = 152
    object QueryDATA_PROCESSAMENTO: TDateField
      FieldName = 'DATA_PROCESSAMENTO'
      Origin = 'DATA_PROCESSAMENTO'
    end
    object QueryID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object QueryVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object QueryID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object QueryPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object QueryCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object QueryVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_Query: TDataSource
    DataSet = Query
    Left = 960
    Top = 208
  end
  object Query_soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(valor) from REL_CREDITO'
      'where data_processamento >=:ini and data_processamento <=:fim'
      'and ID_VENDEDOR =:f')
    Left = 968
    Top = 296
    ParamData = <
      item
        Name = 'INI'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end
      item
        Name = 'F'
        ParamType = ptInput
      end>
    object Query_somaSUM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Query_Soma: TDataSource
    DataSet = Query_soma
    Left = 976
    Top = 352
  end
end
