object Frm_DRE2: TFrm_DRE2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'DRE'
  ClientHeight = 216
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 369
    Height = 216
    Align = alClient
    TabOrder = 0
    VisualStyle = vsClassic
    ExplicitWidth = 365
    ExplicitHeight = 260
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 72
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 182
      Top = 21
      Width = 63
      Height = 16
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 83
      Width = 90
      Height = 13
      Caption = 'DEPARTAMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 368
      Top = 130
      Width = 100
      Height = 13
      Caption = 'CENTRO DE CUSTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 24
      Top = 43
      Width = 152
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 182
      Top = 43
      Width = 152
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object Button1: TButton
      Left = 230
      Top = 132
      Width = 104
      Height = 38
      Caption = 'Visualizar / Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object RzComboBox3: TRzComboBox
      Left = 24
      Top = 98
      Width = 310
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
    object RLReport1: TRLReport
      Left = 24
      Top = 272
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataSource = DSCD_Resumo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      BeforePrint = RLReport1BeforePrint
      object RLBand6: TRLBand
        Left = 39
        Top = 58
        Width = 716
        Height = 38
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel11: TRLLabel
          Left = 135
          Top = 0
          Width = 446
          Height = 19
          Align = faCenterTop
          Caption = 'DRE - DEMONSTRATIVO DE RESULTADO DO EXERC'#205'CIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 330
          Top = 22
          Width = 56
          Height = 15
          Align = faCenterBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 39
        Top = 39
        Width = 716
        Height = 19
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLSystemInfo3: TRLSystemInfo
          Left = 634
          Top = 0
          Width = 82
          Height = 18
          Align = faRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itPageNumber
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 0
          Top = 0
          Width = 81
          Height = 18
          Align = faLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itFullDate
          ParentFont = False
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 39
        Top = 96
        Width = 716
        Height = 26
        BeforePrint = RLBand1BeforePrint
        object RLDBText2: TRLDBText
          Left = 494
          Top = 0
          Width = 222
          Height = 26
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clSilver
          DataField = 'VALOR'
          DataSource = DSCD_Resumo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 494
          Height = 26
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clSilver
          DataField = 'DESCRICAO'
          DataSource = DSCD_Resumo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 132
      Width = 177
      Height = 38
      Columns = 2
      Items.Strings = (
        'Resumido'
        'Detalhado')
      TabOrder = 5
    end
    object RzComboBox1: TRzComboBox
      Left = 368
      Top = 149
      Width = 310
      Height = 21
      Style = csDropDownList
      TabOrder = 6
      Visible = False
    end
  end
  object DSCD_Resumo: TDataSource
    DataSet = cd_resumo
    Left = 568
    Top = 176
  end
  object cd_resumo: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from resumo3')
    Left = 560
    Top = 88
    object cd_resumoTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object cd_resumoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object cd_resumoVALOR: TSingleField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object cd_resumoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
  end
  object SQLQuery1: TFDQuery
    Connection = DM.FDConnection1
    Left = 592
    Top = 288
  end
  object FDStoredProc1: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'DRE_2'
    Left = 416
    Top = 40
    ParamData = <
      item
        Position = 1
        Name = 'INI_'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FIM_'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DPTO_'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
