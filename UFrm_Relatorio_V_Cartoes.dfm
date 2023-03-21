object Frm_Relatorio_V_Cartoes: TFrm_Relatorio_V_Cartoes
  Left = 0
  Top = 0
  Caption = 'Frm_Relatorio_V_Cartoes'
  ClientHeight = 404
  ClientWidth = 1051
  Color = clWhite
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
  object DBGrid: TDBGrid
    Left = 0
    Top = 113
    Width = 1051
    Height = 291
    Align = alClient
    BorderStyle = bsNone
    DataSource = DS_query_Relatorio
    DrawingStyle = gdsClassic
    FixedColor = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clHighlightText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DEPTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_NFCE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'NFE / NFCE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_PARCELAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'N'#186' PARCELAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_DE_PAGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'FORMA DE PAGA'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'VALOR PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 113
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlightText
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = clWhite
    TabOrder = 1
    VisualStyle = vsClassic
    object Label2: TLabel
      Left = 268
      Top = 29
      Width = 64
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 473
      Top = 29
      Width = 56
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 1017
      Top = 0
      Width = 34
      Height = 32
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        A2070000424DA207000000000000360000002800000019000000190000000100
        1800000000006C070000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBD3C4CF936FBC6936B14F13AE47
        08B14E13BC6734CE926CEAD0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB296AB3E00A736
        00AB3F00AE4402AF4706AF4707AF4606AD4402AB3F00A83600AA3C00DBAD90FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEB65518AB3A00B14907B24B0AB24B0AB24B0AAE4100AB3B00AF4502B24B0AB2
        4B0AB24B0AB14907AB3A00B45112FDFBF9FFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFF8F0EAAD3D00B24804B44E0CB44E0CB44E0CB44E0CAE3E00D8
        A381F5E7DFC16C35B24803B44E0CB44E0CB44E0CB44E0CB24805AC3A00F6EBE3
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFEFEFEB04000B64E0AB7510EB7510EB7
        510EB7510EB44B06C97C4AFFFFFFFFFFFFFFFFFFB24600B6500DB7510EB7510E
        B7510EB7510EB54E0AAE3D00FCFAF8FFFFFFFFFFFF00FFFFFFFFFFFFBD5E1EB7
        4F09B95410B95410BA5410B95410B95410B8500BC26A2FFFFFFFFFFFFFFFFFFF
        B44700B9530FB95410B95410B95410B95410B95410B74F09BB5816FFFFFFFFFF
        FF00FFFFFFE2B79AB64800BC5713BC5712BC5712BC5712BC5712BC5712BC5712
        B84D04CB7D48EDD3C1BF5F1DBA530DBC5712BC5712BC5712BC5712BC5712BC57
        12BC5712B64800DFB090FFFFFF00FFFFFFBB5108BE5912BF5A15BF5A15BF5A15
        BE5A15BE5A15BE5A14BE5A15BE5A14B64500B54100BA5006BE5A14BE5A14BE5A
        14BE5A14BE5A14BE5A14BE5A14BE5A14BE5812B94D02FFFFFF00F0D8C7BB4E01
        C15E17C15E17C15D17C15D17C15D17C15D17C15D17C15D17BB4F02F4E3D7FFFF
        FFD28956BE570EC15D16C15D16C15D16C15D16C15D16C15D16C15D16C15D16BB
        4E01EDD1BE00DCA379C1590EC46119C46019C46019C46019C46019C36019C460
        19C36019BD5001FBF6F2FFFFFFDA9D71C0580CC36019C36019C36019C36018C3
        6018C36018C36018C36018C0590EDA9D7100D18146C56016C6641BC6641BC664
        1BC6641BC6631BC6631BC6631BC6631BC15607F0D8C7FFFFFFEFD6C3BE4F00C6
        631BC6631BC6631BC6631BC6631BC6631BC6631AC6631BC56016CE7B3E00CC6F
        2AC8661BC9671DC9671DC9671DC9671DC9671DC9671DC9661DC8661DC65F12DC
        9C6DFFFFFFFFFFFFD99460C45A0AC8661DC8661DC8661DC8661DC8661DC8661D
        C8661DC8651CC9692100CC6C22CB691FCB6A1FCB6A1FCB6A1FCB6A1FCB6A1FCB
        691FCB691FCB6A1FCB691EC55805FCF8F5FFFFFFFFFFFFD68A4FC86112CB691F
        CB691FCB691FCB691FCB691FCB691FCB691FCA681D00D0752DCD6C20CE6D21CE
        6D21CE6D21CE6D21CE6D21CE6D21CE6D21CD6D21CD6C21CD6A1DCC681BFFFFFF
        FFFFFFFFFFFFCF7128CC691CCD6C21CD6C21CD6C21CD6C21CD6C21CD6C20CE6F
        2500D98B4CCF6D1FD07023D07023D07023D07023D07023D07023D07023D07023
        D07023D07023CE6919D57F3BFFFFFFFFFFFFFBF3ECCA5D07D06F23D06F23D06F
        23D06F23D06F23CF6D1FD7854400E5AD80D16C1BD37325D37325D37325D37325
        D37325D27123D06A17D16E1ED37325D27225D27325CD610AF7E5D8FFFFFFFFFF
        FFDD955BD16D1DD27225D27225D27225D27225D06C1CE3A77700F4DDC9D16913
        D57628D57628D57627D57627D57425D6792CEFCCAFDD9153D26C19D57627D576
        27D16A15EFCBADFFFFFFFFFFFFF0CEB2D26B17D57527D57527D57527D57527D1
        6914F3D7C100FFFFFFD5711CD77827D8792AD8792AD8792AD67321E3A169FFFF
        FFFFFFFFDF9455D3680ED56F1AD26409FEFCFAFFFFFFFFFFFFF4D9C2D46E18D7
        7829D77829D77829D77727D46D17FFFFFF00FFFFFFEFC5A2D77019DA7C2CDA7C
        2CDA7C2CD8741FEFC6A4FFFFFFFFFFFFFFFFFFF6E2D0ECBD95FCF4EDFFFFFFFF
        FFFFFFFFFFE8AF7FD87521DA7B2BDA7B2BDA7B2BD7701AEDBF99FFFFFF00FFFF
        FFFFFFFFDE8537DC7B27DD7F2EDD7F2EDC7E2CDA761FF7E1CEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEFE4D87016DC7E2DDC7F2DDC7E2DDB7B28
        DD8030FFFFFFFFFFFF00FFFFFFFFFFFFFEFDFCDC751ADF802DDF8230DF8230DF
        812EDB7216E7A266FBF0E6FFFFFFFFFFFFFFFFFFFFFFFFF1C9A5DB7419DF812E
        DF8230DF8230DE802DDB7317FDFAF7FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFC
        F3EADF781CE1812CE28532E28532E28532E08029DE771CE0802AE69751E59248
        DE781CDF7C23E18431E18532E18532E1812CDE771AFBEFE4FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFEFDFCE58D3CE27E22E48732E48834E48834
        E48834E48732E3852FE3852FE48733E48834E48834E48732E27E23E48A38FEFA
        F7FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F4CBA5E58429E58124E6862DE68932E68A35E78B36E68A35E68932E6862DE581
        24E58227F3C8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E1CBF2BB88EDA15AEA923FE98D
        37EA923FEDA159F1BA86F8E0C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00}
    end
    object Label6: TLabel
      Left = 249
      Top = 62
      Width = 83
      Height = 13
      Caption = 'Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 338
      Top = 26
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 535
      Top = 26
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox4: TRzComboBox
      Left = 338
      Top = 59
      Width = 318
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object RzBitBtn1: TRzBitBtn
      Left = 662
      Top = 23
      Height = 57
      Cursor = crHandPoint
      Caption = 'Filtrar'
      HotTrack = True
      TabOrder = 3
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 966
      Top = 75
      Height = 32
      Cursor = crHandPoint
      Action = Act_Print
      Caption = 'Excel'
      HotTrack = True
      TabOrder = 4
      ThemeAware = False
    end
  end
  object Query_Relatorio: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from RELATORIO_V_CARTOES')
    Left = 768
    Top = 24
    object Query_RelatorioDEPTO: TStringField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      Size = 50
    end
    object Query_RelatorioPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_RelatorioNFE_NFCE: TStringField
      FieldName = 'NFE_NFCE'
      Origin = 'NFE_NFCE'
      Size = 18
    end
    object Query_RelatorioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Query_RelatorioVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object Query_RelatorioID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object Query_RelatorioQTD_PARCELAS: TIntegerField
      FieldName = 'QTD_PARCELAS'
      Origin = 'QTD_PARCELAS'
    end
    object Query_RelatorioFORMA_DE_PAGA: TStringField
      FieldName = 'FORMA_DE_PAGA'
      Origin = 'FORMA_DE_PAGA'
      Size = 50
    end
    object Query_RelatorioVALOR_PARCELA: TBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Precision = 18
      Size = 2
    end
    object Query_RelatorioTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DS_query_Relatorio: TDataSource
    DataSet = Query_Relatorio
    Left = 568
    Top = 32
  end
  object ActionList1: TActionList
    Left = 816
    Top = 208
    object Act_Print: TAction
      Caption = 'Excel'
      ShortCut = 16453
      OnExecute = Act_PrintExecute
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 168
    Top = 8
  end
end
