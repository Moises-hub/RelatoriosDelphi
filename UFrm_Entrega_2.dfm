object Frm_Entrega_2: TFrm_Entrega_2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Entrega 2'
  ClientHeight = 506
  ClientWidth = 651
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
    Width = 651
    Height = 506
    Align = alClient
    BorderOuter = fsNone
    Color = clActiveCaption
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 21
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
      Left = 163
      Top = 24
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
      Left = 207
      Top = 74
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
      Left = 16
      Top = 146
      Width = 14
      Height = 13
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 15
      Top = 74
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
    object Label6: TLabel
      Left = 223
      Top = 146
      Width = 42
      Height = 13
      Caption = 'CIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 426
      Top = 144
      Width = 49
      Height = 13
      Caption = 'PEDIDOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 17
      Top = 321
      Width = 61
      Height = 13
      Caption = 'PRODUTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 223
      Top = 321
      Width = 58
      Height = 13
      Caption = 'VENDEDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 16
      Top = 40
      Width = 141
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 163
      Top = 40
      Width = 145
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox2: TRzComboBox
      Left = 16
      Top = 93
      Width = 185
      Height = 21
      Style = csDropDownList
      TabOrder = 2
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
    object RLReport1: TRLReport
      Left = 759
      Top = 40
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
      object RLBand1: TRLBand
        Left = 39
        Top = 39
        Width = 716
        Height = 50
        BandType = btTitle
        object RLLabel30: TRLLabel
          Left = 6
          Top = 7
          Width = 164
          Height = 16
          Caption = 'RELAT'#211'RIO DE ENTREGAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 976
          Top = 3
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Info = itFullDate
          Text = ''
        end
        object RLLabel13: TRLLabel
          Left = 6
          Top = 29
          Width = 156
          Height = 16
          Caption = 'RELAT'#211'RIO DE ENTREGAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLGroup1: TRLGroup
        Left = 39
        Top = 89
        Width = 716
        Height = 116
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataFields = 'CLIENTE'
        object RLBand2: TRLBand
          Left = 0
          Top = 1
          Width = 716
          Height = 74
          BandType = btHeader
          Color = 15921906
          ParentColor = False
          Transparent = False
          BeforePrint = RLBand2BeforePrint
          object RLLabel5: TRLLabel
            Left = 0
            Top = 56
            Width = 98
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'EMISS'#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel6: TRLLabel
            Left = 453
            Top = 56
            Width = 72
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'PEDIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel7: TRLLabel
            Left = 222
            Top = 56
            Width = 231
            Height = 16
            AutoSize = False
            Caption = 'PRODUTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel8: TRLLabel
            Left = 163
            Top = 56
            Width = 59
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'QNT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 98
            Top = 56
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'ENTREGUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 525
            Top = 56
            Width = 62
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SALDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 587
            Top = 56
            Width = 130
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'DATA AGENDAMENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel1: TRLLabel
            Left = 32
            Top = 5
            Width = 98
            Height = 15
            Caption = 'COD CLIENTE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLDBText1: TRLDBText
            Left = 133
            Top = 4
            Width = 53
            Height = 16
            AutoSize = False
            DataField = 'ID_CLIENTE'
            DataSource = DataSource1
            Text = ''
            Transparent = False
          end
          object RLLabel2: TRLLabel
            Left = 192
            Top = 5
            Width = 47
            Height = 15
            Caption = 'NOME:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLDBText2: TRLDBText
            Left = 245
            Top = 4
            Width = 263
            Height = 16
            AutoSize = False
            DataField = 'CLIENTE'
            DataSource = DataSource1
            Text = ''
            Transparent = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 517
            Top = 1
            Width = 199
            Height = 44
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'ENDERECO_OBS'
            DataSource = DataSource1
            Transparent = False
          end
          object RLLabel3: TRLLabel
            Left = 32
            Top = 22
            Width = 126
            Height = 15
            Caption = 'CIDADE ENTREGA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLDBText3: TRLDBText
            Left = 159
            Top = 22
            Width = 186
            Height = 16
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = DataSource1
            Text = ''
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 424
            Top = 23
            Width = 25
            Height = 15
            Caption = 'UF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLDBText4: TRLDBText
            Left = 455
            Top = 22
            Width = 53
            Height = 16
            AutoSize = False
            DataField = 'UF'
            DataSource = DataSource1
            Text = ''
            Transparent = False
          end
        end
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 75
          Width = 716
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          object RLDBText5: TRLDBText
            Left = 0
            Top = 2
            Width = 98
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CAST'
            DataSource = DataSource1
            Holder = RLLabel5
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 453
            Top = 1
            Width = 72
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'PEDIDO'
            DataSource = DataSource1
            Holder = RLLabel6
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 222
            Top = 1
            Width = 231
            Height = 16
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DataSource1
            Holder = RLLabel7
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 163
            Top = 1
            Width = 59
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDE'
            DataSource = DataSource1
            Holder = RLLabel8
            Text = ''
          end
          object RLDBText10: TRLDBText
            Left = 98
            Top = 1
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ENTREGUE_R'
            DataSource = DataSource1
            Holder = RLLabel9
            Text = ''
          end
          object RLDBText12: TRLDBText
            Left = 525
            Top = 1
            Width = 62
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'SALDO'
            DataSource = DataSource1
            Holder = RLLabel10
            Text = ''
          end
          object RLDBText13: TRLDBText
            Left = 587
            Top = 1
            Width = 130
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DATA_HORA_AGENDA'
            DataSource = DataSource1
            Holder = RLLabel11
            Text = ''
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 96
          Width = 716
          Height = 23
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel12: TRLLabel
            Left = 321
            Top = 0
            Width = 176
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'TOTAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
      object RLBand5: TRLBand
        Left = 39
        Top = 205
        Width = 716
        Height = 35
        BandType = btSummary
        object RLSystemInfo1: TRLSystemInfo
          Left = 955
          Top = 7
          Width = 87
          Height = 16
          Info = itPageNumber
          Text = ''
        end
        object RLMemo1: TRLMemo
          Left = 3
          Top = 16
          Width = 505
          Height = 19
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedTop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo2: TRLMemo
          Left = 508
          Top = 16
          Width = 201
          Height = 19
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.FixedTop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 3
          Top = 1
          Width = 105
          Height = 15
          Caption = 'Total por Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 39
        Top = 240
        Width = 716
        Height = 20
        BandType = btSummary
        object RLSystemInfo3: TRLSystemInfo
          Left = 955
          Top = 7
          Width = 87
          Height = 16
          Info = itPageNumber
          Text = ''
        end
        object RLLabel15: TRLLabel
          Left = 0
          Top = 0
          Width = 46
          Height = 20
          Align = faLeft
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = 'TOTAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
      end
    end
    object Memo1: TMemo
      Left = 16
      Top = 169
      Width = 197
      Height = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object Memo2: TMemo
      Left = 975
      Top = 440
      Width = 211
      Height = 147
      TabOrder = 5
      Visible = False
    end
    object Button2: TButton
      Left = 36
      Top = 140
      Width = 53
      Height = 23
      Caption = '+'
      TabOrder = 6
      OnClick = Button2Click
    end
    object RzComboBox1: TRzComboBox
      Left = 207
      Top = 93
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 7
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'N'#195'O ENTREGUE'
        'ENTREGUE')
      ItemIndex = 0
      Values.Strings = (
        ' '
        'AND ((ENTREGA = 0) OR (ENTREGA = 2))'
        'AND (ENTREGA = 1)')
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 344
      Top = 23
      Width = 190
      Height = 53
      Alignment = taCenter
      Caption = ' '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Emiss'#227'o'
        'Agendamento')
      TabOrder = 8
      Transparent = True
      VerticalSpacing = 5
    end
    object Memo3: TMemo
      Left = 975
      Top = 746
      Width = 211
      Height = 138
      TabOrder = 9
      Visible = False
    end
    object Memo4: TMemo
      Left = 220
      Top = 169
      Width = 200
      Height = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object Button3: TButton
      Left = 270
      Top = 140
      Width = 53
      Height = 23
      Caption = '+'
      TabOrder = 11
      OnClick = Button3Click
    end
    object Memo5: TMemo
      Left = 975
      Top = 593
      Width = 211
      Height = 147
      TabOrder = 12
      Visible = False
    end
    object Memo6: TMemo
      Left = 426
      Top = 169
      Width = 200
      Height = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object Button4: TButton
      Left = 481
      Top = 140
      Width = 53
      Height = 23
      Caption = '+'
      TabOrder = 14
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 85
      Top = 315
      Width = 53
      Height = 23
      Caption = '+'
      TabOrder = 15
      OnClick = Button5Click
    end
    object Memo8: TMemo
      Left = 14
      Top = 345
      Width = 258
      Height = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object Memo7: TMemo
      Left = 978
      Top = 890
      Width = 209
      Height = 138
      TabOrder = 17
      Visible = False
    end
    object Memo9: TMemo
      Left = 1194
      Top = 440
      Width = 211
      Height = 147
      TabOrder = 18
      Visible = False
    end
    object Button6: TButton
      Left = 291
      Top = 315
      Width = 53
      Height = 23
      Caption = '+'
      TabOrder = 19
      OnClick = Button6Click
    end
    object Memo10: TMemo
      Left = 281
      Top = 345
      Width = 258
      Height = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object Memo11: TMemo
      Left = 1194
      Top = 593
      Width = 211
      Height = 147
      TabOrder = 21
      Visible = False
    end
    object RzBitBtn1: TRzBitBtn
      Left = 541
      Top = 450
      Width = 88
      Height = 32
      Cursor = crHandPoint
      Caption = 'Filtrar'
      HotTrack = True
      TabOrder = 22
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'SELECT FIRST 100 CAST(RELATORIO_CARGAS_PEDIDOS.data_hora AS DATE' +
        '),'
      '       relatorio_cargas_pedidos.id_pedido,'
      '       relatorio_cargas_pedidos.id_dpto,'
      '       RELATORIO_CARGAS_PEDIDOS.status,'
      '       RELATORIO_CARGAS_PEDIDOS.uf,'
      '       RELATORIO_CARGAS_PEDIDOS.id_cliente,'
      '       RELATORIO_CARGAS_PEDIDOS.cliente,'
      '       RELATORIO_CARGAS_PEDIDOS.cidade,'
      '       RELATORIO_CARGAS_PEDIDOS.pedido,'
      '       RELATORIO_CARGAS_PEDIDOS.produto,'
      '       RELATORIO_CARGAS_PEDIDOS.ENDERECO_OBS,'
      
        '       cast(RELATORIO_CARGAS_PEDIDOS.qtde as decimal (15,2))as q' +
        'tde,'
      
        '       cast(RELATORIO_CARGAS_PEDIDOS.entregue_r as decimal  (15,' +
        '2))as entregue_r,'
      
        '       cast(RELATORIO_CARGAS_PEDIDOS.saldo as decimal  (15,2))as' +
        ' saldo,'
      '       RELATORIO_CARGAS_PEDIDOS.data_hora_agenda'
      '       from RELATORIO_CARGAS_PEDIDOS'
      '')
    Left = 600
    Top = 88
    object FDQuery1CAST: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CAST'
      Origin = '"CAST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1ID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object FDQuery1ID_DPTO: TIntegerField
      FieldName = 'ID_DPTO'
      Origin = 'ID_DPTO'
    end
    object FDQuery1STATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object FDQuery1UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQuery1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDQuery1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object FDQuery1CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQuery1PEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object FDQuery1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object FDQuery1ENDERECO_OBS: TMemoField
      FieldName = 'ENDERECO_OBS'
      Origin = 'ENDERECO_OBS'
      BlobType = ftMemo
    end
    object FDQuery1DATA_HORA_AGENDA: TDateField
      FieldName = 'DATA_HORA_AGENDA'
      Origin = 'DATA_HORA_AGENDA'
    end
    object FDQuery1QTDE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object FDQuery1ENTREGUE_R: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGUE_R'
      Origin = 'ENTREGUE_R'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object FDQuery1SALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 608
    Top = 144
  end
  object Query_soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT sum(SALDO) FROM relatorio_cargas_pedidos'
      
        'where RELATORIO_CARGAS_PEDIDOS.id_pedido =:f and RELATORIO_CARGA' +
        'S_PEDIDOS.id_cliente =:p')
    Left = 464
    Top = 96
    ParamData = <
      item
        Name = 'F'
        ParamType = ptInput
      end
      item
        Name = 'P'
        ParamType = ptInput
      end>
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    Left = 648
    Top = 256
  end
end
