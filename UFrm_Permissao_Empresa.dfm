object Frm_Permissao_Empresa: TFrm_Permissao_Empresa
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 426
  ClientWidth = 572
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
    Width = 572
    Height = 49
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clActiveCaption
    GradientColorStop = clGradientInactiveCaption
    TabOrder = 0
    VisualStyle = vsGradient
    object RzLabel2: TRzLabel
      Left = 10
      Top = 13
      Width = 300
      Height = 19
      Caption = 'PERMISS'#213'ES ACESSO POR EMPRESA'
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
    Width = 572
    Height = 96
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlightText
    GradientColorStyle = gcsCustom
    GradientColorStart = clGradientInactiveCaption
    GradientColorStop = clActiveCaption
    TabOrder = 1
    VisualStyle = vsGradient
    object RzLabel1: TRzLabel
      Left = 10
      Top = 9
      Width = 54
      Height = 19
      Caption = 'Usu'#225'rio'
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
    Width = 572
    Height = 240
    Align = alClient
    BorderOuter = fsLowered
    GradientColorStart = clActiveCaption
    GradientColorStop = clGradientInactiveCaption
    TabOrder = 2
    VisualStyle = vsGradient
    object CheckListBox1: TCheckListBox
      Left = 2
      Top = 2
      Width = 568
      Height = 236
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
    Top = 385
    Width = 572
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clActiveCaption
    GradientColorStop = clGradientInactiveCaption
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
end
