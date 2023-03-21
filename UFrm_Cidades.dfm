object Frm_Cidades: TFrm_Cidades
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cidades'
  ClientHeight = 605
  ClientWidth = 478
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 393
    Width = 478
    Height = 172
    Align = alClient
    ParentColor = True
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    ExplicitTop = 395
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 65
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 810
    object Label1: TLabel
      Left = 15
      Top = 26
      Width = 38
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 59
      Top = 23
      Width = 396
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 478
    Height = 288
    Align = alTop
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 353
    Width = 478
    Height = 40
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 3
    ExplicitWidth = 810
    object Label2: TLabel
      Left = 0
      Top = 6
      Width = 253
      Height = 13
      Caption = '*Para Selecionar Varios Registro aperte a tecla CTRL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 362
      Top = 4
      Width = 53
      Height = 32
      Align = alRight
      Caption = '+'
      TabOrder = 0
      OnClick = Button2Click
      ExplicitLeft = 20
      ExplicitTop = 6
      ExplicitHeight = 23
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 421
      Top = 4
      Width = 53
      Height = 32
      Align = alRight
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = 79
      ExplicitTop = 6
      ExplicitHeight = 23
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 565
    Width = 478
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 4
    ExplicitTop = 361
    ExplicitWidth = 810
    object RzBitBtn1: TRzBitBtn
      Left = 402
      Top = 1
      Height = 38
      Align = alRight
      TabOrder = 0
      Kind = bkOK
      ExplicitLeft = 796
      ExplicitTop = 6
      ExplicitHeight = 33
    end
  end
  object cidade: TFDQuery
    Connection = DM.FDConnection1
    Left = 656
    Top = 440
  end
  object DataSource1: TDataSource
    DataSet = cidade
    Left = 368
    Top = 400
  end
end
