object Frm_Rel_Titulos2: TFrm_Rel_Titulos2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Titulos 2'
  ClientHeight = 707
  ClientWidth = 1433
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1433
    Height = 161
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    Transparent = True
    ExplicitWidth = 1512
    object Label1: TLabel
      Left = 112
      Top = 22
      Width = 36
      Height = 13
      Caption = 'Per'#237'odo'
    end
    object Label2: TLabel
      Left = 408
      Top = 22
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Label3: TLabel
      Left = 528
      Top = 26
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object Label4: TLabel
      Left = 408
      Top = 76
      Width = 79
      Height = 13
      Caption = 'Centro de Custo'
    end
    object Label5: TLabel
      Left = 24
      Top = 142
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 256
      Top = 40
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Left = 112
      Top = 67
      Width = 265
      Height = 45
      Caption = ' '
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
        'Pagamento')
      ParentFont = False
      TabOrder = 2
    end
    object RzComboBox1: TRzComboBox
      Left = 408
      Top = 41
      Width = 114
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
      Text = 'Receber'
      Items.Strings = (
        'Receber'
        'Pagar')
      ItemIndex = 0
      Values.Strings = (
        'and (dc = 1)'
        'and (dc = 2)')
    end
    object RzComboBox2: TRzComboBox
      Left = 528
      Top = 40
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
      Text = 'Pendente'
      Items.Strings = (
        'Pendente'
        'Quitado')
      ItemIndex = 0
      Values.Strings = (
        'and baixa  = 0'
        'and baixa =1')
    end
    object RzComboBox3: TRzComboBox
      Left = 408
      Top = 91
      Width = 265
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 5
      Items.Strings = (
        'Pendente'
        'Quitado')
      Values.Strings = (
        '1'
        '2')
    end
    object RzBitBtn1: TRzBitBtn
      Left = 696
      Top = 35
      Width = 99
      Height = 36
      FrameColor = clWhite
      Caption = 'filtrar'
      HotTrack = True
      TabOrder = 6
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 696
      Top = 77
      Width = 99
      Height = 36
      FrameColor = clWhite
      Caption = 'imprimir'
      HotTrack = True
      TabOrder = 7
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
  end
  object RzDBGrid1: TRzDBGrid
    Left = 0
    Top = 161
    Width = 1433
    Height = 546
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    DataSource = DS_Query_Titulos
    DrawingStyle = gdsClassic
    FixedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    FrameStyle = fsNone
    FixedLineColor = clWhite
    Columns = <
      item
        Expanded = False
        FieldName = 'COD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ATUAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_PAGAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPECIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLANO_CONTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CENTRO_CUSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAL_PAGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 139
        Visible = True
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 104
    Top = 360
    Width = 1297
    Height = 49
    TabOrder = 2
    Visible = False
  end
  object Query_Titulos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from REL_TITULOS_2')
    Left = 984
    Top = 176
    object Query_TitulosCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
    end
    object Query_TitulosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Query_TitulosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_TitulosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object Query_TitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object Query_TitulosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_TitulosVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
      Origin = 'VALOR_ATUAL'
      currency = True
    end
    object Query_TitulosPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_TitulosNF: TStringField
      FieldName = 'NF'
      Origin = 'NF'
      Size = 18
    end
    object Query_TitulosDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object Query_TitulosD_PAGAMENTO: TDateField
      DisplayLabel = 'PAGAMENTO'
      FieldName = 'D_PAGAMENTO'
      Origin = 'D_PAGAMENTO'
    end
    object Query_TitulosVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_TitulosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 50
    end
    object Query_TitulosPLANO_CONTA: TStringField
      FieldName = 'PLANO_CONTA'
      Origin = 'PLANO_CONTA'
      Size = 50
    end
    object Query_TitulosCENTRO_CUSTO: TStringField
      FieldName = 'CENTRO_CUSTO'
      Origin = 'CENTRO_CUSTO'
      Size = 50
    end
    object Query_TitulosLOCAL_PAGA: TStringField
      FieldName = 'LOCAL_PAGA'
      Origin = 'LOCAL_PAGA'
      Size = 60
    end
    object Query_TitulosBAIXA: TSmallintField
      FieldName = 'BAIXA'
      Origin = 'BAIXA'
    end
    object Query_TitulosDC: TSmallintField
      FieldName = 'DC'
      Origin = 'DC'
    end
    object Query_TitulosID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
    object Query_TitulosID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
  end
  object DS_Query_Titulos: TDataSource
    DataSet = Query_Titulos
    Left = 1016
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    Left = 600
    Top = 240
  end
end
