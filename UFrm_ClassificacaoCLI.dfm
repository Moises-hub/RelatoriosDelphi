object Frm_ClassificacaoCLI: TFrm_ClassificacaoCLI
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Classificacao '
  ClientHeight = 271
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzComboBox1: TRzComboBox
    Left = 24
    Top = 24
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 0
    Text = 'N'#227'o Definido'
    Items.Strings = (
      'N'#227'o Definido'
      'Inativo'
      'Ruim'
      'Regular'
      'Bom'
      'Otimo'
      'Preferencial'
      'Pendente'
      'Em Cobran'#231'a'
      'Iadimplente'
      'Negativo')
    ItemIndex = 0
    Values.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '96'
      '97'
      '98'
      '99')
  end
  object Memo1: TMemo
    Left = 24
    Top = 75
    Width = 332
    Height = 158
    Enabled = False
    ParentColor = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Button2: TButton
    Left = 247
    Top = 23
    Width = 53
    Height = 23
    Caption = '+'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 303
    Top = 23
    Width = 53
    Height = 23
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
