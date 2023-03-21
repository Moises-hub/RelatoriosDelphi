object Frm_Pedidos_formadepaga: TFrm_Pedidos_formadepaga
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Pedidos / Or'#231'amentos parcelas'
  ClientHeight = 258
  ClientWidth = 439
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
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 213
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 223
    Top = 75
    Width = 19
    Height = 13
    Caption = 'at'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 61
    Top = 75
    Width = 15
    Height = 13
    Caption = 'De'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 35
    Top = 123
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzComboBox1: TRzComboBox
    Left = 80
    Top = 37
    Width = 121
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 0
    Text = 'Data de Emiss'#227'o'
    Items.Strings = (
      'Data de Emiss'#227'o'
      'Data de Vencimento')
    ItemIndex = 0
    Values.Strings = (
      
        'and cast(pedidos.data_hora as date) >=:i and cast(pedidos.data_h' +
        'ora as date)  <=:f '
      
        'and pedidos_docs.data_vencimento >=:i and pedidos_docs.data_venc' +
        'imento <=:f ')
  end
  object RzComboBox2: TRzComboBox
    Left = 256
    Top = 37
    Width = 121
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 1
    Text = 'EM ABERTO'
    Items.Strings = (
      'EM ABERTO'
      'A FATURAR'
      'PROCESSADO'
      'BLOQUEADO'
      'EM FATURAMENTO'
      'EM CONDICIONAL / EM SERVI'#199'O'
      'EM PROCESSAMENTO'
      'CANCELADO'
      'TODOS')
    ItemIndex = 0
    Values.Strings = (
      'and pedidos.status = 0'
      'and pedidos.status = 1'
      'and pedidos.status = 2'
      'and pedidos.status = 3'
      'and pedidos.status = 5'
      'and pedidos.status = 6'
      'and pedidos.status = 8'
      'and pedidos.status = 9'
      '   ')
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 80
    Top = 72
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 2
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 256
    Top = 72
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 3
  end
  object RzButton1: TRzButton
    Left = 302
    Top = 196
    Cursor = crHandPoint
    Caption = 'Filtrar'
    HotTrack = True
    TabOrder = 4
    ThemeAware = False
    OnClick = RzButton1Click
  end
  object RLReport1: TRLReport
    Left = 110
    Top = 227
    Width = 1123
    Height = 794
    DataSource = DS_Filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 18
      BandType = btHeader
      object RLSystemInfo2: TRLSystemInfo
        Left = 915
        Top = 0
        Width = 132
        Height = 18
        Align = faClientRight
        Alignment = taCenter
        Borders.Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Relat'#243'rio emitido em '
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 56
      Width = 1047
      Height = 49
      BandType = btTitle
      object RLLabel11: TRLLabel
        Left = 10
        Top = 27
        Width = 172
        Height = 14
        Caption = 'Pedidos / Or'#231'amentos parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 10
        Top = 6
        Width = 207
        Height = 16
        Caption = 'Pedidos / Or'#231'amentos parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 145
      Width = 1047
      Height = 25
      BandType = btFooter
      object RLLabel16: TRLLabel
        Left = 0
        Top = 0
        Width = 360
        Height = 25
        Align = faLeft
        Caption = 'Coliseu Sistemas - www.coliseusistemas.com.br - (67)3423-2227'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 891
        Top = 0
        Width = 53
        Height = 25
        Align = faRight
        Alignment = taRightJustify
        Borders.Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 944
        Top = 0
        Width = 103
        Height = 25
        Align = faRight
        Borders.Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = '-  '
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 105
      Width = 1047
      Height = 24
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 121
        Top = 1
        Width = 509
        Height = 22
        Align = faClient
        AutoSize = False
        Caption = 'CLIENTE'
        Layout = tlCenter
      end
      object RLLabel3: TRLLabel
        Left = 630
        Top = 1
        Width = 71
        Height = 22
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'PARCELA'
        Layout = tlCenter
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 1
        Width = 121
        Height = 22
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'COD'
        Layout = tlCenter
      end
      object RLLabel5: TRLLabel
        Left = 701
        Top = 1
        Width = 107
        Height = 22
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR'
        Layout = tlCenter
      end
      object RLLabel2: TRLLabel
        Left = 808
        Top = 1
        Width = 120
        Height = 22
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'VENCIMENTO'
        Layout = tlCenter
      end
      object RLLabel6: TRLLabel
        Left = 928
        Top = 1
        Width = 119
        Height = 22
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'EMISS'#195'O'
        Layout = tlCenter
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 129
      Width = 1047
      Height = 16
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 121
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'ID_PEDIDO'
        DataSource = DS_Filtro
        Holder = RLLabel4
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 121
        Top = -1
        Width = 509
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = DS_Filtro
        Holder = RLLabel1
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 630
        Top = -1
        Width = 71
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'PARCELA'
        DataSource = DS_Filtro
        Holder = RLLabel3
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 701
        Top = 0
        Width = 107
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DS_Filtro
        Holder = RLLabel5
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 808
        Top = 0
        Width = 120
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA_VENCIMENTO'
        DataSource = DS_Filtro
        Holder = RLLabel2
        Text = ''
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 928
        Top = 1
        Width = 119
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'CAST'
        DataSource = DS_Filtro
        Holder = RLLabel6
        Text = ''
        Transparent = False
      end
    end
  end
  object RzDBLookupComboBox1: TRzDBLookupComboBox
    Left = 80
    Top = 120
    Width = 297
    Height = 21
    KeyField = 'FILTRO'
    ListField = 'NOME'
    ListSource = DataSource1
    TabOrder = 6
  end
  object Query_Filtro: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT PEDIDOS.id_pedido,CLIENTES.nome,  pedidos_docs.parcela,'
      '       pedidos_docs.valor,pedidos_docs.data_vencimento,'
      '       CAST(pedidos.data_hora AS DATE)'
      '       from pedidos'
      'left join clientes on clientes.id_cliente = pedidos.id_cliente'
      
        'left join pedidos_docs on pedidos_docs.id_pedido = pedidos.id_pe' +
        'dido')
    Left = 32
    Top = 224
    object Query_FiltroID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_FiltroNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Query_FiltroPARCELA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_FiltroVALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_FiltroDATA_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_FiltroCAST: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CAST'
      Origin = '"CAST"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_Filtro: TDataSource
    DataSet = Query_Filtro
    Left = 376
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select 0 id_cliente,'#39'TODOS'#39' NOME,'#39' '#39' filtro FROM RDB$DATABASE'
      'UNION'
      
        'select clientes.id_cliente id_cliente,clientes.nome NOME,'#39'AND PE' +
        'DIDOS.id_cliente ='#39'||clientes.id_cliente filtro from clientes'
      '')
    Left = 168
    Top = 160
    object FDQuery1ID_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object FDQuery1FILTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 256
    Top = 160
  end
end
