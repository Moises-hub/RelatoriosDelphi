object Frm_Ent_Pedido: TFrm_Ent_Pedido
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Pedidos'
  ClientHeight = 334
  ClientWidth = 312
  Color = clBtnFace
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
  object RzComboBox3: TRzComboBox
    Left = 32
    Top = 16
    Width = 129
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RR'
      'RO'
      'RJ'
      'RN'
      'RS'
      'SC'
      'SP'
      'SE'
      'TO')
    Values.Strings = (
      '')
  end
  object Button2: TButton
    Left = 167
    Top = 15
    Width = 53
    Height = 23
    Caption = '+'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 226
    Top = 15
    Width = 53
    Height = 23
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 59
    Width = 249
    Height = 206
    Enabled = False
    ParentColor = True
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object RzBitBtn1: TRzBitBtn
    Left = 206
    Top = 280
    Height = 33
    TabOrder = 4
    Kind = bkOK
  end
end
