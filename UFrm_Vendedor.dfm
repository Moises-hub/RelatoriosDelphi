object Frm_Vendedor: TFrm_Vendedor
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Vendedor'
  ClientHeight = 450
  ClientWidth = 476
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 42
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStop = clSkyBlue
    TabOrder = 0
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 34
      Top = 14
      Width = 66
      Height = 13
      Caption = 'LOCALIZAR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 106
      Top = 12
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
    object BitBtn2: TBitBtn
      Left = 400
      Top = 8
      Width = 68
      Height = 28
      Caption = 'Sair'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 476
    Height = 408
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    DataSource = DM.DS_CD_Funcionarios
    DrawingStyle = gdsGradient
    FixedColor = clMoneyGreen
    GradientEndColor = clWhite
    GradientStartColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 459
        Visible = True
      end>
  end
end
