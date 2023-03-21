object Frm_Conf_DR2: TFrm_Conf_DR2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Frm_Conf_DR2'
  ClientHeight = 175
  ClientWidth = 324
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
  object Label1: TLabel
    Left = 22
    Top = 27
    Width = 79
    Height = 13
    Caption = 'Centro de Custo'
  end
  object Label2: TLabel
    Left = 336
    Top = 285
    Width = 20
    Height = 13
    Caption = 'Tipo'
    Visible = False
  end
  object Label3: TLabel
    Left = 81
    Top = 54
    Width = 20
    Height = 13
    Alignment = taRightJustify
    Caption = 'DRE'
  end
  object RzBitBtn1: TRzBitBtn
    Left = 175
    Top = 96
    Width = 115
    Height = 33
    Cursor = crHandPoint
    Caption = 'Plano de Contas'
    HotTrack = True
    TabOrder = 0
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object RzComboBox1: TRzComboBox
    Left = 112
    Top = 24
    Width = 178
    Height = 21
    TabOrder = 1
  end
  object RzComboBox2: TRzComboBox
    Left = 336
    Top = 304
    Width = 178
    Height = 21
    TabOrder = 2
    Visible = False
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
    Values.Strings = (
      '1'
      '2')
  end
  object RzComboBox3: TRzComboBox
    Left = 112
    Top = 51
    Width = 178
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'Dedu'#231#227'o de vendas'
      'Receitas diversas')
    Values.Strings = (
      '1'
      '2')
  end
  object Tab_Dre: TFDTable
    Connection = DM.FDConnection1
    UpdateOptions.UpdateTableName = 'DRE_2_PLANO'
    TableName = 'DRE_2_PLANO'
    Left = 696
    Top = 32
  end
  object DS_Tab_DRE: TDataSource
    DataSet = Tab_Dre
    Left = 696
    Top = 80
  end
end
