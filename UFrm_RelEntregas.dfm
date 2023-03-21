object Frm_RelEntregas: TFrm_RelEntregas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Entregas'
  ClientHeight = 248
  ClientWidth = 359
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
  object Label2: TLabel
    Left = 12
    Top = 6
    Width = 64
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 184
    Top = 6
    Width = 56
    Height = 13
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 69
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
  object Label4: TLabel
    Left = 8
    Top = 125
    Width = 34
    Height = 13
    Caption = 'Depto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 12
    Top = 26
    Width = 141
    Height = 21
    EditType = etDate
    TabOrder = 0
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 184
    Top = 25
    Width = 145
    Height = 21
    EditType = etDate
    TabOrder = 1
  end
  object RzComboBox1: TRzComboBox
    Left = 8
    Top = 88
    Width = 321
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'N'#195'O ENTREGUE'
      'ENTREGUE'
      'ENTREGA PARCIAL')
    ItemIndex = 0
    Values.Strings = (
      ' '
      
        'AND ((rel_mov_entregas.ENTREGA = 0) OR (rel_mov_entregas.ENTREGA' +
        ' = 2))'
      'AND (rel_mov_entregas.ENTREGA = 1)'
      'AND (rel_mov_entregas.ENTREGA = 2)')
  end
  object RLReport2: TRLReport
    Left = 32
    Top = 356
    Width = 1123
    Height = 794
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLGroup2: TRLGroup
      Left = 38
      Top = 117
      Width = 1047
      Height = 92
      DataFields = 'ID_CLIENTE'
      object RLDetailGrid2: TRLDetailGrid
        Left = 0
        Top = 46
        Width = 1047
        Height = 17
        object RLDBText11: TRLDBText
          Left = 0
          Top = 0
          Width = 113
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'DATA_HORA'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 209
          Top = 0
          Width = 360
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 716
          Top = 0
          Width = 54
          Height = 17
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          DataField = 'QTDE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 770
          Top = 0
          Width = 128
          Height = 17
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_UNITARIO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 113
          Top = 0
          Width = 96
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID_PEDIDO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 569
          Top = 0
          Width = 74
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID_PRODUTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 898
          Top = 0
          Width = 149
          Height = 17
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 46
        BandType = btColumnHeader
        object RLDBText20: TRLDBText
          Left = 54
          Top = 7
          Width = 992
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clBtnFace
          DataField = 'NOME'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel17: TRLLabel
          Left = -1
          Top = 6
          Width = 54
          Height = 15
          Alignment = taRightJustify
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 3
          Top = 29
          Width = 59
          Height = 15
          Caption = 'Data Hora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 209
          Top = 29
          Width = 48
          Height = 15
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText14
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 770
          Top = 29
          Width = 128
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'V_Unt'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText16
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 731
          Top = 29
          Width = 24
          Height = 15
          Alignment = taCenter
          Caption = 'Qnt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText15
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 113
          Top = 29
          Width = 96
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'ID Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText18
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 569
          Top = 28
          Width = 74
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'ID Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText1
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 898
          Top = 29
          Width = 149
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'V_Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText2
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 63
        Width = 1047
        Height = 20
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLDBResult1: TRLDBResult
          Left = 770
          Top = 1
          Width = 276
          Height = 18
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = DataSource1
          DisplayMask = 'R$ ###,###.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'Total  '
        end
        object RLDBResult2: TRLDBResult
          Left = 592
          Top = 1
          Width = 178
          Height = 18
          Align = faRight
          Alignment = taRightJustify
          DataField = 'QTDE'
          DataSource = DataSource1
          DisplayMask = '####,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'QNT TOTAL '
        end
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 18
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 784
        Top = 0
        Width = 263
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
    object RLBand9: TRLBand
      Left = 38
      Top = 56
      Width = 1047
      Height = 61
      BandType = btTitle
      object RLLabel30: TRLLabel
        Left = 14
        Top = 11
        Width = 144
        Height = 16
        Caption = 'RELAT'#211'RIO ENTREGAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 14
        Top = 25
        Width = 688
        Height = 32
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 209
      Width = 1047
      Height = 24
      BandType = btFooter
      object RLLabel29: TRLLabel
        Left = 0
        Top = 0
        Width = 360
        Height = 24
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
    end
  end
  object Button1: TButton
    Left = 200
    Top = 194
    Width = 129
    Height = 36
    Caption = 'Visualizar / Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object RzComboBox2: TRzComboBox
    Left = 8
    Top = 144
    Width = 321
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'ENTREGUE'
      'N'#195'O ENTREGUE'
      'ENTREGA PARCIAL')
    ItemIndex = 0
    Values.Strings = (
      ' '
      
        'AND ((REL_IC_MOV_ENTREGAS1.ENTREGA = 0) OR (REL_IC_MOV_ENTREGAS1' +
        '.ENTREGA = 2))'
      'AND (REL_IC_MOV_ENTREGAS1.ENTREGA = 1)'
      'AND (REL_IC_MOV_ENTREGAS1.ENTREGA = 2)')
  end
  object Memo1: TMemo
    Left = 528
    Top = 64
    Width = 681
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select REL_IC_MOV_ENTREGAS1.id_cliente,'
      '       REL_IC_MOV_ENTREGAS1.cliente as nome,'
      '       REL_IC_MOV_ENTREGAS1.data_hora,'
      '       REL_IC_MOV_ENTREGAS1.id_pedido,'
      '       REL_IC_MOV_ENTREGAS1.produto as descricao,'
      '       REL_IC_MOV_ENTREGAS1.id_produto,'
      '       REL_IC_MOV_ENTREGAS1.qtde,'
      '       REL_IC_MOV_ENTREGAS1.valor_unitario,'
      '       REL_IC_MOV_ENTREGAS1.valor_total AS TOTAL'
      '       from REL_IC_MOV_ENTREGAS1')
    Left = 888
    Top = 16
    object FDQuery1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object FDQuery1DATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object FDQuery1ID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDQuery1QTDE: TSingleField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object FDQuery1VALOR_UNITARIO: TBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Precision = 18
    end
    object FDQuery1TOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 888
    Top = 80
  end
end
