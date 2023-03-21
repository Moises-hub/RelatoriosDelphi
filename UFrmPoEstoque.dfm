object FrmPoEstoque: TFrmPoEstoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio'
  ClientHeight = 386
  ClientWidth = 764
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 89
    Width = 764
    Height = 297
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    GradientColorStyle = gcsCustom
    GradientColorStart = 13602864
    GradientColorStop = 10053171
    TabOrder = 0
    VisualStyle = vsClassic
    object Label1: TLabel
      Left = 35
      Top = 22
      Width = 59
      Height = 16
      Caption = 'Categoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 54
      Top = 59
      Width = 40
      Height = 16
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 43
      Top = 93
      Width = 51
      Height = 16
      Caption = 'Cole'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 134
      Width = 85
      Height = 16
      Caption = 'Departamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 52
      Top = 169
      Width = 42
      Height = 16
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 407
      Top = 230
      Width = 116
      Height = 36
      Cursor = crHandPoint
      Caption = 'Gerar em Excel'
      Images = FrmPrincipal.ImageList1
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 529
      Top = 230
      Width = 116
      Height = 35
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Images = FrmPrincipal.ImageList1
      TabOrder = 1
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 413
      Top = 21
      Width = 257
      Height = 17
      Caption = 'N'#227'o Mostrar Servi'#231'os e M'#227'o de Obra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 413
      Top = 45
      Width = 185
      Height = 17
      Caption = 'Somente Com Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RzComboBox1: TRzComboBox
      Left = 100
      Top = 22
      Width = 281
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object RzComboBox2: TRzComboBox
      Left = 100
      Top = 58
      Width = 281
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object RzComboBox3: TRzComboBox
      Left = 100
      Top = 92
      Width = 281
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox4: TCheckBox
      Left = 413
      Top = 68
      Width = 239
      Height = 17
      Caption = 'Mostrar pre'#231'o da embalagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Button4: TButton
      Left = 651
      Top = 230
      Width = 80
      Height = 35
      Cursor = crHandPoint
      Caption = 'Sair'
      Images = FrmPrincipal.ImageList1
      TabOrder = 8
      OnClick = Button4Click
    end
    object RzComboBox4: TRzComboBox
      Left = 100
      Top = 133
      Width = 281
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object RzComboBox5: TRzComboBox
      Left = 100
      Top = 166
      Width = 281
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = '<<TODOS>>'
      Items.Strings = (
        '<<TODOS>>'
        'ATIVOS'
        'INATIVOS')
      ItemIndex = 0
      Values.Strings = (
        '  '
        'and tipo <> 4'
        'and tipo = 4')
    end
    object Memo1: TMemo
      Left = 888
      Top = 24
      Width = 545
      Height = 185
      ScrollBars = ssVertical
      TabOrder = 11
    end
    object CheckBox3: TCheckBox
      Left = 413
      Top = 91
      Width = 239
      Height = 17
      Caption = 'Mostrar pre'#231'o de Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object CheckBox5: TCheckBox
      Left = 413
      Top = 114
      Width = 239
      Height = 17
      Caption = 'Mostrar pre'#231'o Min'#237'mo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object CheckBox6: TCheckBox
      Left = 413
      Top = 137
      Width = 239
      Height = 17
      Caption = 'Mostrar pre'#231'o Tabela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object CheckBox7: TCheckBox
      Left = 413
      Top = 183
      Width = 239
      Height = 17
      Caption = 'Mostrar Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object CheckBox8: TCheckBox
      Left = 413
      Top = 160
      Width = 239
      Height = 17
      Caption = 'Mostrar Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 89
    Align = alTop
    Caption = 'AGUARDE...'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 64
      Width = 762
      Height = 24
      Align = alBottom
      TabOrder = 0
    end
  end
  object RLReport1: TRLReport
    Left = -24
    Top = 414
    Width = 1123
    Height = 794
    DataSource = DS_Relatorio
    Degrade.Direction = ddHorizontal
    Degrade.OppositeColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    ShowExplosion = True
    Visible = False
    object RLBand4: TRLBand
      Left = 38
      Top = 169
      Width = 1047
      Height = 79
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clBtnFace
      ParentColor = False
      Transparent = False
      object RLDBText13: TRLDBText
        Left = 268
        Top = 12
        Width = 136
        Height = 14
        DataField = 'ESTOQUE'
        DataSource = DS_Soma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Estoque Total:     '
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 236
        Top = 34
        Width = 194
        Height = 14
        DataField = 'PRECO_CUSTO'
        DataSource = DS_Soma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Pre'#231'o de Custo Total:     '
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 241
        Top = 56
        Width = 198
        Height = 14
        DataField = 'PRECO_MINIMO'
        DataSource = DS_Soma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Pre'#231'o Minimo Total:     '
        Transparent = False
      end
      object RLDBText16: TRLDBText
        Left = 671
        Top = 12
        Width = 201
        Height = 14
        DataField = 'PRECO_TABELA'
        DataSource = DS_Soma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Total Pre'#231'o de Tabela:    '
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 644
        Top = 34
        Width = 216
        Height = 14
        DataField = 'EMBALAGEM'
        DataSource = DS_Soma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Total Custo de Embalagem:    '
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 636
        Top = 56
        Width = 258
        Height = 14
        DataField = 'PRECO_TAB_EMBAL'
        DataSource = DS_Soma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Pre'#231'o de Tabela Embalagem:    '
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 153
      Width = 1047
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 926
        Top = 1
        Width = 121
        Height = 15
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'gina '
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 87
      Width = 1047
      Height = 66
      DataFields = 'DEPTO'
      object RLBand1: TRLBand
        Left = 0
        Top = 25
        Width = 1047
        Height = 20
        BandType = btColumnHeader
        Color = clBtnFace
        ParentColor = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 13
          Top = 2
          Width = 10
          Height = 11
          Alignment = taCenter
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText2
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 216
          Top = 2
          Width = 44
          Height = 11
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText4
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 595
          Top = 2
          Width = 36
          Height = 11
          Alignment = taCenter
          Caption = 'ESTOQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText5
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 638
          Top = 2
          Width = 66
          Height = 11
          Caption = 'PRE'#199'O DE CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText1
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 801
          Top = 2
          Width = 67
          Height = 11
          Caption = 'VALOR DE VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText6
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 153
          Top = 2
          Width = 42
          Height = 11
          Caption = 'COD FABR.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText7
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 37
          Top = 2
          Width = 15
          Height = 11
          Caption = 'REF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText3
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 892
          Top = 2
          Width = 48
          Height = 11
          Caption = 'CUSTO EMB.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText8
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 957
          Top = 2
          Width = 75
          Height = 11
          Caption = 'VALOR V. POR EMB.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText9
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 79
          Top = 2
          Width = 52
          Height = 11
          Caption = 'COD. BARRAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText10
          ParentFont = False
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 722
          Top = 2
          Width = 61
          Height = 11
          Caption = 'PRE'#199'O MINIMO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText12
          ParentFont = False
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 384
          Top = 2
          Width = 44
          Height = 11
          Caption = 'CATEGORIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText19
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 486
          Top = 2
          Width = 30
          Height = 11
          Caption = 'MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLDBText20
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 45
        Width = 1047
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object RLDBText1: TRLDBText
          Left = 638
          Top = 0
          Width = 84
          Height = 17
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_CUSTO'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 0
          Top = 0
          Width = 37
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'ID_PRODUTO'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 216
          Top = 0
          Width = 168
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 588
          Top = 0
          Width = 50
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESTOQUE'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 801
          Top = 0
          Width = 91
          Height = 17
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_TABELA'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 153
          Top = 0
          Width = 63
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'CODIGO_FAB'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 37
          Top = 0
          Width = 42
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'REF'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 892
          Top = 0
          Width = 65
          Height = 17
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_CUSTO_EMB'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 957
          Top = 0
          Width = 79
          Height = 17
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_TABELA_EMB'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 79
          Top = 0
          Width = 74
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'CODIGO_BARRA'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 722
          Top = 0
          Width = 79
          Height = 17
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_MINIMO'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 384
          Top = 0
          Width = 102
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'CATEG'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 486
          Top = 0
          Width = 102
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'MARCA'
          DataSource = DS_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
        Height = 25
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        object RLSystemInfo2: TRLSystemInfo
          Left = 907
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
        object RLDBText11: TRLDBText
          Left = 103
          Top = 6
          Width = 48
          Height = 16
          DataField = 'DEPTO'
          DataSource = DS_Relatorio
          Text = ''
        end
        object RLLabel12: TRLLabel
          Left = 3
          Top = 6
          Width = 98
          Height = 16
          Caption = 'Departamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 49
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
        Height = 15
        Caption = 'RELAT'#211'RIO POSI'#199#195'O DE ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 907
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
  end
  object DS_Relatorio: TDataSource
    DataSet = Cli_Relatorio
    Left = 360
    Top = 56
  end
  object DT_Relatorio: TSQLDataSet
    CommandText = 
      'select '#13#10'                                     id_produto, '#13#10'    ' +
      '                                 sum(total) as total,  '#13#10'       ' +
      '                              DESCRICAO, '#13#10'                     ' +
      '                REF,  '#13#10'                                     EST' +
      'OQUE,  '#13#10'                                     cast(PRECO_CUSTO a' +
      's currency) as PRECO_CUSTO,  '#13#10'                                 ' +
      '    PRECO_MINIMO,  '#13#10'                                     PRECO_' +
      'TABELA, '#13#10'                                     CODIGO_FAB,  '#13#10'  ' +
      '                                   PRECO_CUSTO_EMB,  '#13#10'         ' +
      '                            PRECO_TABELA_EMB,  '#13#10'               ' +
      '                      CATEG,  '#13#10'                                ' +
      '     DEPTO,  '#13#10'                                     id_depto,  '#13 +
      #10'                                     CODIGO_BARRA  '#13#10'          ' +
      '                           from REL_POS_ESTOQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 208
    Top = 336
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from categorias'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 160
    Top = 72
  end
  object Prov_Relatorio: TDataSetProvider
    DataSet = DT_Relatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Top = 240
  end
  object Cli_Relatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Relatorio'
    Left = 32
    Top = 304
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 456
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel|.xlsx'
    Left = 820
    Top = 379
  end
  object SOMA: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select SUM(estoque) as ESTOQUE,'
      '       SUM(PRECO_CUSTO * estoque)AS PRECO_CUSTO,'
      '       SUM(PRECO_MINIMO * estoque) as PRECO_MINIMO,'
      '       SUM(PRECO_TABELA * estoque) as PRECO_TABELA,'
      '       SUM(PRECO_CUSTO_EMB * estoque) EMBALAGEM,'
      '       SUM(PRECO_TABELA_EMB * estoque) PRECO_TAB_EMBAL'
      '       from REL_POS_ESTOQUE_2')
    Left = 64
    Top = 312
    object SOMAESTOQUE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object SOMAPRECO_CUSTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object SOMAPRECO_MINIMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_MINIMO'
      Origin = 'PRECO_MINIMO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object SOMAPRECO_TABELA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_TABELA'
      Origin = 'PRECO_TABELA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object SOMAEMBALAGEM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'EMBALAGEM'
      Origin = 'EMBALAGEM'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object SOMAPRECO_TAB_EMBAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_TAB_EMBAL'
      Origin = 'PRECO_TAB_EMBAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object DS_Soma: TDataSource
    DataSet = SOMA
    Left = 64
    Top = 369
  end
end
