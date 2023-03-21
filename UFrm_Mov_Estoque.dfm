object Frm_Mov_Estoque: TFrm_Mov_Estoque
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Estoque REAL / RESERVADO'
  ClientHeight = 285
  ClientWidth = 555
  Color = 11974326
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
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 549
    Height = 232
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 540
    ExplicitHeight = 218
    object Label3: TLabel
      Left = 35
      Top = 70
      Width = 69
      Height = 13
      Caption = 'Departamento'
    end
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 320
      Top = 24
      Width = 193
      Caption = ''
      ItemIndex = 2
      Items.Strings = (
        'Somente com Estoque'
        'Somente com Estoque Negativo'
        'Todos')
      TabOrder = 0
      Transparent = True
      VisualStyle = vsGradient
    end
    object RzBitBtn1: TRzBitBtn
      Left = 320
      Top = 156
      Width = 193
      Height = 37
      Caption = 'Filtrar'
      HotTrack = True
      HotTrackColor = clGray
      TabOrder = 1
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzComboBox1: TRzComboBox
      Left = 32
      Top = 89
      Width = 265
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 568
      Top = 23
      Width = 433
      Height = 253
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
    end
    object dxLookupTreeView1: TdxLookupTreeView
      Left = 32
      Top = 43
      Width = 265
      Height = 21
      Cursor = crHandPoint
      CanSelectParents = True
      ParentColor = False
      TabOrder = 4
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
      DisplayField = 'FILHO'
      DividedChar = '.'
      ListSource = DS_Query_Categoria
      KeyField = 'ID_CATEGORIA'
      ListField = 'CATEGORIA'
      Options = [trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'ID_PAI'
      RootValue = Null
      TextStyle = tvtsShort
      Alignment = taLeftJustify
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 549
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'ESTOQUE E/S'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 540
  end
  object RLReport1: TRLReport
    Left = -24
    Top = 320
    Width = 1123
    Height = 794
    DataSource = DS_Query_Estoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 43
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 16
        Top = 16
        Width = 253
        Height = 19
        Caption = 'ESTOQUE REAL E RESERVADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 955
        Top = 0
        Width = 92
        Height = 14
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = 'Emiss'#227'o '
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 1047
      Height = 34
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 1
        Top = 0
        Width = 34
        Height = 33
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'ID'
        Layout = tlCenter
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 35
        Top = 0
        Width = 270
        Height = 33
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'PRODUTO'
        Layout = tlCenter
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 707
        Top = 0
        Width = 128
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'SALDO PREVISTO'
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 448
        Top = 15
        Width = 64
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 512
        Top = 15
        Width = 64
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 576
        Top = 15
        Width = 66
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 642
        Top = 15
        Width = 64
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 706
        Top = 15
        Width = 65
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'FIXADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 771
        Top = 15
        Width = 64
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'ABERTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 305
        Top = 0
        Width = 144
        Height = 33
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'CATEGORIA'
        Layout = tlCenter
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 838
        Top = 0
        Width = 96
        Height = 33
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'SALDO AP.'
        Layout = tlCenter
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 576
        Top = 0
        Width = 130
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Caption = 'RESERVA ABERTA'
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 448
        Top = 0
        Width = 128
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Caption = 'RESERVA FIXADA'
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 934
        Top = 0
        Width = 112
        Height = 33
        Align = faRight
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'SALDO DISP.'
        Layout = tlCenter
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 115
      Width = 1047
      Height = 19
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object RLDBText1: TRLDBText
        Left = 1
        Top = 0
        Width = 34
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'ID_PRODUTO'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel2
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 35
        Top = 0
        Width = 270
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'DESCRICAO'
        DataSource = DS_Query_Estoque
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
        Left = 305
        Top = 0
        Width = 144
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'CATEGORIA'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel16
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 448
        Top = 0
        Width = 64
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'RESERVA_FE'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel11
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 576
        Top = 0
        Width = 66
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'RESERVA_AE'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 512
        Top = 0
        Width = 64
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'RESERVA_FS'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel12
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 642
        Top = 0
        Width = 64
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'RESERVA_AE'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel13
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 706
        Top = 0
        Width = 65
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'SALDO_FIXADO'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel14
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 771
        Top = 0
        Width = 64
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'SALDO_ABERTO'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel15
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 838
        Top = 0
        Width = 96
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataField = 'ESTOQUEA'
        DataSource = DS_Query_Estoque
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
        Left = 934
        Top = -1
        Width = 112
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'SALDO_D'
        DataSource = DS_Query_Estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Holder = RLLabel10
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 134
      Width = 1047
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 876
        Top = 1
        Width = 171
        Height = 15
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPagePreview
        ParentFont = False
        Text = '# / #'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 1
        Width = 106
        Height = 15
        Align = faLeft
        Caption = 'Coliseu Sistemas'
      end
    end
  end
  object Query_Categoria: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select LISTA_CATEGORIAS.id_categoria,LISTA_CATEGORIAS.id_pai,lis' +
        'ta_categorias.filho,categoria from LISTA_CATEGORIAS'
      'union'
      'select 0,0,'#39'TODOS'#39','#39'TODOS'#39' from rdb$database')
    Left = 640
    Top = 16
    object Query_CategoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object Query_CategoriaID_PAI: TIntegerField
      FieldName = 'ID_PAI'
      Origin = 'ID_PAI'
    end
    object Query_CategoriaFILHO: TStringField
      FieldName = 'FILHO'
      Origin = 'FILHO'
      Size = 50
    end
    object Query_CategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 103
    end
  end
  object DS_Query_Categoria: TDataSource
    DataSet = Query_Categoria
    Left = 736
    Top = 8
  end
  object DS_Query_Estoque: TDataSource
    DataSet = Query_Estoque
    Left = 651
    Top = 266
  end
  object Query_Estoque: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select REL_IC_ESTOQUE_RR.id_produto,'
      '       REL_IC_ESTOQUE_RR.descricao,'
      '       categorias.descricao CATEGORIA,'
      '       REL_IC_ESTOQUE_RR.saldo_real,'
      '       REL_IC_ESTOQUE_RR.reserva_fe,'
      '       REL_IC_ESTOQUE_RR.reserva_fs,'
      '       REL_IC_ESTOQUE_RR.reserva_as,'
      '       REL_IC_ESTOQUE_RR.reserva_ae,'
      '       REL_IC_ESTOQUE_RR.saldo_fixado,'
      '       REL_IC_ESTOQUE_RR.saldo_aberto,'
      
        '       (SELECT FIRST 1 tabelaprodutos.estoquea  FROM  tabelaprod' +
        'utos WHERE tabelaprodutos.id_produto = REL_IC_ESTOQUE_RR.id_prod' +
        'uto AND tabelaprodutos.id_depto = REL_IC_ESTOQUE_RR.id_depto),'
      
        '       (SELECT FIRST 1 tabelaprodutos.estoque - tabelaprodutos.e' +
        'stoqueA saldo_d  FROM  tabelaprodutos WHERE tabelaprodutos.id_pr' +
        'oduto = REL_IC_ESTOQUE_RR.id_produto AND tabelaprodutos.id_depto' +
        ' = REL_IC_ESTOQUE_RR.id_depto)'
      '       FROM REL_IC_ESTOQUE_RR'
      
        '       LEFT JOIN CATEGORIAS ON CATEGORIAS.id_categoria = REL_IC_' +
        'ESTOQUE_RR.id_categoria'
      '       WHERE  REL_IC_ESTOQUE_RR.descricao IS NOT NULL')
    Left = 667
    Top = 90
    object Query_EstoqueID_PRODUTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_PRODUTO'
      Origin = 'REL_IC_ESTOQUE_RR.ID_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueDESCRICAO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DESCRICAO'
      Origin = 'REL_IC_ESTOQUE_RR.DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Query_EstoqueCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIAS.DESCRICAO'
      Size = 50
    end
    object Query_EstoqueSALDO_REAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SALDO_REAL'
      Origin = 'REL_IC_ESTOQUE_RR.SALDO_REAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueRESERVA_FE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'RESERVA_FE'
      Origin = 'REL_IC_ESTOQUE_RR.RESERVA_FE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueRESERVA_FS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'RESERVA_FS'
      Origin = 'REL_IC_ESTOQUE_RR.RESERVA_FS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueRESERVA_AS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'RESERVA_AS'
      Origin = 'REL_IC_ESTOQUE_RR.RESERVA_AS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueRESERVA_AE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'RESERVA_AE'
      Origin = 'REL_IC_ESTOQUE_RR.RESERVA_AE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueSALDO_FIXADO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SALDO_FIXADO'
      Origin = 'REL_IC_ESTOQUE_RR.SALDO_FIXADO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueSALDO_ABERTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SALDO_ABERTO'
      Origin = 'REL_IC_ESTOQUE_RR.SALDO_ABERTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_EstoqueESTOQUEA: TFloatField
      FieldName = 'ESTOQUEA'
      Origin = 'TABELAPRODUTOS.ESTOQUEA'
    end
    object Query_EstoqueSALDO_D: TFloatField
      FieldName = 'SALDO_D'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
