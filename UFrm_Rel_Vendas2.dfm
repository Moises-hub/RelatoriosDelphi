object Frm_Rel_Vendas2: TFrm_Rel_Vendas2
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Vendas 2'
  ClientHeight = 289
  ClientWidth = 443
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
    Width = 443
    Height = 289
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    Transparent = True
    VisualStyle = vsGradient
    ExplicitWidth = 451
    ExplicitHeight = 281
    object Label2: TLabel
      Left = 28
      Top = 29
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
      Left = 233
      Top = 29
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
      Left = 38
      Top = 129
      Width = 54
      Height = 13
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 53
      Top = 99
      Width = 39
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 98
      Top = 26
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 295
      Top = 26
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox1: TRzComboBox
      Left = 98
      Top = 126
      Width = 318
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 53
      Top = 154
      Width = 145
      Height = 17
      Caption = 'Somente com Nota Fiscal'
      TabOrder = 3
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 184
      Top = 53
      Width = 232
      Height = 40
      Caption = ' '
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Data Emiss'#227'o'
        'Data Processamento')
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 53
      Top = 177
      Width = 145
      Height = 17
      Caption = 'Mostrar pre'#231'o de tabela'
      TabOrder = 5
    end
    object RLReport1: TRLReport
      Left = 1029
      Top = 53
      Width = 1123
      Height = 794
      DataSource = DS_Query_Venda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      Visible = False
      object RLGroup1: TRLGroup
        Left = 38
        Top = 117
        Width = 1047
        Height = 95
        Borders.Sides = sdAll
        DataFields = 'PEDIDO'
        BeforePrint = RLGroup1BeforePrint
        object RLDetailGrid1: TRLDetailGrid
          Left = 1
          Top = 51
          Width = 1045
          Height = 17
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 80
            Height = 17
            Align = faLeft
            AutoSize = False
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel2
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText2: TRLDBText
            Left = 277
            Top = 1
            Width = 203
            Height = 15
            AutoSize = False
            DataField = 'CLIENTE'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel3
            ParentFont = False
            Text = ''
          end
          object RLDBText4: TRLDBText
            Left = 480
            Top = 1
            Width = 214
            Height = 14
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel5
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 888
            Top = 1
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTD'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel7
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 790
            Top = 0
            Width = 98
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR_UNT'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel6
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 936
            Top = 0
            Width = 109
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VAOR_TOTAL'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel8
            ParentFont = False
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 80
            Top = 0
            Width = 145
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'VENDEDOR'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel13
            ParentFont = False
            Text = ''
          end
          object RLDBText10: TRLDBText
            Left = 225
            Top = 1
            Width = 52
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'NOTA_FISCAL'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel14
            ParentFont = False
            Text = ''
          end
          object RLDBText16: TRLDBText
            Left = 694
            Top = 3
            Width = 96
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PRECO_TABELA'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel1
            ParentFont = False
            Text = ''
          end
        end
        object RLBand1: TRLBand
          Left = 1
          Top = 31
          Width = 1045
          Height = 20
          BandType = btColumnHeader
          object RLLabel2: TRLLabel
            Left = 0
            Top = 0
            Width = 80
            Height = 20
            Align = faLeft
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 277
            Top = 0
            Width = 203
            Height = 20
            Align = faLeft
            AutoSize = False
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 480
            Top = 0
            Width = 214
            Height = 20
            Align = faClient
            AutoSize = False
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 790
            Top = 0
            Width = 98
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 888
            Top = 0
            Width = 48
            Height = 20
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qnt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 936
            Top = 0
            Width = 109
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total do Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 80
            Top = 0
            Width = 145
            Height = 20
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'VENDEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 225
            Top = 0
            Width = 52
            Height = 20
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'NFE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 694
            Top = 0
            Width = 96
            Height = 20
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pre'#231'o de Tabela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 1
          Top = 68
          Width = 1045
          Height = 26
          BandType = btSummary
          object RLLabel9: TRLLabel
            Left = 987
            Top = 12
            Width = 58
            Height = 14
            Align = faRightBottom
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 919
            Top = 0
            Width = 126
            Height = 13
            Align = faRightTop
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '    TOTAL DE VENDAS    '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 1
          Top = 1
          Width = 1045
          Height = 30
          BandType = btHeader
          object RLLabel4: TRLLabel
            Left = 3
            Top = 8
            Width = 51
            Height = 16
            Caption = 'PEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 60
            Top = 8
            Width = 53
            Height = 16
            DataField = 'PEDIDO'
            DataSource = DS_Query_Venda
            Text = ''
          end
        end
      end
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
        Height = 61
        BandType = btTitle
        object RLLabel11: TRLLabel
          Left = 14
          Top = 11
          Width = 151
          Height = 16
          Caption = 'RELAT'#211'RIO DE VENDAS'
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
      object RLBand5: TRLBand
        Left = 38
        Top = 250
        Width = 1047
        Height = 25
        BandType = btSummary
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
      end
      object RLBand7: TRLBand
        Left = 38
        Top = 212
        Width = 1047
        Height = 38
        BandType = btSummary
        object RLMemo1: TRLMemo
          Left = 691
          Top = 0
          Width = 178
          Height = 19
          Behavior = [beSiteExpander]
        end
        object RLMemo2: TRLMemo
          Left = 869
          Top = 0
          Width = 178
          Height = 19
          Behavior = [beSiteExpander]
        end
        object RLDBText8: TRLDBText
          Left = 830
          Top = 18
          Width = 217
          Height = 20
          Align = faRightBottom
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TOTAL'
          DataSource = DS_Query_Soma_Final
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'VALOR TOTAL DE VENDAS      '
        end
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 320
      Top = 154
      Width = 96
      Height = 66
      ItemIndex = 0
      Items.Strings = (
        'MODELO 1'
        'MODELO 2')
      TabOrder = 7
    end
    object RzBitBtn1: TRzBitBtn
      Left = 293
      Top = 226
      Width = 123
      Height = 33
      Cursor = crHandPoint
      Caption = 'Visualizar / Imprimir'
      HotTrack = True
      TabOrder = 8
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RLReport2: TRLReport
      Left = -1
      Top = 334
      Width = 1123
      Height = 794
      DataSource = DS_Query_Venda
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
      Visible = False
      object RLGroup2: TRLGroup
        Left = 38
        Top = 117
        Width = 1047
        Height = 95
        Borders.Sides = sdAll
        DataFields = 'PEDIDO'
        IntegralHeight = True
        BeforePrint = RLGroup2BeforePrint
        object RLDetailGrid2: TRLDetailGrid
          Left = 1
          Top = 41
          Width = 1045
          Height = 17
          object RLDBText11: TRLDBText
            Left = 0
            Top = 0
            Width = 80
            Height = 17
            Align = faLeft
            AutoSize = False
            DataField = 'DATA_HORA'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel15
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText12: TRLDBText
            Left = 80
            Top = 1
            Width = 224
            Height = 15
            AutoSize = False
            DataField = 'CLIENTE'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel17
            ParentFont = False
            Text = ''
          end
          object RLDBText13: TRLDBText
            Left = 304
            Top = 1
            Width = 263
            Height = 14
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel18
            ParentFont = False
            Text = ''
          end
          object RLDBText14: TRLDBText
            Left = 736
            Top = 1
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTD'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel20
            ParentFont = False
            Text = ''
          end
          object RLDBText15: TRLDBText
            Left = 651
            Top = 0
            Width = 85
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR_UNT'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel19
            ParentFont = False
            Text = ''
          end
          object RLDBText17: TRLDBText
            Left = 936
            Top = 0
            Width = 109
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VAOR_TOTAL'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel21
            ParentFont = False
            Text = ''
          end
          object RLDBText20: TRLDBText
            Left = 567
            Top = 3
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PRECO_TABELA'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel24
            ParentFont = False
            Text = ''
          end
          object RLDBText18: TRLDBText
            Left = 784
            Top = 0
            Width = 76
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VAOR_TOTAL'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel22
            ParentFont = False
            Text = ''
          end
          object RLDBText23: TRLDBText
            Left = 860
            Top = 0
            Width = 76
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DESCONTO'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLLabel31
            ParentFont = False
            Text = ''
          end
        end
        object RLBand8: TRLBand
          Left = 1
          Top = 21
          Width = 1045
          Height = 20
          BandType = btColumnHeader
          object RLLabel15: TRLLabel
            Left = 0
            Top = 0
            Width = 80
            Height = 20
            Align = faLeft
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 80
            Top = 0
            Width = 224
            Height = 20
            Align = faLeft
            AutoSize = False
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 304
            Top = 0
            Width = 263
            Height = 20
            Align = faClient
            AutoSize = False
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 651
            Top = 0
            Width = 85
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 736
            Top = 0
            Width = 48
            Height = 20
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qnt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 936
            Top = 0
            Width = 109
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total do Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 567
            Top = 0
            Width = 84
            Height = 20
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pre'#231'o de Tabela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 784
            Top = 0
            Width = 76
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total Prod'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 860
            Top = 0
            Width = 76
            Height = 20
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'V Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand9: TRLBand
          Left = 1
          Top = 58
          Width = 1045
          Height = 26
          BandType = btSummary
          object RLLabel25: TRLLabel
            Left = 987
            Top = 12
            Width = 58
            Height = 14
            Align = faRightBottom
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 919
            Top = 0
            Width = 126
            Height = 13
            Align = faRightTop
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '    TOTAL DE VENDAS    '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand10: TRLBand
          Left = 1
          Top = 1
          Width = 1045
          Height = 20
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = 15000804
          ParentColor = False
          Transparent = False
          object RLLabel27: TRLLabel
            Left = 3
            Top = 4
            Width = 51
            Height = 16
            Caption = 'PEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText21: TRLDBText
            Left = 55
            Top = 4
            Width = 53
            Height = 16
            DataField = 'PEDIDO'
            DataSource = DS_Query_Venda
            Text = ''
            Transparent = False
          end
          object RLLabel23: TRLLabel
            Left = 147
            Top = 4
            Width = 52
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'NFE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText19: TRLDBText
            Left = 200
            Top = 5
            Width = 73
            Height = 15
            AutoSize = False
            DataField = 'NOTA_FISCAL'
            DataSource = DS_Query_Venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
        end
      end
      object RLBand11: TRLBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 18
        BandType = btHeader
        object RLSystemInfo1: TRLSystemInfo
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
      object RLBand12: TRLBand
        Left = 38
        Top = 56
        Width = 1047
        Height = 61
        BandType = btTitle
        object RLLabel28: TRLLabel
          Left = 14
          Top = 11
          Width = 151
          Height = 16
          Caption = 'RELAT'#211'RIO DE VENDAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
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
      object RLBand13: TRLBand
        Left = 38
        Top = 289
        Width = 1047
        Height = 25
        BandType = btSummary
        object RLLabel30: TRLLabel
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
      end
      object RLBand14: TRLBand
        Left = 38
        Top = 212
        Width = 1047
        Height = 77
        BandType = btSummary
        object RLDraw1: TRLDraw
          Left = 760
          Top = -1
          Width = 287
          Height = 77
          Brush.Style = bsClear
        end
        object RLDBText22: TRLDBText
          Left = 946
          Top = 10
          Width = 49
          Height = 15
          Alignment = taRightJustify
          DataField = 'TOTAL_P'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText25: TRLDBText
          Left = 926
          Top = 32
          Width = 69
          Height = 15
          Alignment = taRightJustify
          DataField = 'TOTAL_DESC'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText24: TRLDBText
          Left = 947
          Top = 54
          Width = 48
          Height = 15
          Alignment = taRightJustify
          DataField = 'TOTAL_F'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel32: TRLLabel
          Left = 785
          Top = 9
          Width = 83
          Height = 15
          Caption = 'Total Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 785
          Top = 53
          Width = 71
          Height = 15
          Caption = 'Total Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 785
          Top = 31
          Width = 83
          Height = 15
          Caption = 'Total desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 98
      Top = 99
      Width = 318
      Height = 21
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DS_CLIENTES
      TabOrder = 10
    end
  end
  object Query_Venda: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select FIRST 100 * from rel_vendas'
      'ORDER BY PEDIDO,VENDEDOR')
    Left = 416
    Top = 360
    object Query_VendaDATA_HORA: TDateField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_VendaPROCESSAMENTO: TDateField
      FieldName = 'PROCESSAMENTO'
      Origin = 'PROCESSAMENTO'
    end
    object Query_VendaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object Query_VendaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object Query_VendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_VendaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      Size = 18
    end
    object Query_VendaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object Query_VendaQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object Query_VendaVALOR_UNT: TBCDField
      FieldName = 'VALOR_UNT'
      Origin = 'VALOR_UNT'
      currency = True
      Precision = 18
    end
    object Query_VendaPRECO_TABELA: TBCDField
      FieldName = 'PRECO_TABELA'
      Origin = 'PRECO_TABELA'
      currency = True
      Precision = 18
    end
    object Query_VendaDIFERENCA_UNT: TBCDField
      FieldName = 'DIFERENCA_UNT'
      Origin = 'DIFERENCA_UNT'
      currency = True
      Precision = 18
    end
    object Query_VendaDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      Origin = 'DIFERENCA'
      currency = True
    end
    object Query_VendaVAOR_TOTAL: TFloatField
      FieldName = 'VAOR_TOTAL'
      Origin = 'VAOR_TOTAL'
      currency = True
    end
    object Query_VendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_VendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 53
    end
    object Query_VendaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_VendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
    end
    object Query_VendaTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DS_Query_Venda: TDataSource
    DataSet = Query_Venda
    Left = 256
    Top = 392
  end
  object Query_Soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select sum(rel_vendas.vaor_total)as total from rel_vendas where ' +
        'pedido =:f')
    Left = 488
    Top = 424
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Query_Soma2: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select sum(rel_vendas.vaor_total)as total,vendedor from rel_vend' +
        'as where pedido =:f'
      'group by vendedor')
    Left = 320
    Top = 368
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Query_Soma2TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_Soma2VENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
  end
  object Query_Soma_Final: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(rel_vendas.vaor_total)as total from rel_vendas')
    Left = 368
    Top = 296
    object Query_Soma_FinalTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object DS_Query_Soma_Final: TDataSource
    DataSet = Query_Soma_Final
    Left = 320
    Top = 296
  end
  object Query_Soma3: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT sum(REL_VENDAS.total)TOTAL_P,'
      '       sum(REL_VENDAS.desconto)TOTAL_DESC,'
      '       sum(REL_VENDAS.vaor_total)TOTAL_F FROM REL_VENDAS')
    Left = 32
    Top = 352
    object Query_Soma3TOTAL_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_P'
      Origin = 'TOTAL_P'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_Soma3TOTAL_DESC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_DESC'
      Origin = 'TOTAL_DESC'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object Query_Soma3TOTAL_F: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_F'
      Origin = 'TOTAL_F'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object Query_Clientes: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select '#39'<<TODOS>>'#39' NOME,'
      '       '#39' '#39' ID'
      '       FROM RDB$DATABASE'
      '       UNION'
      'select UPPER(COALESCE(clientes.nome,CLIENTES.nome_fantasia)),'
      '       '#39'and REL_VENDAS.id_cliente ='#39'|| clientes.id_cliente'
      '       FROM CLIENTES'
      
        '       WHERE clientes.nome IS NOT NULL AND  CLIENTES.nome_fantas' +
        'ia IS NOT NULL')
    Left = 568
    Top = 40
    object Query_ClientesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Query_ClientesID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object DS_CLIENTES: TDataSource
    DataSet = Query_Clientes
    Left = 648
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = Query_Soma3
    Left = 32
    Top = 424
  end
end
