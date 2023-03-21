object Frm_Usuario: TFrm_Usuario
  Left = 0
  Top = 0
  Caption = 'Frm_Usuario'
  ClientHeight = 393
  ClientWidth = 527
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
    Width = 527
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
    Width = 527
    Height = 349
    Align = alClient
    DataSource = DS_Query_Funcionario
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
        FieldName = 'ID_FUNCIONARIO'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 334
        Visible = True
      end>
  end
  object Query_Funcionario: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select funcionarios.nome,'
      '       funcionarios.id_funcionario'
      '       from funcionarios'
      '       where funcionarios.status = 1')
    Left = 312
    Top = 184
    object Query_FuncionarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object Query_FuncionarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DS_Query_Funcionario: TDataSource
    DataSet = Query_Funcionario
    Left = 400
    Top = 128
  end
end
