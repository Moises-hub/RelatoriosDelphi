object Frm_Acessos: TFrm_Acessos
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Acessos / Permiss'#245'es'
  ClientHeight = 529
  ClientWidth = 578
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 578
    Height = 49
    Align = alTop
    TabOrder = 0
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 574
      Height = 45
      Align = alClient
      ParentShowHint = False
      ShowHint = False
      ExplicitLeft = 4
      ExplicitTop = -2
    end
    object RzLabel2: TRzLabel
      Left = 10
      Top = 13
      Width = 200
      Height = 19
      Caption = 'ACESSOS / PERMISS'#213'ES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 49
    Width = 578
    Height = 96
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlightText
    TabOrder = 1
    VisualStyle = vsGradient
    object RzLabel1: TRzLabel
      Left = 10
      Top = 9
      Width = 120
      Height = 19
      Caption = 'Grupo de Acesso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object Button1: TButton
      Left = 499
      Top = 27
      Width = 37
      Height = 29
      ImageIndex = 127
      Images = FrmPrincipal.ImageList1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 32
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 95
      Top = 32
      Width = 402
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 2
      Top = 73
      Width = 97
      Height = 17
      Caption = 'Selecionar Tudo'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 145
    Width = 578
    Height = 343
    Align = alClient
    BorderOuter = fsLowered
    TabOrder = 2
    object CheckListBox1: TCheckListBox
      Left = 2
      Top = 2
      Width = 574
      Height = 339
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 488
    Width = 578
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clBtnFace
    GradientColorStop = clWhite
    TabOrder = 3
    VisualStyle = vsGradient
    object BitBtn2: TBitBtn
      Left = 482
      Top = 5
      Width = 82
      Height = 28
      Caption = 'Sair'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object Button2: TButton
      Left = 400
      Top = 5
      Width = 76
      Height = 27
      Caption = 'Ok'
      ImageIndex = 15
      Images = FrmPrincipal.ImageList1
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DataSet: TSQLDataSet
    CommandText = 'select * from usuarios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 408
    Top = 121
  end
end
