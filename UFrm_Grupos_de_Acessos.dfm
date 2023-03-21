object Frm_Grupos_de_Acessos: TFrm_Grupos_de_Acessos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Grupos de Acessos'
  ClientHeight = 385
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = Edit1Change
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 44
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    object Edit1: TEdit
      Left = 48
      Top = 12
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 44
    Width = 376
    Height = 341
    Align = alClient
    DataSource = DS_CD_Grupos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_GRUPO'
        Title.Caption = 'ID'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 282
        Visible = True
      end>
  end
  object Dataset: TSQLDataSet
    CommandText = 'select * from Grupos_Acessos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 224
    Top = 120
  end
  object Prov_Grupo: TDataSetProvider
    DataSet = Dataset
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 224
    Top = 176
  end
  object CD_Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Grupo'
    Left = 224
    Top = 232
    object CD_GruposID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object CD_GruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object DS_CD_Grupos: TDataSource
    DataSet = CD_Grupos
    Left = 224
    Top = 288
  end
end
