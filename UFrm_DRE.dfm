object Frm_DRE: TFrm_DRE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'DRE'
  ClientHeight = 195
  ClientWidth = 382
  Color = clWhite
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
    Width = 382
    Height = 195
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 852
    ExplicitHeight = 419
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
      Top = 125
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
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
    end
    object RLReport1: TRLReport
      Left = -40
      Top = 184
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
      Top = 128
      Width = 177
      Height = 38
      Columns = 2
      Items.Strings = (
        'Resumido'
        'Detalhado')
      TabOrder = 5
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 88
    Top = 200
  end
  object Proc_DRE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Precision = 4
        Name = 'INI_'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'FIM_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'DPTO_'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'INI'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'FIM'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'DPTO'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLConnection1
    StoredProcName = 'DRE'
    Left = 584
    Top = 112
  end
  object DS_Resumo: TSQLDataSet
    CommandText = 'select * from resumo3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 48
    Top = 176
  end
  object Prov_Resumo: TDataSetProvider
    DataSet = DS_Resumo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 48
    Top = 232
  end
  object CD_Resumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Resumo'
    Left = 40
    Top = 288
    object CD_ResumoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object CD_ResumoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object CD_ResumoVALOR: TSingleField
      FieldName = 'VALOR'
      currency = True
    end
    object CD_ResumoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DSCD_Resumo: TDataSource
    DataSet = CD_Resumo
    Left = 40
    Top = 344
  end
end
