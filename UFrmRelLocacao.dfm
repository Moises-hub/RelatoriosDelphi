object FrmRelLocacao: TFrmRelLocacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Loca'#231#227'o'
  ClientHeight = 100
  ClientWidth = 478
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
    Width = 478
    Height = 100
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    ExplicitWidth = 508
    ExplicitHeight = 121
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 47
      Height = 13
      Caption = 'Filtrar por'
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 40
      Top = 36
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzComboBox1: TRzComboBox
      Left = 77
      Top = 9
      Width = 121
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Text = 'Emiss'#227'o'
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento')
      ItemIndex = 0
    end
    object RzComboBox2: TRzComboBox
      Left = 184
      Top = 67
      Width = 121
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Text = 'Em Aberto'
      Items.Strings = (
        'Em Aberto'
        'Finalizado'
        'Cancelado')
      ItemIndex = 0
      Values.Strings = (
        '0'
        '1'
        '9')
    end
    object RzButton1: TRzButton
      Left = 328
      Top = 30
      Width = 121
      Height = 51
      Caption = 'Visualizar / imprimir'
      TabOrder = 3
      OnClick = RzButton1Click
    end
    object RLReport1: TRLReport
      Left = 77
      Top = 138
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
          Top = 5
          Width = 64
          Height = 14
          Caption = 'Data e Hora'
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
          Left = 263
          Top = 5
          Width = 42
          Height = 14
          Caption = 'Cliente'
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
          Left = 451
          Top = 5
          Width = 47
          Height = 14
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText5
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 632
          Top = 5
          Width = 38
          Height = 14
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText6
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 204
          Top = 5
          Width = 41
          Height = 14
          Caption = 'Pedido'
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
          Left = 120
          Top = 5
          Width = 70
          Height = 14
          Caption = 'Vencimento'
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
        object RLDBText2: TRLDBText
          Left = 4
          Top = 1
          Width = 113
          Height = 14
          AutoSize = False
          DataField = 'DATA_HORA'
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
          Left = 263
          Top = 1
          Width = 182
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 451
          Top = 1
          Width = 175
          Height = 13
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 632
          Top = 1
          Width = 83
          Height = 14
          AutoSize = False
          DataField = 'CASE'
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
          Left = 204
          Top = 1
          Width = 53
          Height = 14
          AutoSize = False
          DataField = 'id_pedido'
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
          Left = 120
          Top = 1
          Width = 76
          Height = 14
          AutoSize = False
          DataField = 'DATA_VENCIMENTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Text = ''
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
          Left = 3
          Top = 5
          Width = 161
          Height = 16
          Caption = 'RELAT'#211'RIO DE LOCA'#199#195'O'
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
      object RLBand4: TRLBand
        Left = 38
        Top = 137
        Width = 718
        Height = 27
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = clBtnFace
        ParentColor = False
        Transparent = False
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
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 184
    Top = 36
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 232
    Top = 344
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        ParamType = ptUnknown
      end>
    SQLConnection = DM.SQLConnection1
    Left = 72
    Top = 184
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 216
    Top = 256
  end
end
