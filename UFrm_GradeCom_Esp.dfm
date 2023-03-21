object Frm_GradeCom_Esp: TFrm_GradeCom_Esp
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 381
  ClientWidth = 442
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
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 47
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitLeft = -101
    ExplicitTop = 202
    ExplicitWidth = 548
    object Label2: TLabel
      Left = 18
      Top = 4
      Width = 113
      Height = 13
      Caption = 'LOCALIZAR ESP'#201'CIE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 18
      Top = 19
      Width = 207
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 231
      Top = 10
      Width = 87
      Height = 31
      Caption = 'Novo'
      ImageIndex = 6
      Images = FrmPrincipal.ImageList1
      TabOrder = 1
    end
    object Button3: TButton
      Left = 324
      Top = 10
      Width = 77
      Height = 31
      Caption = 'Excluir'
      ImageIndex = 108
      Images = FrmPrincipal.ImageList1
      TabOrder = 2
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 47
    Width = 442
    Height = 293
    Align = alClient
    BorderStyle = bsNone
    DataSource = DS_Rel_CadComicao_Esp
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ESPECIE'
        Width = 301
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMISSAO'
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 340
    Width = 442
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 2
    ExplicitLeft = 136
    ExplicitTop = 248
    ExplicitWidth = 185
    object Button4: TButton
      Left = 326
      Top = 6
      Width = 75
      Height = 32
      Caption = 'Sair'
      ImageIndex = 115
      Images = FrmPrincipal.ImageList1
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 175
      Top = 6
      Width = 86
      Height = 31
      Caption = 'Adicionar'
      TabOrder = 1
    end
  end
  object Prov_Rel_CadComicao_Esp: TDataSetProvider
    DataSet = Rel_CadComicao_Esp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 410
    Top = 136
  end
  object CD_Rel_CadComicao_Esp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Rel_CadComicao_Esp'
    Left = 410
    Top = 184
    object CD_Rel_CadComicao_EspID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object CD_Rel_CadComicao_EspESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object CD_Rel_CadComicao_EspCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      EditFormat = '##.##%'
      Precision = 18
      Size = 2
    end
  end
  object DS_Rel_CadComicao_Esp: TDataSource
    DataSet = CD_Rel_CadComicao_Esp
    Left = 410
    Top = 240
  end
  object Rel_CadComicao_Esp: TSQLDataSet
    CommandText = 
      'select  Rel_CadComicao_Esp.id_especie, Rel_CadComicao_Esp.especi' +
      'e, Rel_CadComicao_Esp.comissao from Rel_CadComicao_Esp'#13#10'group by' +
      ' Rel_CadComicao_Esp.id_especie,Rel_CadComicao_Esp.especie, Rel_C' +
      'adComicao_Esp.comissao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 410
    Top = 88
  end
end
