object Frm_UF: TFrm_UF
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'UF'
  ClientHeight = 272
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RzComboBox3: TRzComboBox
    Left = 72
    Top = 24
    Width = 81
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
    Left = 159
    Top = 23
    Width = 53
    Height = 23
    Caption = '+'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 218
    Top = 23
    Width = 53
    Height = 23
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 72
    Top = 67
    Width = 185
    Height = 158
    Enabled = False
    ParentColor = True
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object RzBitBtn1: TRzBitBtn
    Left = 196
    Top = 231
    Height = 33
    TabOrder = 4
    OnClick = RzBitBtn1Click
    Kind = bkOK
  end
end
