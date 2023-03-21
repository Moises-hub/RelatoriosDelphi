object Frm_Consultoria: TFrm_Consultoria
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Consultoria'
  ClientHeight = 285
  ClientWidth = 626
  Color = clWhite
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
  object Panel1: TPanel
    Left = 140
    Top = 0
    Width = 486
    Height = 285
    Align = alClient
    BevelOuter = bvNone
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 427
    ExplicitHeight = 273
    object Label1: TLabel
      Left = 55
      Top = 47
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 58
      Top = 79
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 114
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Centro de Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 28
      Top = 143
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Plano de Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 3
      Top = 10
      Width = 42
      Height = 16
      Caption = 'Label6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 75
      Top = 171
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzComboBox3: TRzComboBox
      Left = 112
      Top = 166
      Width = 289
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 8
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'QUITADO'
        'EM ABERTO')
      ItemIndex = 0
      Values.Strings = (
        '  '
        'AND STATUS ='#39'QUITADO'#39
        'AND STATUS ='#39'EM ABERTO'#39)
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 112
      Top = 44
      Width = 161
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 112
      Top = 79
      Width = 161
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox1: TRzComboBox
      Left = 112
      Top = 111
      Width = 289
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
    end
    object RzComboBox2: TRzComboBox
      Left = 112
      Top = 138
      Width = 289
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
    end
    object RzBitBtn1: TRzBitBtn
      Left = 270
      Top = 220
      Width = 131
      Height = 34
      Cursor = crHandPoint
      Caption = 'Filtrar'
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 4
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RLReport1: TRLReport
      Left = 180
      Top = 461
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataSource = DS_Query_filtrar_2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLGroup1: TRLGroup
        Left = 38
        Top = 83
        Width = 718
        Height = 118
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataFields = 'TIPO'
        BeforePrint = RLGroup1BeforePrint
        object RLBand1: TRLBand
          Left = 1
          Top = 1
          Width = 716
          Height = 73
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = clWhite
          ParentColor = False
          Transparent = False
          object RLDBText1: TRLDBText
            Left = 108
            Top = 25
            Width = 566
            Height = 20
            AutoSize = False
            DataField = 'DEPARTAMENTO'
            DataSource = DS_Query_filtrar_2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 27
            Width = 91
            Height = 16
            Caption = 'DEPARTAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel2: TRLLabel
            Left = 3
            Top = 56
            Width = 56
            Height = 16
            Caption = 'PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel3: TRLLabel
            Left = 396
            Top = 56
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'ESTOQUE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Holder = RLDBText3
            ParentFont = False
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 454
            Top = 56
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VALOR UNIT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Holder = RLDBText9
            ParentFont = False
            Transparent = False
          end
          object RLLabel51: TRLLabel
            Left = 584
            Top = 56
            Width = 132
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Holder = RLDBText10
            ParentFont = False
            Transparent = False
          end
        end
        object RLDetailGrid1: TRLDetailGrid
          Left = 1
          Top = 74
          Width = 716
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText2: TRLDBText
            Left = 0
            Top = 0
            Width = 396
            Height = 19
            Align = faClient
            AutoSize = False
            DataField = 'PRODUTOS'
            DataSource = DS_Query_filtrar_2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText3: TRLDBText
            Left = 396
            Top = 0
            Width = 58
            Height = 19
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            DataField = 'QNT'
            DataSource = DS_Query_filtrar_2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 454
            Top = 0
            Width = 130
            Height = 19
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = DS_Query_filtrar_2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText10: TRLDBText
            Left = 584
            Top = 0
            Width = 132
            Height = 19
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL'
            DataSource = DS_Query_filtrar_2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand2: TRLBand
          Left = 1
          Top = 93
          Width = 716
          Height = 24
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clGradientInactiveCaption
          ParentColor = False
          Transparent = False
          object RLLabel5: TRLLabel
            Left = 658
            Top = 1
            Width = 58
            Height = 23
            Align = faRight
            Layout = tlCenter
            Transparent = False
          end
        end
      end
      object RLBand6: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 45
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel11: TRLLabel
          Left = 133
          Top = 0
          Width = 452
          Height = 19
          Align = faCenterTop
          Caption = 'RELAT'#211'RIO ITENS DE COMPRA POR CENTRO DE CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 331
          Top = 29
          Width = 56
          Height = 15
          Align = faCenterBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 38
        Top = 201
        Width = 718
        Height = 32
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLDBText14: TRLDBText
          Left = 523
          Top = 0
          Width = 195
          Height = 31
          Align = faRight
          Alignment = taRightJustify
          DataField = 'TOTAL'
          DataSource = DSSOMAR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'TOTAL '
        end
      end
    end
    object Memo1: TMemo
      Left = 1010
      Top = 183
      Width = 625
      Height = 421
      Lines.Strings = (
        'Memo1')
      TabOrder = 5
    end
    object RLReport4: TRLReport
      Left = -119
      Top = 319
      Width = 1123
      Height = 794
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataSource = DS_Filtro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      Visible = False
      object RLBand16: TRLBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 56
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand3BeforePrint
        object RLLabel12: TRLLabel
          Left = 266
          Top = 0
          Width = 515
          Height = 19
          Align = faCenterTop
          Caption = 'RELAT'#211'RIO FINANCEIRO DE COMPRAS POR CENTRO DE CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 495
          Top = 20
          Width = 56
          Height = 15
          Align = faCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 489
          Top = 35
          Width = 69
          Height = 20
          Align = faCenterBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand22: TRLBand
        Left = 38
        Top = 177
        Width = 1047
        Height = 24
        BandType = btSummary
        object RLLabel52: TRLLabel
          Left = 920
          Top = 2
          Width = 124
          Height = 19
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLGroup6: TRLGroup
        Left = 38
        Top = 94
        Width = 1047
        Height = 83
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Width = 3
        Borders.Color = clGray
        DataFields = 'departamento'
        BeforePrint = RLGroup6BeforePrint
        object RLBand18: TRLBand
          Left = 0
          Top = 21
          Width = 1047
          Height = 23
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          Color = clWhite
          ParentColor = False
          Transparent = False
          AfterPrint = RLBand13AfterPrint
          BeforePrint = RLBand13BeforePrint
          object RLLabel33: TRLLabel
            Left = 0
            Top = 2
            Width = 33
            Height = 15
            Caption = 'DATA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText21
            ParentFont = False
            Transparent = False
          end
          object RLLabel34: TRLLabel
            Left = 300
            Top = 2
            Width = 153
            Height = 16
            AutoSize = False
            Caption = 'PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText23
            ParentFont = False
            Transparent = False
          end
          object RLLabel43: TRLLabel
            Left = 244
            Top = 2
            Width = 56
            Height = 16
            AutoSize = False
            Caption = 'NFE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText22
            ParentFont = False
            Transparent = False
          end
          object RLLabel45: TRLLabel
            Left = 653
            Top = 2
            Width = 62
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'QNT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText26
            ParentFont = False
            Transparent = False
          end
          object RLLabel46: TRLLabel
            Left = 568
            Top = 2
            Width = 85
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VALOR UNIT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText25
            ParentFont = False
            Transparent = False
          end
          object RLLabel47: TRLLabel
            Left = 75
            Top = 2
            Width = 169
            Height = 16
            AutoSize = False
            Caption = 'FORNECEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText24
            ParentFont = False
            Transparent = False
          end
          object RLLabel48: TRLLabel
            Left = 715
            Top = 2
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText27
            ParentFont = False
            Transparent = False
          end
          object RLLabel44: TRLLabel
            Left = 453
            Top = 2
            Width = 115
            Height = 16
            AutoSize = False
            Caption = 'PLANO DE CONTAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText20
            ParentFont = False
            Transparent = False
          end
          object RLLabel49: TRLLabel
            Left = 827
            Top = 2
            Width = 110
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'STATUS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText28
            ParentFont = False
            Transparent = False
          end
          object RLLabel7: TRLLabel
            Left = 937
            Top = 2
            Width = 110
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'VENCIMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText8
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand19: TRLBand
          Left = 0
          Top = 44
          Width = 1047
          Height = 16
          object RLDBText21: TRLDBText
            Left = 0
            Top = 0
            Width = 75
            Height = 16
            Align = faLeft
            AutoSize = False
            DataField = 'data'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText22: TRLDBText
            Left = 244
            Top = 0
            Width = 56
            Height = 16
            Align = faLeft
            AutoSize = False
            DataField = 'NFE'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText23: TRLDBText
            Left = 300
            Top = 0
            Width = 153
            Height = 16
            Align = faClient
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText25: TRLDBText
            Left = 568
            Top = 0
            Width = 85
            Height = 16
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = DS_Filtro
            DisplayMask = 'R$#,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText26: TRLDBText
            Left = 653
            Top = 0
            Width = 62
            Height = 16
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            DataField = 'QNT'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText27: TRLDBText
            Left = 715
            Top = 0
            Width = 112
            Height = 16
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'valor'
            DataSource = DS_Filtro
            DisplayMask = 'R$#,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText27BeforePrint
          end
          object RLDBText24: TRLDBText
            Left = 75
            Top = 0
            Width = 169
            Height = 16
            Align = faLeft
            AutoSize = False
            DataField = 'FORNECEDOR'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText20: TRLDBText
            Left = 453
            Top = 0
            Width = 115
            Height = 16
            Align = faRight
            AutoSize = False
            DataField = 'PLANO'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText28: TRLDBText
            Left = 827
            Top = 0
            Width = 110
            Height = 16
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            DataField = 'STATUS'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 937
            Top = 0
            Width = 110
            Height = 16
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            DataField = 'VENCIMENTO'
            DataSource = DS_Filtro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand20: TRLBand
          Left = 0
          Top = 60
          Width = 1047
          Height = 20
          BandType = btSummary
          Color = clMoneyGreen
          ParentColor = False
          Transparent = False
          object RLLabel50: TRLLabel
            Left = 594
            Top = 0
            Width = 453
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand17: TRLBand
          Left = 0
          Top = 3
          Width = 1047
          Height = 18
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = clWhite
          ParentColor = False
          Transparent = False
          object RLDBText18: TRLDBText
            Left = 119
            Top = 1
            Width = 770
            Height = 16
            AutoSize = False
            DataField = 'departamento'
            DataSource = DS_Filtro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel29: TRLLabel
            Left = 3
            Top = 1
            Width = 95
            Height = 16
            Caption = 'DEPARTAMENTO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
      end
    end
    object RLReport2: TRLReport
      Left = 691
      Top = 414
      Width = 1123
      Height = 794
      DataSource = DSFIltrar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.PaperSize = fpCustom
      PageSetup.Orientation = poLandscape
      PageSetup.PaperWidth = 210.000000000000000000
      PageSetup.PaperHeight = 297.000000000000000000
      PageSetup.ForceEmulation = True
      PreviewOptions.Defaults = pdIgnoreDefaults
      Visible = False
      object RLBand3: TRLBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 66
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand3BeforePrint
        object RLLabel8: TRLLabel
          Left = 0
          Top = 0
          Width = 251
          Height = 15
          Caption = 'RELAT'#211'RIO COMPRAS POR CENTRO DE CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 0
          Top = 25
          Width = 71
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 0
          Top = 14
          Width = 51
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 990
          Top = 0
          Width = 57
          Height = 65
          Align = faRight
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Info = itFullDate
          ParentFont = False
          Text = ''
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 38
        Top = 128
        Width = 1047
        Height = 138
        Color = clWhite
        DataSource = DS_TAB_FORNECEDOR
        ParentColor = False
        Transparent = False
        BeforePrint = RLSubDetail1BeforePrint
        object RLGroup2: TRLGroup
          Left = 0
          Top = 0
          Width = 1047
          Height = 103
          DataFields = 'FORNECEDOR'
          Transparent = False
          object RLBand13: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 55
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clGray
            Color = clWhite
            ParentColor = False
            Transparent = False
            AfterPrint = RLBand13AfterPrint
            BeforePrint = RLBand13BeforePrint
            object RLLabel35: TRLLabel
              Left = 0
              Top = 38
              Width = 31
              Height = 16
              Caption = 'DATA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel36: TRLLabel
              Left = 137
              Top = 38
              Width = 455
              Height = 16
              AutoSize = False
              Caption = 'PRODUTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel37: TRLLabel
              Left = 81
              Top = 38
              Width = 56
              Height = 16
              AutoSize = False
              Caption = 'NFE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel39: TRLLabel
              Left = 723
              Top = 38
              Width = 79
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'QNT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel40: TRLLabel
              Left = 592
              Top = 38
              Width = 131
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CUSTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel41: TRLLabel
              Left = 0
              Top = 2
              Width = 88
              Height = 16
              Alignment = taRightJustify
              Caption = 'FORNECEDOR:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLDBText19: TRLDBText
              Left = 93
              Top = 2
              Width = 625
              Height = 16
              AutoSize = False
              DataField = 'FORNECEDOR'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -16
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
              BeforePrint = RLDBText19BeforePrint
            end
            object RLLabel42: TRLLabel
              Left = 803
              Top = 38
              Width = 117
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel17: TRLLabel
              Left = 954
              Top = 38
              Width = 94
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'VENCIMENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLDBText4: TRLDBText
              Left = 6
              Top = 19
              Width = 1047
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Width = 2
              DataField = 'departamento'
              DataSource = DSFIltrar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
              Text = 'DEPTO - '
              BeforePrint = RLDBText29BeforePrint
            end
          end
          object RLBand14: TRLBand
            Left = 0
            Top = 55
            Width = 1047
            Height = 21
            Transparent = False
            object RLDBText5: TRLDBText
              Left = 0
              Top = 0
              Width = 81
              Height = 21
              Align = faLeft
              AutoSize = False
              DataField = 'data'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDBText6: TRLDBText
              Left = 81
              Top = 0
              Width = 56
              Height = 21
              Align = faLeft
              AutoSize = False
              DataField = 'NFE'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDBText7: TRLDBText
              Left = 137
              Top = 0
              Width = 454
              Height = 21
              Align = faClient
              AutoSize = False
              DataField = 'PRODUTOS'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDBText11: TRLDBText
              Left = 591
              Top = 0
              Width = 131
              Height = 21
              Align = faRight
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CUSTO'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDBText13: TRLDBText
              Left = 722
              Top = 0
              Width = 80
              Height = 21
              Align = faRight
              Alignment = taCenter
              AutoSize = False
              DataField = 'QNT'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDBText16: TRLDBText
              Left = 802
              Top = 0
              Width = 118
              Height = 21
              Align = faRight
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTAL'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
              BeforePrint = RLDBText16BeforePrint
            end
            object RLDBText17: TRLDBText
              Left = 920
              Top = 0
              Width = 127
              Height = 21
              Align = faRight
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VENCIMENTO'
              DataSource = DS_TAB_FORNECEDOR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
              BeforePrint = RLDBText16BeforePrint
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 76
            Width = 1047
            Height = 17
            BandType = btSummary
            Transparent = False
            object RLLabel10: TRLLabel
              Left = 988
              Top = 0
              Width = 59
              Height = 17
              Align = faRight
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGrayText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 103
          Width = 1047
          Height = 33
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Transparent = False
          object RLLabel13: TRLLabel
            Left = 975
            Top = 1
            Width = 72
            Height = 31
            Align = faRight
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Layout = tlBottom
            ParentFont = False
            Transparent = False
          end
        end
      end
      object RLBand4: TRLBand
        Left = 38
        Top = 104
        Width = 1047
        Height = 24
        object RLDBText29: TRLDBText
          Left = 0
          Top = 0
          Width = 1047
          Height = 24
          Align = faClient
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Width = 2
          Color = clWhite
          DataField = 'departamento'
          DataSource = DSFIltrar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = 'DEPTO - '
          Transparent = False
          BeforePrint = RLDBText29BeforePrint
        end
      end
      object RLBand8: TRLBand
        Left = 38
        Top = 266
        Width = 1047
        Height = 31
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Transparent = False
        object RLLabel15: TRLLabel
          Left = 959
          Top = 1
          Width = 88
          Height = 29
          Align = faRight
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand9: TRLBand
        Left = 38
        Top = 297
        Width = 1047
        Height = 24
        BandType = btFooter
        object RLSystemInfo2: TRLSystemInfo
          Left = 863
          Top = 0
          Width = 184
          Height = 24
          Align = faRight
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Info = itPagePreview
          ParentFont = False
          Text = '#/#'
        end
      end
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 288
      Top = 33
      Width = 113
      Height = 61
      Caption = ''
      ItemIndex = 0
      Items.Strings = (
        'Data Emiss'#227'o'
        'Data Vencimento')
      TabOrder = 10
      Transparent = True
      Visible = False
    end
  end
  object RzGroupBar1: TRzGroupBar
    AlignWithMargins = True
    Left = 3
    Top = 10
    Width = 134
    Height = 272
    Margins.Top = 10
    GradientColorStart = clBtnFace
    GradientColorStop = clBtnShadow
    LargeImages = ImageList1
    Style = gbsTaskList
    GroupBorderSize = 4
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    ExplicitHeight = 260
    object RzGroup1: TRzGroup
      Cursor = crHandPoint
      CanClose = False
      Items = <
        item
          Caption = 'Compras'
          ImageIndex = 0
          OnClick = RzGroup1Items0Click
        end
        item
          Caption = '-'
        end
        item
          Caption = 'Financeiro'
          ImageIndex = 1
          OnClick = RzGroup1Items1Click
        end
        item
          Caption = '-'
        end
        item
          Caption = 'Estoque'
          ImageIndex = 2
          OnClick = RzGroup1Items2Click
        end
        item
          Caption = '-'
        end
        item
          Caption = 'Sair'
          ImageIndex = 3
          OnClick = RzGroup1Items4Click
        end>
      ItemStaticFont.Charset = ANSI_CHARSET
      ItemStaticFont.Color = clMenuHighlight
      ItemStaticFont.Height = -13
      ItemStaticFont.Name = 'Calibri'
      ItemStaticFont.Style = []
      LargeImages = ImageList1
      Opened = True
      OpenedHeight = 167
      DividerVisible = True
      SmallImages = ImageList1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
  end
  object Query_Filtro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sum(estoque.qtde) as estoque, '
      '       produtos.descricao,'
      '       departamentos.descricao as dpto'
      '       from estoque'
      
        '       left join produtos on(produtos.id_produto = estoque.id_pr' +
        'oduto)'
      
        '       left join departamentos on(departamentos.id_depto = produ' +
        'tos.id_depto)'
      
        '       left join contas on (contas.id_pedido = estoque.id_pedido' +
        ')'
      
        '       left join centro_custos on(centro_custos.id_centro = cont' +
        'as.id_depto)'
      '       group by descricao, dpto'
      '       order by dpto')
    SQLConnection = DM.SQLConnection1
    Left = 728
  end
  object Prov_Filtro: TDataSetProvider
    DataSet = Query_Filtro
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 800
    Top = 8
  end
  object CD_Filtro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Filtro'
    Left = 592
    Top = 24
  end
  object DS_Filtro: TDataSource
    DataSet = CD_Filtro
    Left = 960
    Top = 24
  end
  object Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 56
    Top = 440
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 104
    Top = 376
    Bitmap = {
      494C010104000800740020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000005372F2DA5746360ED0908
      0744000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2727A7826E6BFF87736FFF7D6B
      67F6090807440000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000615250F0705F5DFF84706DFF8773
      6FFF7D6B67F60908074400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF6791
      B4FF6D96B8FF6D96B8FF6D96B8FF6D96B8FF6D96B8FF6D96B8FF6D96B8FF6D96
      B8FF6791B4FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008070747675654F7705F5DFF8470
      6DFF87736FFF7D6B67F609080744000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF9BC0
      D8FFA6CADFFFA6CADFFFA6CADFFFA6CADFFFA6CADFFFA6CADFFFA6CADFFFA6CA
      DFFF9BC0D8FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050B2160193395C9142A7BB70102082F00000000000000000000
      000000000000000000000000021A112368A819359CCE0913387C000000020000
      0000000000000000000000000000000000000000000008070747675654F7705F
      5DFF84706DFF87736FFF7D6B67F6090807440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5883A9FF5782A9FF5782A9FF5782A9FF5782A9FF5883A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000B0000000B0000
      000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
      000B0000000B0000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002040D3C2751EEFE2751F0FF2751F0FF2042C1E500000006000000000000
      00000000000000000000162D87BF2751F0FF2751F0FF2751F0FF060D26660000
      0000000000000000000000000000000000000000000000000000080707476756
      54F7705F5DFF84706DFF87736FFF7D6B67F60908074400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF6E97B9FF9ABFD8FF5782A9FF5782A9FF5782A9FF5782A9FF9ABFD8FF6E97
      B9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      000000000000000000000000000013131251BBAB93FE6C655CBE6C655CBE6C65
      5CBE6C655CBE6C655CBE6C655CBE6C655CBE6C655CBE6C655CBE6C655CBE6C65
      5CBE6C655CBE6C655CBEB6A792FA272623730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000081032752751F0FF2751F0FF2751F0FF2751F0FF00010525000000000000
      00000000000000000000254DE4F92751F0FF2751F0FF2751F0FF0F1F5EA00000
      0000000000000000000000000000000000000000000000000000000000000807
      0747675654F7705F5DFF84706DFF87736FFF7D6B67F609080744000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF739CBDFF9FC4DBFF5782A9FF5782A9FF5782A9FF5782A9FF9FC4DBFF739C
      BDFF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000B9AA92FC0000000000000000010101190202
      021E0202021E0202021E0202021E0202021E0202021E0202021E0202021E0202
      021E0202021B0000000000000000B8A991FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001030B382751EEFE2751F0FF2751F0FF1E3FBCE200000005000000000000
      00000000000000000000152B81BB2751F0FF2751F0FF2751F0FF050C23620000
      0000000000000000000000000000000000000000000000000000000000000000
      000008070747675654F7705F5DFF84706DFF87736FFF7D6B67F6090807440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF739CBDFF9FC4DBFF5782A9FF5782A9FF5782A9FF5782A9FF9FC4DBFF739C
      BDFF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000A09581EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006F685CC300000000A99B86F10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004091C58162E89C1122671AF0102062A00000000000000000000
      00000000000000000000000001170F205FA0173190C608103174000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008070747675654F7705F5DFF84706DFF87736FFF7D6B67F60908
      0845000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF8EB4
      CFFF81A8C6FF9FC4DBFF84ABC8FF6E97B9FF6E97B9FF84ABC8FF9FC4DBFF81A8
      C6FF8EB4CFFF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000141312510000000CA99B86F10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000205
      0F42050B2260050B2260050B2260050B2260050B2260050B2260050B2260050B
      2260050B2260050B2260050B2260050B2260050B2260050B2260050B22600408
      1852000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008070747675654F7705F5DFF84706DFF877978FF7AB5
      D2F7080E10420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF86AD
      C9FFB1D4E7FFB1D4E7FFA7CBE0FF628CB1FF628CB1FFA7CBE0FFB1D4E7FFB1D4
      E7FF86ADC9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003000000000C0C0B3F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000011F40
      BEE32751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF274F
      EAFC000001140000000000000000000000000000000000000000000000000000
      000000000000000000000000000008070747675654F7706668FF81C0E2FF82D7
      FFFF375B6CA70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF87ADCAFFA7CAE0FF638DB1FF5782A9FF5782A9FF638DB1FFA7CAE0FF87AD
      CAFF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E1C19660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010309332751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF050B205E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000807074867A4D1F870C6FFFF7ACF
      FEFF5994AFD40001011600000000000000000000000003050629213742824A7B
      92C16AAFD1E775C3E7F36AB1D3E84B7D95C3233A45850306072C000000000000
      0000000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5883A9FF5782A9FF5782A9FF5782A9FF5782A9FF5883A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000047433D9C666055BBB6A893FA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A143C802751
      F0FF2751F0FF0408175001030831010308310103083101030831010308310103
      0831010308310103083101030831010308310103083101030A35254BDEF62751
      F0FF12246CAB0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000080E12452F546EA85691
      AFD482D7FFFF5892AED3000102170102031E3B6274AC80D5FDFE82D7FFFF6FB8
      DAEC4B7C93C23F6A7DB3497A92C16EB6D8EB82D7FFFF81D5FDFE3E677BB10203
      0421000000000000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000606062DB5A892F9000000000D0C0C42AA9D88F1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000019349BCD2751
      F0FF1E3FB8E00000000000000009000001120000011200000112000001120000
      0112000001120000011200000112000001120000000C00000000132876B32751
      F0FF2349D8F20000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      01165892AED372C8FFFF5593BADA70BBDEEE81D5FDFE3A6072AB060B0D3B0000
      000200000000000000000000000000000001060A0C38375B6CA680D5FDFE73C0
      E3F10B13164C0000000000000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D3A36907F7669D0000000000B0B0A3EA59985EE0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000021C2751EEFE2751
      F0FF0D1A4F9300000000102163A42751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF1A36A0D100000000060D26662751
      F0FF2751F0FF0306124700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000102175593BADA82D7FFFF6EB6D8EB0910134600000000000000000000
      0000000000000000000000000000000000000000000000000000080D10406AB0
      D1E77ED0F7FB0B13174D00000000000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      00000202021BBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF00000009000000000B0B0A3FAA9D
      88F1000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060D28692751F0FF2751
      F0FF02051145000000000E1D569912246CAB12246CAB12246CAB12246CAB1224
      6CAB12246CAB12246CAB12246CAB12246CAB12246BAB0000000C0000021A2751
      EEFE2751F0FF0D1B519400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000102031E70BBDEEE6EB6D8EB030506290000000000000000000000000000
      00000000000B1729367600000002000000000000000000000000000000000204
      05246AB0D1E774C1E5F202040423000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      00000202021D4D4842A200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0C
      0C42B1A591F60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014297AB62751F0FF2349
      D6F1000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001933
      98CB2751F0FF1E3FBBE100000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B6274AC81D5FDFE09101346000000000000000000000000000000050C16
      1D572E526CA66DC3FFFF223D5190070C10410000000000000000000000000000
      0000070C0F3E80D4FBFD406B7FB4000000005782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      00000202021D787168C92221206A2221206A2221206A2221206A2221206A2221
      206A2221206A2221206A2221206A2221206A000000010000000000000006BBAB
      93FE010101170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C254DE1F72751F0FF1124
      6AAA00000000050A1F5C0D1B52950D1B52950D1B52950D1B52950D1B52950D1B
      52950D1B52950D1B52950D1B52950D1B52950D1B529508113376000000000914
      3A7E2751F0FF2751F0FF01020830000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000305
      062980D5FDFE3A6072AB00000000000000000000000000000009417599C66DC3
      FFFF6DC2FDFE6DC3FFFF6BBEF9FC6DC3FFFF27465D9A00000000000000000000
      000000000000345767A282D7FFFF040709305782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5177
      9DFF364F67FF344B62FF344B62FF344B62FF344B62FF344B62FF344B62FF364F
      67FF51779DFF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000808083308080833080808330808083308080833080808330808
      0833080808330808083313131350B9AA93FD0000000000000005BBAB93FE0101
      0119000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040818522751F0FF2751F0FF050A
      1F5D000000001D3BB1DB2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF254DE4F90000000E0103
      08312751F0FF2751F0FF0913397D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002237
      428282D7FFFF060B0D3B000000000000000000000000040709326DC3FFFF4378
      9DC8080F14486DC3FFFF020305244C86B0D46DC3FFFF04070931000000000000
      0000000000000508093282D7FFFF263F4C8B5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF4A6E
      90FF30455AFF30455AFF30455AFF30455AFF30455AFF30455AFF30455AFF3045
      5AFF4A6E90FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000012B9AA93FC0000000500000000BBAB93FE010101190000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F1F5D9F2751F0FF264FEAFC0000
      0113000000010002052800020528000205280002052800020528000205280002
      0528000205280002052800020528000205280002052800020528000000080000
      00011E40BCE22751F0FF193398CB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A7B
      92C16FB8DAEC000000020000000000000000000000000000000004080A350000
      000F04070A336DC3FFFF0000011135607DB36DC3FFFF0B141A52000000000000
      0000000000000000000068ADCDE55187A0CA5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF4D7295FF4B6E91FF4B6E91FF4B6E91FF4B6E91FF4B6E91FF4B6E91FF4D72
      95FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A39582EC0D0D0C43BCAC94FF01010117000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000032144CAEA2751F0FF162E89C10000
      00000000000F0000021900000219000002190000021900000219000002190000
      0219000002190000021900000219000002190000021900000219000002190000
      0219102163A42751F0FF2751EEFE0000021A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006AB0
      D1E74B7C93C20000000000000000000000000000000000000000000000000000
      0007101D26636DC3FFFF3E6F90C06DC3FFFF69BDF7FB01030421000000000000
      00000000000000000000437186B971BDE0EF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A99D89F10101011400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002040C3B2751F0FF2751F0FF081031740000
      000017308EC42751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF060D26670000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000075C3
      E7F33F6A7DB300000000000000000000000000000000000000000B151B545CA6
      D8EB6DC3FFFF6DC3FFFF6DC3FFFF5EA6DAEC0D18205B00000000000000000000
      00000000000000000000396071AA7ED1F9FC5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B1744882751F0FF2751F0FF000105270000
      0114274FEAFC2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF132877B40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006AB1
      D3E8497B92C1000000000000000000000000000000000101021967B9F1F86DC3
      FFFF4982A9D06DC3FFFF090F1449000000070000000000000000000000000000
      00000000000000000000437084B872BEE1F05782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782A9FF5782
      A9FF5782A9FF5782A9FF5782A9FF5782A9FF0000000000000000000000000000
      0000000000000000000000000000BCAC93FF00000000302F2D7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A79A86F00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C39A8D62751F0FF1C3BACD8000000000001
      0423081235790812357908123579081235790812357908123579081235790812
      3579081235790812357908123579081235790812357908123579081235790812
      3579081235790812357908123579070F2D700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004C7D
      95C36EB6D8EB00000001000000000000000000000000080F14496DC3FFFF4073
      96C404070A336DC3FFFF0000011104080B360305072B00000000000000000000
      0000000000000000000066ABCAE35289A3CC4D6883CB7DA6D2FF7DA6D2FF7DA6
      D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6
      D2FF7DA6D2FF7DA6D2FF7DA6D2FF97B9DEFF97B9DEFF7DA6D2FF7DA6D2FF7DA6
      D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6D2FF7DA6
      D2FF7DA6D2FF7DA6D2FF7DA6D2FF4D6883CB0000000000000000000000000000
      0000000000000000000000000000BCAC93FF000000006B665DBD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A99B86F10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000104242751F0FF2751F0FF0B18478B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000233A
      458582D7FFFF060A0C38000000000000000000000000020405256DC1FDFE5AA2
      D3E8101C25626DC3FFFF0E19215C67B7EFF74B86AED300000000000000000000
      0000000000000407082F82D7FFFF27424F8E0506083282AAD4FC86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF82AAD4FC050608320000000000000000000000000000
      0000000000000000000000000000BBAB92FE0000000004040325918776DF9288
      77E0928877E0928877E0928877E0928877E08F8677DC928878E08F8577DC0000
      0000000000000000000000000000AFA28BF60000000000000000000000000000
      00000000000000000000000000000000000014297AB614297AB614297AB61429
      7AB614297AB614297AB619359CCE2751F0FF2751F0FF02040E3E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000306
      072C81D5FDFE375B6CA6000000000000000000000000000000001D3343836DC1
      FDFE6DC3FFFF6DC3FFFF6DC3FFFF67B9F1F80D18205B00000000000000000000
      0000000000003152609D82D7FFFF05080A34000000002935438E86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF2935438E000000000000000000000000000000000000
      00000000000000000000000000006E685BC13935328A0505042A0505042A0505
      042A0505042A0505042A0505042A0505042A0505042A0505042A0505042A0505
      042A0505042A0505042A27242273948A7BE10000000000000000000000000000
      0000000000000000000000000000000000002751F0FF2751F0FF2751F0FF2751
      F0FF2751F0FF2751F0FF2751F0FF2751F0FF2246CDEC00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E677BB180D5FDFE080D1040000000000000000000000000000000000305
      072D213A4D8C6DC3FFFF172936760102031F0000000000000000000000000000
      0000060A0C397FD2F9FC437186B900000000000000000000000C6788A9E186AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF6788A9E10000000C000000000000000000000000000000000000
      000000000000000000000000000000000000292826764D473FA34D473FA34D47
      3FA34D473FA34D473FA34D473FA34D473FA34D473FA34D473FA34D473FA34D47
      3FA34D473FA34D473FA32F2E2A7F000000000000000000000000000000000000
      0000000000000000000000000000000000001C39A9D61C39A9D61C39A9D61C39
      A9D61C39A9D61C39A9D61C39A9D61C39A9D60C194A8E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000203042173C0E3F16AB0D1E7020405240000000000000000000000000000
      00000000000D1B303F7F00000002000000000000000000000000000000000103
      031F66AACAE376C5E9F4030505270000000000000000000000000C10144E86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF0C10144E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B13164C7ED0F7FB6AB0D1E7070C0F3E00000000000000000000
      0000000000000000000000000000000000000000000000000000060A0C3966AB
      CAE37FD2F9FC0D161A5300000000000000000000000000000000000000003D50
      65AE86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF3D5065AE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B13174D73C0E3F180D4FBFD345767A2050809320000
      0000000000000000000000000000000000000407082F3152629E7FD2F9FC76C5
      E9F40D161A530000000000000000000000000000000000000000000000000102
      021C789CC3F286AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF789C
      C3F20102021C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002030423406B7FB482D7FFFF82D7FFFF68AD
      CDE5437186B9396071AA437084B866ABCAE382D7FFFF82D7FFFF437186B90305
      0527000000000000000000000000000000000000000000000000000000000000
      00001820286E86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF1820
      286E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004070930263F4C8B5187
      A0CA71BDE0EF7ED1F9FC72BEE1F05289A3CC27424F8E05080A34000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003546E89CB86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFFA4C4E8FFA4C4E8FF86AEDAFF86AEDAFF86AE
      DAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF86AEDAFF546E89CB0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object som_fornecedor: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT     SUM(CONSULTORIA_COMPRA.valor) QNT'
      '           FROM CONSULTORIA_COMPRA'
      
        'WHERE ((CONSULTORIA_COMPRA.DATA >=:a) and (CONSULTORIA_COMPRA.da' +
        'ta <=:b)) and (CONSULTORIA_COMPRA.id_centro =:c)'
      
        'and (CONSULTORIA_COMPRA.id_depto =:d) and consultoria_compra.ID_' +
        'CLIENTE =:for')
    Left = 68
    Top = 232
    ParamData = <
      item
        Name = 'A'
        ParamType = ptInput
      end
      item
        Name = 'B'
        ParamType = ptInput
      end
      item
        Name = 'C'
        ParamType = ptInput
      end
      item
        Name = 'D'
        ParamType = ptInput
      end
      item
        Name = 'FOR'
        ParamType = ptInput
      end>
  end
  object Query_Somar: TFDQuery
    Connection = DM.FDConnection1
    Left = 268
    Top = 416
  end
  object QueryFiltrar: TFDQuery
    AfterOpen = QueryFiltrarAfterOpen
    AfterClose = QueryFiltrarAfterClose
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'SELECT distinct(REL_CONSULTORIA_COMPRA.departamento) from REL_CO' +
        'NSULTORIA_COMPRA ORDER BY departamento')
    Left = 241
    Top = 222
    object QueryFiltrarDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      Size = 50
    end
  end
  object DSFIltrar: TDataSource
    DataSet = QueryFiltrar
    Left = 177
    Top = 183
  end
  object QuerySomar: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(total)total from REL_CONSULTORIA_COMPRA')
    Left = 204
    object QuerySomarTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object DSSOMAR: TDataSource
    DataSet = QuerySomar
    Left = 753
    Top = 303
  end
  object TAB_FORNECEDOR: TFDTable
    IndexFieldNames = 'DEPARTAMENTO'
    MasterSource = DSFIltrar
    MasterFields = 'DEPARTAMENTO'
    Connection = DM.FDConnection1
    UpdateOptions.UpdateTableName = 'REL_CONSULTORIA_COMPRA'
    TableName = 'REL_CONSULTORIA_COMPRA'
    Left = 167
    Top = 127
    object TAB_FORNECEDORDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      Size = 50
    end
    object TAB_FORNECEDORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object TAB_FORNECEDORDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object TAB_FORNECEDORNFE: TStringField
      FieldName = 'NFE'
      Origin = 'NFE'
      Size = 10
    end
    object TAB_FORNECEDORPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Origin = 'PRODUTOS'
      Size = 100
    end
    object TAB_FORNECEDORMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object TAB_FORNECEDORCUSTO: TBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      currency = True
      Precision = 18
    end
    object TAB_FORNECEDORQNT: TBCDField
      FieldName = 'QNT'
      Origin = 'QNT'
      Precision = 18
      Size = 2
    end
    object TAB_FORNECEDORTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object TAB_FORNECEDORESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
    object TAB_FORNECEDORTOTAL_DEPTO: TBCDField
      FieldName = 'TOTAL_DEPTO'
      Origin = 'TOTAL_DEPTO'
      Precision = 18
    end
    object TAB_FORNECEDORTOTAL_CLI: TBCDField
      FieldName = 'TOTAL_CLI'
      Origin = 'TOTAL_CLI'
      currency = True
      Precision = 18
    end
    object TAB_FORNECEDORTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object TAB_FORNECEDORVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
  end
  object DS_TAB_FORNECEDOR: TDataSource
    DataSet = TAB_FORNECEDOR
    Left = 285
    Top = 65534
  end
  object Query_filtrar_2: TFDQuery
    AfterOpen = QueryFiltrarAfterOpen
    AfterClose = QueryFiltrarAfterClose
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * from REL_CONSULTORIA_COMPRA ORDER BY departamento')
    Left = 313
    Top = 238
    object Query_filtrar_2DEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      Size = 50
    end
    object Query_filtrar_2FORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object Query_filtrar_2DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Query_filtrar_2NFE: TStringField
      FieldName = 'NFE'
      Origin = 'NFE'
      Size = 10
    end
    object Query_filtrar_2PRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Origin = 'PRODUTOS'
      Size = 100
    end
    object Query_filtrar_2MARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object Query_filtrar_2CUSTO: TBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      currency = True
      Precision = 18
    end
    object Query_filtrar_2QNT: TBCDField
      FieldName = 'QNT'
      Origin = 'QNT'
      Precision = 18
      Size = 2
    end
    object Query_filtrar_2TOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object Query_filtrar_2ESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
    object Query_filtrar_2TOTAL_DEPTO: TBCDField
      FieldName = 'TOTAL_DEPTO'
      Origin = 'TOTAL_DEPTO'
      Precision = 18
    end
    object Query_filtrar_2TOTAL_CLI: TBCDField
      FieldName = 'TOTAL_CLI'
      Origin = 'TOTAL_CLI'
      Precision = 18
    end
    object Query_filtrar_2TIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Query_filtrar_2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
  end
  object DS_Query_filtrar_2: TDataSource
    DataSet = Query_filtrar_2
    Left = 313
    Top = 287
  end
end
