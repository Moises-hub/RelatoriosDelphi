object Frm_Alterar_Preco: TFrm_Alterar_Preco
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Alterar Preco'
  ClientHeight = 174
  ClientWidth = 477
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
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 471
    Height = 22
    Align = alTop
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 332
  end
  object Label2: TLabel
    Left = 96
    Top = 56
    Width = 73
    Height = 13
    Caption = 'Pre'#231'o de Custo'
  end
  object Label3: TLabel
    Left = 186
    Top = 56
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Minimo'
  end
  object Label4: TLabel
    Left = 276
    Top = 56
    Width = 77
    Height = 13
    Caption = 'Pre'#231'o de Tabela'
  end
  object Edit1: TEdit
    Left = 96
    Top = 72
    Width = 84
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 186
    Top = 72
    Width = 84
    Height = 21
    Alignment = taRightJustify
    TabOrder = 1
    Text = '0'
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 276
    Top = 72
    Width = 84
    Height = 21
    Alignment = taRightJustify
    TabOrder = 2
    Text = '0'
    OnKeyPress = Edit3KeyPress
  end
  object RzBitBtn1: TRzBitBtn
    Left = 204
    Top = 112
    Caption = 'Atualizar'
    HotTrack = True
    TabOrder = 3
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object RzBitBtn2: TRzBitBtn
    Left = 285
    Top = 112
    Caption = 'Cancelar'
    HotTrack = True
    TabOrder = 4
    ThemeAware = False
    OnClick = RzBitBtn2Click
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'update produto_precos'
      
        'set preco_custo =:a,preco_minimo =:b,preco_tabela =:c,data_updat' +
        'e = current_timestamp'
      'where id_produto =:d')
    Left = 424
    Top = 32
    ParamData = <
      item
        Name = 'A'
        ParamType = ptInput
      end
      item
        Name = 'B'
        ParamType = ptInput
      end
      item
        Name = 'C'
        ParamType = ptInput
      end
      item
        Name = 'D'
        ParamType = ptInput
      end>
  end
end
