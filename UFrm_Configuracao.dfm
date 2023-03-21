object Frm_Configuracao: TFrm_Configuracao
  Left = 0
  Top = 0
  Caption = 'Frm_Configuracao'
  ClientHeight = 370
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Vers'#227'o'
  end
  object Label2: TLabel
    Left = 456
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 74
    Top = 67
    Width = 96
    Height = 13
    Caption = 'Data de Atualiza'#231#227'o'
  end
  object DBEdit1: TDBEdit
    Left = 192
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Tab_Config: TFDTable
    Connection = DM.FDConnection1
    UpdateOptions.UpdateTableName = 'REL_CONFIG'
    TableName = 'REL_CONFIG'
    Left = 584
    Top = 128
    object Tab_ConfigID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object Tab_ConfigVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object Tab_ConfigDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object Tab_ConfigLOGIN_POR_EMPRESA: TIntegerField
      FieldName = 'LOGIN_POR_EMPRESA'
      Origin = 'LOGIN_POR_EMPRESA'
    end
  end
  object DS_Tab_Config: TDataSource
    DataSet = Tab_Config
    Left = 584
    Top = 184
  end
end
