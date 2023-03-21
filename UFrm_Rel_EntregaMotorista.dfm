object Frm_Rel_EntregaMotorista: TFrm_Rel_EntregaMotorista
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Entrega Motorista'
  ClientHeight = 198
  ClientWidth = 346
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
    Left = 8
    Top = 69
    Width = 55
    Height = 13
    Caption = 'Motorista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
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
  object Button1: TButton
    Left = 236
    Top = 130
    Width = 93
    Height = 36
    Caption = 'Visualizar / Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object RzComboBox1: TRzComboBox
    Left = 8
    Top = 88
    Width = 321
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'ENTREGUE'
      'N'#195'O ENTREGUE'
      'ENTREGA PARCIAL')
    ItemIndex = 0
    Values.Strings = (
      ' '
      'AND MOV_ENTREGAS.tipo = 1'
      'AND MOV_ENTREGAS.tipo = 2'
      'AND MOV_ENTREGAS.tipo = 3')
  end
  object RzDateTimeEdit1: TRzDateTimeEdit
    Left = 12
    Top = 26
    Width = 141
    Height = 21
    EditType = etDate
    TabOrder = 2
  end
  object RzDateTimeEdit2: TRzDateTimeEdit
    Left = 184
    Top = 25
    Width = 145
    Height = 21
    EditType = etDate
    TabOrder = 3
  end
  object RLReport1: TRLReport
    Left = 75
    Top = 204
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLGroup1: TRLGroup
      Left = 38
      Top = 117
      Width = 718
      Height = 102
      DataFields = 'ID_VENDEDOR'
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 46
        Width = 718
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLDBText3: TRLDBText
          Left = 1
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
        object RLDBText4: TRLDBText
          Left = 378
          Top = 0
          Width = 208
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
        object RLDBText5: TRLDBText
          Left = 584
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
        object RLDBText7: TRLDBText
          Left = 282
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
        object RLDBText9: TRLDBText
          Left = 638
          Top = 0
          Width = 79
          Height = 17
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_TOTAL'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 114
          Top = 0
          Width = 168
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'VENDEDOR'
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
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 46
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLDBText10: TRLDBText
          Left = 85
          Top = 6
          Width = 629
          Height = 14
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Color = clBtnFace
          DataField = 'VENDEDOR'
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
        object RLLabel3: TRLLabel
          Left = 4
          Top = 6
          Width = 75
          Height = 15
          Alignment = taRightJustify
          Caption = 'MOTORISTA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
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
        object RLLabel5: TRLLabel
          Left = 378
          Top = 29
          Width = 48
          Height = 15
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText4
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 599
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
          Holder = RLDBText5
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 282
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
          Holder = RLDBText7
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 638
          Top = 29
          Width = 79
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'V_Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText9
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 114
          Top = 29
          Width = 58
          Height = 15
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLDBText12
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 63
        Width = 718
        Height = 20
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLDBResult3: TRLDBResult
          Left = 441
          Top = 1
          Width = 276
          Height = 18
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_TOTAL'
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
        object RLDBResult4: TRLDBResult
          Left = 290
          Top = 1
          Width = 151
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
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 18
      BandType = btHeader
      object RLSystemInfo2: TRLSystemInfo
        Left = 455
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
    object RLBand5: TRLBand
      Left = 38
      Top = 56
      Width = 718
      Height = 61
      BandType = btTitle
      object RLLabel11: TRLLabel
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
      object RLLabel12: TRLLabel
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
    object RLBand7: TRLBand
      Left = 38
      Top = 219
      Width = 718
      Height = 24
      BandType = btFooter
      object RLLabel13: TRLLabel
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
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select first 100 mov_cargas.data_hora,'
      '       funcionarios.nome as vendedor,'
      '       mov_cargas.motorista,'
      '       mov_cargas.id_vendedor,'
      '       mov_carga_itens.id_pedido,'
      '       mov_carga_itens.descricao,'
      '       mov_carga_itens.qtde,'
      '       mov_carga_itens.valor_total'
      '       from mov_carga_itens'
      
        '       left join  mov_cargas on (mov_cargas.id_carga = mov_carga' +
        '_itens.id_carga)'
      
        '       left join  funcionarios on (funcionarios.id_funcionario =' +
        ' mov_cargas.id_vendedor)'
      '       where mov_cargas.status = 1'
      '   order by mov_cargas.motorista')
    Left = 495
    Top = 16
    object FDQuery1DATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object FDQuery1VENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object FDQuery1MOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'MOTORISTA'
      Size = 50
    end
    object FDQuery1ID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQuery1QTDE: TSingleField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object FDQuery1VALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery1ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 496
    Top = 72
  end
end
