object Frm_DRE_2_Plano: TFrm_DRE_2_Plano
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 619
  ClientWidth = 645
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
  object CheckListBox1: TCheckListBox
    Left = 0
    Top = 0
    Width = 645
    Height = 554
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 554
    Width = 645
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object RzButton1: TRzButton
      Left = 528
      Top = 16
      Width = 105
      Height = 41
      Cursor = crHandPoint
      FrameColor = clWhite
      Caption = 'Ok'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      HotTrackColor = clNavy
      ParentFont = False
      TabOrder = 0
      ThemeAware = False
      OnClick = RzButton1Click
    end
  end
end
