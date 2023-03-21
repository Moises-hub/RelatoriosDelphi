object Frm_Rel_SimilarDEPTO: TFrm_Rel_SimilarDEPTO
  Left = 0
  Top = 0
  Caption = 'Similar por Departamento'
  ClientHeight = 672
  ClientWidth = 1257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 1257
    Height = 480
    Align = alClient
    DataSource = DS_Query_FIltro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'produto'
        Title.Caption = 'PRODUTO'
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QNT_VENDIDA'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ref'
        Title.Caption = 'REFER'#202'NCIA'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo_fab'
        Title.Caption = 'C'#211'D F'#193'BRICA'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ESTOQUE'
        Width = 88
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 282
    Top = 479
    Width = 1123
    Height = 794
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DS_Query_FIltro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand4: TRLBand
      Left = 39
      Top = 39
      Width = 1045
      Height = 57
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 388
        Height = 20
        Align = faLeftTop
        Caption = 'RELAT'#211'RIO ESTOQUE DE SIMILAR  POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 998
        Top = 0
        Width = 47
        Height = 13
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 3
        Top = 22
        Width = 300
        Height = 16
        Caption = 'RELAT'#211'RIO ESTOQUE DE SIMILAR  POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 3
        Top = 39
        Width = 300
        Height = 16
        Caption = 'RELAT'#211'RIO ESTOQUE DE SIMILAR  POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 731
        Top = 35
        Width = 300
        Height = 16
        Caption = 'RELAT'#211'RIO ESTOQUE DE SIMILAR  POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 185
      Width = 1045
      Height = 17
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 952
        Top = 0
        Width = 93
        Height = 13
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
        Text = '/ '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 884
        Top = 0
        Width = 68
        Height = 13
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 39
      Top = 160
      Width = 1045
      Height = 25
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      object RLDBText8: TRLDBText
        Left = 962
        Top = 3
        Width = 81
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'MOV'
        DataSource = DS_QuerySoma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 899
        Top = 3
        Width = 64
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'ESTOQUE'
        DataSource = DS_QuerySoma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 39
      Top = 96
      Width = 1045
      Height = 64
      DataFields = 'ref'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1045
        Height = 28
        BandType = btColumnHeader
        object RLLabel3: TRLLabel
          Left = 3
          Top = 5
          Width = 86
          Height = 20
          Caption = 'REFER'#202'NCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 90
          Top = 5
          Width = 87
          Height = 18
          AutoSize = False
          DataField = 'ref'
          DataSource = DS_Query_FIltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 28
        Width = 1045
        Height = 13
        BandType = btColumnHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        object RLLabel6: TRLLabel
          Left = 0
          Top = 0
          Width = 286
          Height = 13
          Align = faLeft
          AutoSize = False
          Caption = 'PRODUTO'
        end
        object RLLabel1: TRLLabel
          Left = 499
          Top = 0
          Width = 80
          Height = 13
          Align = faLeft
          AutoSize = False
          Caption = 'COD DE F'#193'BRICA'
        end
        object RLLabel4: TRLLabel
          Left = 366
          Top = 0
          Width = 133
          Height = 13
          Align = faLeft
          AutoSize = False
          Caption = 'MARCA'
        end
        object RLLabel5: TRLLabel
          Left = 959
          Top = 0
          Width = 86
          Height = 13
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'QNT MOVIMENTADA'
        end
        object RLLabel7: TRLLabel
          Left = 286
          Top = 0
          Width = 80
          Height = 13
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'QNT VENDIDA'
        end
        object RLLabel8: TRLLabel
          Left = 896
          Top = 0
          Width = 63
          Height = 13
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'ESTOQUE'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 41
        Width = 1045
        Height = 19
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 1
          Width = 286
          Height = 13
          AutoSize = False
          DataField = 'produto'
          DataSource = DS_Query_FIltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 499
          Top = 1
          Width = 80
          Height = 13
          AutoSize = False
          DataField = 'codigo_fab'
          DataSource = DS_Query_FIltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 366
          Top = 1
          Width = 133
          Height = 13
          AutoSize = False
          DataField = 'MARCA'
          DataSource = DS_Query_FIltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 965
          Top = 1
          Width = 85
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'QNT_MOV'
          DataSource = DS_Query_FIltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 286
          Top = 1
          Width = 80
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'QNT_VENDIDA'
          DataSource = DS_Query_FIltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 899
          Top = 1
          Width = 63
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'TOTAL_ESTOQUE'
          DataSource = DS_Query_FIltro
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1257
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 617
      Top = 72
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 637
      Top = 45
      Width = 35
      Height = 13
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 392
      Top = 73
      Width = 61
      Height = 13
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 390
      Top = 17
      Width = 61
      Height = 13
      Caption = 'ID Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 388
      Top = 45
      Width = 65
      Height = 13
      Caption = 'C'#243'd Fabrica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 589
      Top = 17
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
    object dxLookupTreeView1: TdxLookupTreeView
      Left = 681
      Top = 70
      Width = 233
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 0
      TabStop = True
      Text = 'TODOS'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      Visible = False
      DisplayField = 'DESCRICAO'
      DividedChar = '.'
      ListSource = DS_Categorias
      KeyField = 'ID_CATEGORIA'
      ListField = 'DESCRICAO'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'PAI'
      RootValue = Null
      TextStyle = tvtsShort
      Alignment = taLeftJustify
    end
    object RzComboBox1: TRzComboBox
      Left = 681
      Top = 42
      Width = 233
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 459
      Top = 69
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 459
      Top = 14
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object RzBitBtn1: TRzBitBtn
      Left = 933
      Top = 66
      Width = 92
      Caption = 'Filtrar'
      HotTrack = True
      TabOrder = 4
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 1031
      Top = 66
      Width = 92
      Caption = 'Imprimir'
      HotTrack = True
      TabOrder = 5
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
    object Edit3: TEdit
      Left = 459
      Top = 42
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object RzGroupBox1: TRzGroupBox
      Left = 16
      Top = 1
      Width = 337
      Height = 48
      Caption = 'Per'#237'odo de Venda'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      TabOrder = 7
      object Label6: TLabel
        Left = 15
        Top = 19
        Width = 14
        Height = 13
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 171
        Top = 19
        Width = 7
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 35
        Top = 16
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 194
        Top = 16
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 16
      Top = 64
      Width = 337
      Height = 48
      Caption = 'Mov por Item'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      TabOrder = 8
      object Label8: TLabel
        Left = 15
        Top = 19
        Width = 14
        Height = 13
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 171
        Top = 19
        Width = 7
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzDateTimeEdit3: TRzDateTimeEdit
        Left = 35
        Top = 16
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit4: TRzDateTimeEdit
        Left = 194
        Top = 16
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
    end
    object RzComboBox2: TRzComboBox
      Left = 681
      Top = 14
      Width = 233
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 9
    end
    object Button1: TButton
      Left = 1067
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 10
      Visible = False
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    Left = 558
    Top = 487
    Width = 737
    Height = 236
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 609
    Width = 1257
    Height = 63
    Align = alBottom
    BevelOuter = bvNone
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 4
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 624
      Top = 3
      Width = 630
      Height = 57
      Align = alRight
      BorderStyle = bsNone
      DataSource = DS_QuerySoma
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Calibri'
      TitleFont.Style = [fsBold]
    end
  end
  object RLReport2: TRLReport
    Left = 51
    Top = 189
    Width = 1123
    Height = 794
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DS_Query_Similar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand7: TRLBand
      Left = 39
      Top = 39
      Width = 1045
      Height = 42
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      object RLSystemInfo4: TRLSystemInfo
        Left = 998
        Top = 0
        Width = 47
        Height = 13
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object RLLabel13: TRLLabel
        Left = 3
        Top = 22
        Width = 300
        Height = 16
        Caption = 'RELAT'#211'RIO ESTOQUE DE SIMILAR  POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 3
        Top = 1
        Width = 86
        Height = 20
        Caption = 'REFER'#202'NCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 90
        Top = 1
        Width = 87
        Height = 18
        AutoSize = False
        DataField = 'ref'
        DataSource = DS_Query_Similar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLBand8: TRLBand
      Left = 39
      Top = 138
      Width = 1045
      Height = 17
      BandType = btFooter
      object RLSystemInfo5: TRLSystemInfo
        Left = 952
        Top = 0
        Width = 93
        Height = 13
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
        Text = '/ '
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 884
        Top = 0
        Width = 68
        Height = 13
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
    object RLBand9: TRLBand
      Left = 39
      Top = 113
      Width = 1045
      Height = 25
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Width = 2
      Borders.FixedTop = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      object RLDBResult1: TRLDBResult
        Left = 960
        Top = 6
        Width = 86
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'MOV'
        DataSource = DS_Query_Similar
        DisplayMask = '#,###,##0.00'
        Holder = RLDBText17
        Info = riSum
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 896
        Top = 6
        Width = 63
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DS_Query_Similar
        DisplayMask = '#,###,##0.00'
        Holder = RLDBText18
        Info = riSum
        Text = ''
      end
    end
    object RLBand11: TRLBand
      Left = 39
      Top = 81
      Width = 1045
      Height = 13
      BandType = btColumnHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel17: TRLLabel
        Left = 0
        Top = 0
        Width = 281
        Height = 13
        Align = faLeft
        AutoSize = False
        Caption = 'PRODUTO'
      end
      object RLLabel18: TRLLabel
        Left = 369
        Top = 0
        Width = 80
        Height = 13
        Align = faLeft
        AutoSize = False
        Caption = 'COD DE F'#193'BRICA'
      end
      object RLLabel19: TRLLabel
        Left = 281
        Top = 0
        Width = 88
        Height = 13
        Align = faLeft
        AutoSize = False
        Caption = 'MARCA'
      end
      object RLLabel22: TRLLabel
        Left = 896
        Top = 0
        Width = 63
        Height = 13
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'ESTOQUE'
      end
      object RLLabel15: TRLLabel
        Left = 959
        Top = 0
        Width = 86
        Height = 13
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'QNT MOVIMENTADA'
      end
    end
    object RLBand12: TRLBand
      Left = 39
      Top = 94
      Width = 1045
      Height = 19
      GreenBarColor = clWhite
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      BeforePrint = RLBand2BeforePrint
      object RLDBText13: TRLDBText
        Left = 0
        Top = 1
        Width = 281
        Height = 13
        AutoSize = False
        DataField = 'produto'
        DataSource = DS_Query_Similar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel17
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 369
        Top = 1
        Width = 80
        Height = 13
        AutoSize = False
        DataField = 'codigo_fab'
        DataSource = DS_Query_Similar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel18
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 281
        Top = 1
        Width = 88
        Height = 13
        AutoSize = False
        DataField = 'MARCA'
        DataSource = DS_Query_Similar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel19
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 896
        Top = 1
        Width = 63
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DS_Query_Similar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel22
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 960
        Top = 1
        Width = 86
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'MOV'
        DataSource = DS_Query_Similar
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
  object DS_Query_FIltro: TDataSource
    DataSet = Query_filtro
    Left = 1080
    Top = 104
  end
  object Query_categoria: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select 2 AS I,descricao,id_categoria,pai from categorias'
      'UNION'
      'select 1,'#39'TODOS'#39',0,0 from RDB$DATABASE')
    Left = 48
    Top = 328
    object Query_categoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Query_categoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_categoriaPAI: TIntegerField
      FieldName = 'PAI'
      Origin = 'PAI'
    end
    object Query_categoriaI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'I'
      Origin = 'I'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_Categorias: TDataSource
    DataSet = Query_categoria
    Left = 112
    Top = 408
  end
  object Query_filtro: TFDQuery
    Connection = DM.FDConnection1
    Left = 1088
    Top = 40
  end
  object Query_Soma: TFDQuery
    Connection = DM.FDConnection1
    Left = 1192
    Top = 40
  end
  object DS_QuerySoma: TDataSource
    DataSet = Query_Soma
    Left = 1192
    Top = 104
  end
  object Query_Similar: TFDQuery
    Connection = DM.FDConnection1
    Left = 232
    Top = 208
  end
  object DS_Query_Similar: TDataSource
    DataSet = Query_Similar
    Left = 312
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 192
    object Similar1: TMenuItem
      Caption = 'Similar'
      OnClick = DBGrid1DblClick
    end
  end
  object Query_SomaSimilar: TFDQuery
    Connection = DM.FDConnection1
    Left = 648
    Top = 272
  end
  object DS_Query_SomaSimilar: TDataSource
    DataSet = Query_SomaSimilar
    Left = 728
    Top = 304
  end
end
