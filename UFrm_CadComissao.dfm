object Frm_CadComissao: TFrm_CadComissao
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Comiss'#227'o'
  ClientHeight = 557
  ClientWidth = 503
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
  object RzPanel2: TRzPanel
    Left = 0
    Top = 38
    Width = 503
    Height = 123
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsMSOffice
    TabOrder = 0
    VisualStyle = vsGradient
    object Label2: TLabel
      Left = 75
      Top = 32
      Width = 53
      Height = 19
      Caption = 'Minimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 279
      Top = 32
      Width = 64
      Height = 19
      Caption = 'M'#225'ximo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 79
      Width = 121
      Height = 19
      Caption = 'Percentual(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDBLabel1: TRzDBLabel
      Left = 105
      Top = 6
      Width = 63
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      TextStyle = tsRaised
      DataField = 'ID'
      DataSource = DM.DS_CD_CAD_COMISSAO
    end
    object Label1: TLabel
      Left = 14
      Top = 7
      Width = 85
      Height = 19
      Caption = 'ID Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 29
      Width = 121
      Height = 27
      DataField = 'VMIN'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 359
      Top = 29
      Width = 121
      Height = 27
      DataField = 'VMAX'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 79
      Width = 121
      Height = 27
      DataField = 'PORCENTAGEM'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 393
    Width = 503
    Height = 164
    Align = alBottom
    Color = clWhite
    DataSource = DM.DS_CD_Comissao
    DrawingStyle = gdsGradient
    FixedColor = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 487
        Visible = True
      end>
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 357
    Width = 503
    Height = 36
    Align = alBottom
    BorderOuter = fsNone
    GradientColorStyle = gcsMSOffice
    GradientColorStart = clHotLight
    GradientColorStop = clHotLight
    TabOrder = 2
    VisualStyle = vsGradient
    object Edit1: TEdit
      Left = 61
      Top = 6
      Width = 282
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 376
      Top = 3
      Width = 104
      Height = 33
      Caption = 'Vendedor(+)'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 38
    Align = alTop
    BorderOuter = fsNone
    BorderShadow = clAppWorkSpace
    Color = clWhite
    GradientColorStyle = gcsMSOffice
    TabOrder = 3
    VisualStyle = vsGradient
    object SpeedButton1: TSpeedButton
      Left = 248
      Top = 2
      Width = 39
      Height = 30
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C538D254D87876664F2
        EEEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF254F8C0170
        D2045FB521518C714744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        245C9E057AD8009DF200A6F50079CE1E508AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3EBF4094C991D92E71CA8F205ACF300A9F30480DB2E66A6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE3ECF50754A23AA3EB47B6F53EB9F521ADF30784DA4D81B7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE3EDF6055BAD5EB9F074C8F76AC6F647B9F6177C
        CD5E91C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EDF70560B77AC9F299D9FA93D6F9
        6FC7F72084D05D98CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDBD2D2DDD4D4E8E2E2FFFFFFFFFFFFFFFFFF0060C492D7F5B2
        E5FCACE0FB93D6FA2990D95C9BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC5B5B56842445D3032876058875E586F4440592D319A7F81C6AF
        B0708DB10075CFA2DEF8B1E5FD339DDE5AA1DAFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFECE7E7684141845D5AE3D9CAFFFFEFFFFEE6FFFBDFFFF7D8
        F5E5C3AE8673653739A57E7C81A5C40081DB35A4E257A6E1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F8532829D2C2BAFFFFFFFFFCF1FCF6E7F9
        F3DFF8EFD7F5EDCFF5E7C9F8E9CAECCEAD7A4C49966B6B638AB27DC0EFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E4547C7B3AFFFFFFFFFFE
        FAFDFAF3FBF7E9FAF4E2F9F1D9F7EED2F2E0C1ECD8B9F0DEC0E9C7A27B5152DD
        CDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC0C18D6666
        FFFFFFFFFFFEFFFFFBFEFBF4FBF8EAFAF5E2F9F1D9F7EED2F2E1C3E9D2B0EAD4
        B3EDD6B5CEA0827F5961FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF825D60DCCFC5FFFFF6FEFCF6FEFBF6FDFAEFFBF7E8FAF4E1F8F1D8F4EDCF
        F1DFBFE8CEAFE4C1A0EAD1B0E9C7A1906463DCD1D2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF653A3DFFFFF4FCF9EBFCF9EDFCF8EEFBF7E9FAF5E3F9
        F1DAFCF6E5FAF3DFF6EFD8F6ECCEE8CEAFE7C9A8E9C8A6B2836FC4B2B5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A4045FFFFECFAF5E3FBF5E5FAF5
        E5FAF4E2F8F2DBFDFAF1F8EFDAF2E1C1EBD2AEE3C3A1EEDBBDE9CFAFE6C4A0BD
        947FB7A0A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F464CFFFFE4
        F9F2DAF9F2DCF9F2DBF9F1D9F9F3DEFAF3DDF3E4C4F4E7D2FBF6E9FBF5DEEDDA
        BBE8CEAEE5C29EB78B7AB9A5A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF754D54F9F2D4F9EFD5F9EED4F9EFD5F7EDD0F9F3DBF4E6CDF2E2C6FFFFFF
        FEFCF2F9F4DDF4E7CAE6CCAAE5BF9BB68473CCBCBFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAB9196D2B8A2F9F2D3F3E5C7F3E6C7F2E2C5F6E8CEF0
        E0C1F1E2C9FCF9ECFAF6E5F9F0D7F2E0C2E5C8A5E0B48DA5807DF3F0F0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8CCCD987674F6E5C3F2E2C3ECD4
        B5E9D2B2EBD5B4F5E9CCEDD8B8F8F0D6F8EFD2F4E4C7EAD2B2E3BE9DC99171AA
        9093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2868C
        BF9B8AF3DEBAEFDCBEE8CCAAE1BC9AE8CEAFEEDABDEDD9BAEED8B8E8CFAEE4C1
        9ED9A179A88B8FEFEAEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA0818ABF9A89EBCBA6ECD5B4EAD1B1E8CBACE6C9A9E6C6A4
        E4C19FE2B693D19D7CB0908CE4DBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE959BAA8784CA9F89DEB28AE3
        B992E2B591DDAE87D19F7FBD9080AF9B9FE5DDDEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EB
        ECC5B3B7A99196AC9298B69592AF999EBCA8ACDDD3D4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 283
      Top = 0
      Width = 220
      Height = 38
      Cursor = crHandPoint
      DataSource = DM.DS_CD_CAD_COMISSAO
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 0
      Top = 0
      Width = 210
      Height = 38
      Cursor = crHandPoint
      DataSource = DM.DS_CD_CAD_COMISSAO
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'NOVO REGISTRO'
        'APAGAR REGISTRO'
        'ALTERAR REGISTRO'
        'SALVAR ALTERA'#199#213'ES'
        'CANCELAR ALTERA'#199#213'ES'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 161
    Width = 503
    Height = 196
    Align = alClient
    Color = clBtnHighlight
    DataSource = DM.DS_CD_CAD_COMISSAO
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid2TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VMIN'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VMAX'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORCENTAGEM'
        Visible = True
      end>
  end
  object ImageList1: TImageList
    Left = 416
    Top = 288
  end
end
