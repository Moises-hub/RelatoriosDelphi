object FrmNatOperacao: TFrmNatOperacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Selecione a Natureza'
  ClientHeight = 473
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 473
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 32
      Top = 80
      Width = 466
      Height = 329
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_FISCAL'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 363
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 151
      Top = 40
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
    end
    object RadioGroup1: TRadioGroup
      Left = 32
      Top = 17
      Width = 113
      Height = 57
      Caption = 'Selecione a Busca'
      ItemIndex = 1
      Items.Strings = (
        'CFOP'
        'Descri'#231#227'o')
      TabOrder = 2
    end
    object Button1: TButton
      Left = 422
      Top = 415
      Width = 75
      Height = 41
      Caption = '+'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Form1.Query_Nat
    Left = 144
    Top = 120
  end
end
