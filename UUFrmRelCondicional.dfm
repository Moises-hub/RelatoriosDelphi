object UFrmRelCondicional: TUFrmRelCondicional
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 128
  ClientWidth = 549
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 128
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    Transparent = True
    VisualStyle = vsGradient
    ExplicitHeight = 122
    object Label1: TLabel
      Left = 11
      Top = 25
      Width = 106
      Height = 13
      Caption = 'Selecione o Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 53
      Top = 61
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
      Left = 258
      Top = 61
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
      Left = 12
      Top = 90
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
      OnClick = SpeedButton1Click
    end
    object RzComboBox1: TRzComboBox
      Left = 123
      Top = 22
      Width = 318
      Height = 22
      Style = csOwnerDrawVariable
      TabOrder = 0
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 123
      Top = 58
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 320
      Top = 58
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 2
    end
    object Button1: TButton
      Left = 447
      Top = 41
      Width = 91
      Height = 27
      Caption = 'Visualizar / Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object RLReport1: TRLReport
      Left = 101
      Top = 131
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLGroup1: TRLGroup
        Left = 38
        Top = 99
        Width = 718
        Height = 68
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataFields = 'ID_PEDIDO'
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 43
          Width = 718
          Height = 17
          BeforePrint = RLDetailGrid1BeforePrint
          object RLDBText2: TRLDBText
            Left = 68
            Top = 0
            Width = 309
            Height = 17
            AutoSize = False
            DataField = 'DESCRICAO'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 0
            Top = 0
            Width = 62
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            DataField = 'ID_PRODUTO'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 593
            Top = 0
            Width = 36
            Height = 17
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTDE'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel6: TRLLabel
            Left = 629
            Top = 0
            Width = 48
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 480
            Top = 0
            Width = 48
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 383
            Top = 0
            Width = 91
            Height = 17
            AutoSize = False
            DataField = 'tamanho'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 27
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object RLPanel1: TRLPanel
            Left = 0
            Top = 2
            Width = 718
            Height = 14
            Align = faBottom
            Color = clSilver
            ParentColor = False
            Transparent = False
            object RLLabel4: TRLLabel
              Left = 0
              Top = 0
              Width = 48
              Height = 14
              Caption = 'ID PROD.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLDBText5
              ParentFont = False
              Transparent = False
            end
            object RLLabel8: TRLLabel
              Left = 68
              Top = 0
              Width = 65
              Height = 14
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLDBText2
              ParentFont = False
              Transparent = False
            end
            object RLLabel9: TRLLabel
              Left = 480
              Top = 0
              Width = 41
              Height = 14
              Caption = 'VALOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel7
              ParentFont = False
              Transparent = False
            end
            object RLLabel10: TRLLabel
              Left = 593
              Top = 0
              Width = 25
              Height = 14
              Caption = 'QNT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLDBText7
              ParentFont = False
              Transparent = False
            end
            object RLLabel11: TRLLabel
              Left = 629
              Top = 0
              Width = 40
              Height = 14
              Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel6
              ParentFont = False
              Transparent = False
            end
            object RLLabel3: TRLLabel
              Left = 383
              Top = 0
              Width = 58
              Height = 14
              Caption = 'TAMANHO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLDBText6
              ParentFont = False
              Transparent = False
            end
          end
        end
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 27
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clBtnHighlight
          ParentColor = False
          Transparent = False
          object RLDBText1: TRLDBText
            Left = 58
            Top = 7
            Width = 54
            Height = 14
            DataField = 'ID_PEDIDO'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object C: TRLLabel
            Left = 2
            Top = 7
            Width = 57
            Height = 14
            Caption = 'ID Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText3: TRLDBText
            Left = 259
            Top = 7
            Width = 52
            Height = 14
            DataField = 'data_hora'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel1: TRLLabel
            Left = 173
            Top = 7
            Width = 87
            Height = 14
            Caption = 'Data do Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel2: TRLLabel
            Left = 441
            Top = 7
            Width = 123
            Height = 14
            Caption = 'Valor Total do Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText4: TRLDBText
            Left = 563
            Top = 7
            Width = 65
            Height = 14
            DataField = 'valor_pedido'
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 60
          Width = 718
          Height = 7
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Width = 2
          Borders.Style = bsDiagCross
        end
      end
      object RLBand3: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 61
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand3BeforePrint
        object RLLabel5: TRLLabel
          Left = 3
          Top = 11
          Width = 186
          Height = 16
          Caption = 'RELAT'#211'RIO DE CONDICIONAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 4
          Top = 25
          Width = 688
          Height = 32
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 577
          Top = 1
          Width = 140
          Height = 16
          Align = faRightTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Info = itNow
          ParentFont = False
          Text = 'Relat'#243'rio Emitido '
        end
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        ParamType = ptInput
      end
      item
        DataType = ftDate
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 416
    Top = 280
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        ParamType = ptInput
      end
      item
        DataType = ftDate
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection1
    Left = 408
    Top = 352
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 544
    Top = 312
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 448
    Top = 352
  end
  object clientes: TSQLDataSet
    CommandText = 'select nome from clientes'#13#10'ORDER BY NOME'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 120
    Top = 352
  end
end
