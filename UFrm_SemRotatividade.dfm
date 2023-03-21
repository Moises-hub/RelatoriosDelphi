object Frm_SemRotatividade: TFrm_SemRotatividade
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = ' '
  ClientHeight = 262
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 565
    Height = 262
    Align = alClient
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitHeight = 244
    object Label2: TLabel
      Left = 33
      Top = 53
      Width = 132
      Height = 13
      Caption = 'Sem Rotatividade Ap'#243's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 33
      Top = 13
      Width = 209
      Height = 16
      Caption = 'PRODUTOS SEM ROTATIVIDADE 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 68
      Top = 93
      Width = 97
      Height = 13
      Caption = 'Data Compra At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 104
      Top = 136
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 82
      Top = 181
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 189
      Top = 50
      Width = 126
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 189
      Top = 90
      Width = 126
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 327
      Top = 36
      Width = 194
      Height = 84
      Caption = ' '
      GradientColorStyle = gcsCustom
      ItemFrameColor = clWhite
      ItemHighlightColor = clBtnFace
      ItemIndex = 0
      Items.Strings = (
        'Ambos'
        'Somente com Estoque'
        'Com Estoque 0 ou abaixo de 0')
      ParentColor = True
      TextHighlightColor = clMedGray
      TextShadowColor = clGray
      TabOrder = 2
      Transparent = True
    end
    object RzComboBox1: TRzComboBox
      Left = 189
      Top = 133
      Width = 196
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
    end
    object RzComboBox2: TRzComboBox
      Left = 189
      Top = 178
      Width = 196
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
    end
    object RzBitBtn1: TRzBitBtn
      Left = 416
      Top = 169
      Width = 105
      Height = 38
      Caption = 'Filtrar / Visualizar'
      HotTrack = True
      TabOrder = 5
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RLReport1: TRLReport
      Left = 12
      Top = 266
      Width = 1123
      Height = 794
      DataSource = DS_CD_Produto
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
          Left = 8
          Top = 16
          Width = 288
          Height = 16
          Caption = 'LISTAGEM DE PRODUTOS SEM ROTATIVIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 0
          Top = 0
          Width = 1047
          Height = 18
          Align = faTop
          Alignment = taCenter
          DataField = 'RAZAO_SOCIAL'
          DataSource = DM.DS_Emitente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 31
          Width = 244
          Height = 15
          Caption = 'LISTAGEM DE PRODUTOS SEM ROTATIVIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
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
          Left = 30
          Top = 1
          Width = 294
          Height = 22
          Align = faLeft
          AutoSize = False
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 414
          Top = 1
          Width = 100
          Height = 22
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = #218'LTIMA COMPRA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = 1
          Width = 30
          Height = 22
          Align = faLeft
          Caption = 'COD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 1003
          Top = 1
          Width = 44
          Height = 22
          Align = faRight
          Alignment = taCenter
          Caption = 'ESTOQUE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 324
          Top = 1
          Width = 90
          Height = 22
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = #218'LTIMA SA'#205'DA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 514
          Top = 1
          Width = 199
          Height = 22
          Align = faLeft
          AutoSize = False
          Caption = 'CATEGORIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 713
          Top = 1
          Width = 152
          Height = 22
          Align = faLeft
          AutoSize = False
          Caption = 'SUBCATEGORIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 865
          Top = 1
          Width = 138
          Height = 22
          Align = faClient
          AutoSize = False
          Caption = 'DEPARTAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
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
          Top = -1
          Width = 30
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ID_PRODUTO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 30
          Top = -1
          Width = 294
          Height = 15
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 414
          Top = 0
          Width = 100
          Height = 16
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          DataField = 'ULTIMA_COMPRA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 1003
          Top = 0
          Width = 44
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESTOQUE'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 324
          Top = 0
          Width = 90
          Height = 16
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          DataField = 'ULTIMA_SAIDA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 514
          Top = 0
          Width = 199
          Height = 16
          Align = faRight
          AutoSize = False
          DataField = 'CATEGORIA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 713
          Top = 0
          Width = 152
          Height = 16
          Align = faRight
          AutoSize = False
          DataField = 'SUBCATEGORIA'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 865
          Top = 0
          Width = 138
          Height = 16
          Align = faRight
          AutoSize = False
          DataField = 'DEPARTAMENTO'
          DataSource = DS_CD_Produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
    end
    object CheckBox1: TCheckBox
      Left = 77
      Top = 220
      Width = 269
      Height = 17
      Caption = 'Mostrar produtos sem Nenhuma Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object DS_CD_Produto: TDataSource
    DataSet = FDQuery1
    Left = 504
    Top = 208
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select first 10 REL_LIST_PRODUTOS1.id_produto,'
      '       REL_LIST_PRODUTOS1.descricao,'
      '       REL_LIST_PRODUTOS1.ultima_entrada as ultima_compra,'
      '       REL_LIST_PRODUTOS1.ultima_saida,'
      '       REL_LIST_PRODUTOS1.estoque from REL_LIST_PRODUTOS1'
      
        '--WHERE ID_PRODUTO IS NOT NULL And ULTIMA_SAIDA <:apos and (rel_' +
        'list_produtos1.ultima_entrada <=:compra_ate)')
    Left = 536
    Top = 120
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQuery1ULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Origin = 'ULTIMA_ENTRADA'
    end
    object FDQuery1ULTIMA_SAIDA: TDateField
      FieldName = 'ULTIMA_SAIDA'
      Origin = 'ULTIMA_SAIDA'
    end
    object FDQuery1CATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object FDQuery1SUBCATEGORIA: TStringField
      FieldName = 'SUBCATEGORIA'
      Size = 50
    end
    object FDQuery1DEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 50
    end
    object FDQuery1ESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 528
    Top = 32
  end
end
