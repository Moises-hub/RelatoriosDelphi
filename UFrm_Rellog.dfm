object Frm_Rellog: TFrm_Rellog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'RELAT'#211'RIO'
  ClientHeight = 487
  ClientWidth = 1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1102
    Height = 362
    Align = alClient
    DataSource = DS_Relatorio
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 257
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPUTADOR'
        Width = 242
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TABELA'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CHAVE'
        Title.Caption = 'CHAVE'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CASE'
        Title.Caption = 'PROCESSO'
        Width = 139
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 362
    Width = 1102
    Height = 125
    Align = alBottom
    TabOrder = 1
    VisualStyle = vsGradient
    object Label3: TLabel
      Left = 386
      Top = 14
      Width = 46
      Height = 13
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 359
      Top = 47
      Width = 73
      Height = 13
      Caption = 'Computador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 375
      Top = 82
      Width = 51
      Height = 13
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 6
      Width = 345
      Height = 55
      Align = alCustom
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 21
        Top = 24
        Width = 12
        Height = 13
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 179
        Top = 28
        Width = 6
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 40
        Top = 24
        Width = 121
        Height = 21
        EditType = etDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 200
        Top = 23
        Width = 121
        Height = 21
        EditType = etDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object Button1: TButton
      Left = 616
      Top = 6
      Width = 73
      Height = 49
      Caption = 'Filtrar'
      ImageAlignment = iaTop
      ImageIndex = 124
      Images = FrmPrincipal.ImageList1
      TabOrder = 1
      OnClick = Button1Click
    end
    object RzComboBox1: TRzComboBox
      Left = 440
      Top = 9
      Width = 167
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RzComboBox2: TRzComboBox
      Left = 440
      Top = 45
      Width = 167
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 840
      Top = 2
      Width = 260
      Height = 121
      Align = alRight
      Alignment = taCenter
      DataField = 'DADOS'
      DataSource = DS_Relatorio
      TabOrder = 4
    end
    object Button2: TButton
      Left = 616
      Top = 61
      Width = 73
      Height = 49
      Caption = 'Imprimir'
      ImageAlignment = iaTop
      ImageIndex = 288
      Images = FrmPrincipal.ImageList1
      TabOrder = 5
      OnClick = Button2Click
    end
    object RzComboBox3: TRzComboBox
      Left = 440
      Top = 80
      Width = 167
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
      Items.Strings = (
        '<TODOS>'
        'EXCLUS'#195'O'
        'CANCELAMENTO'
        'ALTERA'#199#195'O'
        'LIQUIDA'#199#195'O'
        'INCLUS'#195'O'
        'INUTILIZA'#199#195'O'
        'CORRE'#199#195'O'
        'DEVOLU'#199#195'O'
        'CLONAGEM'
        'IMPRESS'#195'O'
        'REIMPRESS'#195'O')
      Values.Strings = (
        ''
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11')
    end
  end
  object RLReport1: TRLReport
    Left = 191
    Top = 156
    Width = 1123
    Height = 794
    DataSource = DS_Relatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 65
      Width = 1047
      Height = 20
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clActiveBorder
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 2
        Width = 88
        Height = 16
        Caption = 'DATA / HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText2
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 136
        Top = 2
        Width = 42
        Height = 16
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText4
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 313
        Top = 2
        Width = 47
        Height = 16
        Caption = 'COMP.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText5
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 413
        Top = 1
        Width = 55
        Height = 16
        Caption = 'TABELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText1
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 537
        Top = 2
        Width = 48
        Height = 16
        Caption = 'CHAVE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText7
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 696
        Top = 3
        Width = 50
        Height = 16
        Caption = 'DADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 591
        Top = 2
        Width = 77
        Height = 16
        Caption = 'PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText6
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 85
      Width = 1047
      Height = 40
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      BeforePrint = RLBand2BeforePrint
      object RLDBText1: TRLDBText
        Left = 413
        Top = 2
        Width = 92
        Height = 14
        AutoSize = False
        DataField = 'TABELA'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 3
        Top = 2
        Width = 72
        Height = 14
        AutoSize = False
        DataField = 'DATA'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 76
        Top = 2
        Width = 58
        Height = 14
        AutoSize = False
        DataField = 'HORA'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 136
        Top = 2
        Width = 175
        Height = 14
        AutoSize = False
        DataField = 'NOME'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 313
        Top = 2
        Width = 100
        Height = 14
        AutoSize = False
        DataField = 'COMPUTADOR'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 537
        Top = 2
        Width = 48
        Height = 14
        AutoSize = False
        DataField = 'ID_CHAVE'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 696
        Top = 0
        Width = 347
        Height = 42
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'DADOS'
        DataSource = DS_Relatorio
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 591
        Top = 2
        Width = 102
        Height = 14
        AutoSize = False
        DataField = 'CASE'
        DataSource = DS_Relatorio
        Text = ''
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 27
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      object RLLabel7: TRLLabel
        Left = 441
        Top = 4
        Width = 164
        Height = 19
        Align = faCenter
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Width = 2
        Caption = 'RELAT'#211'RIO DE LOG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 125
      Width = 1047
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      object RLSystemInfo1: TRLSystemInfo
        Left = 946
        Top = 0
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
    end
  end
  object DT_Relatorio: TSQLDataSet
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        Name = 'IN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FN'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection1
    Left = 152
    Top = 208
  end
  object Prov_Relatorio: TDataSetProvider
    DataSet = DT_Relatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 264
  end
  object Cli_Relatorio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'IN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FN'
        ParamType = ptInput
      end>
    ProviderName = 'Prov_Relatorio'
    Left = 152
    Top = 320
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IN'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '#39'+'
      '                              '#39'log.DATA,'#39'+'
      '                               '#39'log.hora, '#39'+'
      '                                '#39'log.processo, '#39'+'
      '                               '#39'log.tabela, '#39'+'
      '                                '#39'log.id_chave, '#39'+'
      '                                '#39'log.computador, '#39'+'
      '                                '#39'log.dados,'#39'+'
      '                                '#39'case '#39'+'
      
        '                                '#39'when (LOG.processo = 01) then c' +
        'ast('#39#39'EXCLUS'#195'O'#39#39' as varchar(20))'#39' +'
      
        '                                '#39'when (LOG.processo = 02) then c' +
        'ast('#39#39'CANCELAMENTO'#39#39' as varchar(20))'#39'+'
      
        '                                '#39'when (LOG.processo = 03) then c' +
        'ast('#39#39'ALTERA'#199#195#39#39' as varchar(20)) '#39'+'
      
        '                                '#39'when (LOG.processo = 04) then c' +
        'ast('#39#39'LIQUIDA'#199#195'O'#39#39' as varchar(20))'#39'+'
      
        '                                '#39'when (LOG.processo = 05) then c' +
        'ast('#39#39'INCLUS'#195'O'#39#39' as varchar(20))'#39'+'
      
        '                                '#39'when (LOG.processo = 06) then c' +
        'ast('#39#39'INUTILIZA'#199#195'O'#39#39' as varchar(20))'#39'+'
      
        '                                '#39'when (LOG.processo = 07) then c' +
        'ast('#39#39'CORRE'#199#195'O'#39#39' as varchar(20))'#39' +'
      
        '                                '#39'when (LOG.processo = 08) then c' +
        'ast('#39#39'DEVOLU'#199#195'O'#39#39' as varchar(20))'#39'+'
      
        '                                '#39'when (LOG.processo = 09) then c' +
        'ast('#39#39'CLONAGEM'#39#39' as varchar(20))  '#39' +'
      
        '                                '#39'when (LOG.processo = 10) then c' +
        'ast('#39#39'IMPRESS'#195'O'#39#39' as varchar(20))   '#39'+'
      
        '                                '#39'when (LOG.processo = 11) then c' +
        'ast('#39#39'REIMPRESS'#195'O'#39#39' as varchar(20))'#39' +'
      '                                '#39'end,'#39'+'
      '                                '#39'FUNCIONARIOS.nome '#39'+'
      '                                '#39'from log '#39'+'
      
        '                                '#39'inner join FUNCIONARIOS ON(FUNC' +
        'IONARIOS.ID_FUNCIONARIO = LOG.ID_USER) '#39'+'
      
        '                                '#39'WHERE LOG.DATA >:IN AND LOG.DAT' +
        'A <:FN AND FUNCIONARIOS.NOME LIKE '#39#39#39'+RzComboBox1.VALUE+'#39#39#39#39'+'#39' A' +
        'ND LOG.COMPUTADOR LIKE '#39#39#39'+RzComboBox2.Value+'#39#39#39#39';')
    SQLConnection = DM.SQLConnection1
    Left = 288
    Top = 280
  end
  object DS_Relatorio: TDataSource
    DataSet = Cli_Relatorio
    Left = 256
    Top = 312
  end
end
