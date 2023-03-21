object Frm_Funcionario: TFrm_Funcionario
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Vendedor'
  ClientHeight = 556
  ClientWidth = 583
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
  object CheckListBox1: TCheckListBox
    Left = 0
    Top = 145
    Width = 583
    Height = 370
    Align = alClient
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    HeaderBackgroundColor = clHighlightText
    ItemHeight = 18
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 49
    Align = alTop
    TabOrder = 1
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 579
      Height = 45
      Align = alClient
      ParentShowHint = False
      ShowHint = False
      Stretch = True
      ExplicitLeft = 4
      ExplicitTop = -2
      ExplicitWidth = 574
    end
    object RzLabel2: TRzLabel
      Left = 10
      Top = 13
      Width = 96
      Height = 19
      Caption = 'COMISS'#213'ES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 49
    Width = 583
    Height = 96
    Align = alTop
    BorderOuter = fsNone
    Color = clTeal
    GradientColorStyle = gcsCustom
    GradientColorStart = clBtnFace
    GradientColorStop = clWhite
    TabOrder = 2
    VisualStyle = vsGradient
    object RzLabel1: TRzLabel
      Left = 17
      Top = 9
      Width = 78
      Height = 19
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 499
      Top = 28
      Width = 37
      Height = 29
      ImageIndex = 127
      Images = FrmPrincipal.ImageList1
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 2
      Top = 73
      Width = 119
      Height = 17
      Caption = 'Selecionar Tudo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object RzDBEdit1: TRzDBEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      DataSource = DM.DS_CD_Funcionarios
      DataField = 'ID_FUNCIONARIO'
      ReadOnly = True
      Color = clInfoBk
      FocusColor = clWhite
      TabOrder = 2
    end
    object RzDBEdit2: TRzDBEdit
      Left = 144
      Top = 32
      Width = 349
      Height = 21
      DataSource = DM.DS_CD_Funcionarios
      DataField = 'NOME'
      ReadOnly = True
      Color = clInfoBk
      FocusColor = clWhite
      TabOrder = 3
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 515
    Width = 583
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    TabOrder = 3
    VisualStyle = vsGradient
    object BitBtn2: TBitBtn
      Left = 482
      Top = 5
      Width = 82
      Height = 28
      Caption = 'Sair'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object Button2: TButton
      Left = 400
      Top = 5
      Width = 76
      Height = 28
      Caption = 'Ok'
      ImageIndex = 15
      Images = FrmPrincipal.ImageList1
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Proc: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_FUN_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_FUN'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLConnection1
    StoredProcName = 'REL_COM_VENDEDOR'
    Left = 232
    Top = 112
  end
  object PROV_CAD_COMISSAO: TDataSetProvider
    DataSet = DS_CAD_COMISSAO
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 409
    Top = 160
  end
  object CD_CAD_COMISSAO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROV_CAD_COMISSAO'
    Left = 409
    Top = 216
    object CD_CAD_COMISSAOID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_CAD_COMISSAOVMIN: TFloatField
      FieldName = 'VMIN'
    end
    object CD_CAD_COMISSAOVMAX: TFloatField
      FieldName = 'VMAX'
    end
    object CD_CAD_COMISSAOPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 18
      Size = 2
    end
    object CD_CAD_COMISSAONOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_CAD_COMISSAOTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object DS_CD_CAD_COMISSAO: TDataSource
    DataSet = CD_CAD_COMISSAO
    Left = 409
    Top = 264
  end
  object DS_CAD_COMISSAO: TSQLDataSet
    CommandText = 'select * from REL_CAD_COMICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 345
    Top = 232
  end
  object R_VERIFICA: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 296
    Top = 120
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = R_VERIFICA
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 176
  end
  object VERIFICA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 296
    Top = 232
  end
  object DataSet: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 72
    Top = 200
  end
end
