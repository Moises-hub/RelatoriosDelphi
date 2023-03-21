object Frm_PosPed: TFrm_PosPed
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Lucro / Prejuizo'
  ClientHeight = 369
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 58
    Width = 527
    Height = 308
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    VisualStyle = vsClassic
    ExplicitLeft = 8
    object Label1: TLabel
      Left = 77
      Top = 99
      Width = 60
      Height = 16
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 92
      Top = 129
      Width = 44
      Height = 16
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 43
      Top = 156
      Width = 94
      Height = 16
      Caption = 'Empresa / Dpto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 76
      Top = 183
      Width = 60
      Height = 16
      Caption = 'Categoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 271
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
    object Label5: TLabel
      Left = 104
      Top = 211
      Width = 30
      Height = 16
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 141
      Top = 96
      Width = 323
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 0
    end
    object RzComboBox4: TRzComboBox
      Left = 142
      Top = 153
      Width = 322
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 1
    end
    object RzComboBox5: TRzComboBox
      Left = 141
      Top = 180
      Width = 323
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 521
      Height = 77
      Align = alTop
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = -6
      ExplicitWidth = 503
      object Label2: TLabel
        Left = 77
        Top = 45
        Width = 57
        Height = 16
        Caption = 'Data Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 69
        Top = 18
        Width = 63
        Height = 16
        Caption = 'Data Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 141
        Top = 15
        Width = 155
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 141
        Top = 42
        Width = 155
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 317
        Top = 11
        Width = 144
        Height = 60
        Caption = 'Filtrar por Data de'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        ItemIndex = 1
        Items.Strings = (
          'Faturamento'
          'Emiss'#227'o')
        TabOrder = 2
        Transparent = True
        VisualStyle = vsGradient
      end
    end
    object RLReport1: TRLReport
      Left = 0
      Top = 315
      Width = 794
      Height = 1123
      DataSource = DM.DS_PosPedido
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand6: TRLBand
        Left = 38
        Top = 57
        Width = 718
        Height = 38
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel11: TRLLabel
          Left = 306
          Top = 1
          Width = 105
          Height = 16
          Align = faCenterTop
          Caption = 'Lucro / Prejuizo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 0
          Top = 19
          Width = 718
          Height = 14
          Align = faWidth
          Alignment = taCenter
          Caption = 'Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 95
        Width = 718
        Height = 93
        Borders.Sides = sdAll
        DataFields = 'VENDEDOR'
        BeforePrint = RLGroup1BeforePrint
        object RLBand1: TRLBand
          Left = 1
          Top = 1
          Width = 716
          Height = 49
          BandType = btHeader
          object RLDBText1: TRLDBText
            Left = 72
            Top = 6
            Width = 633
            Height = 16
            AutoSize = False
            Color = 10930928
            DataField = 'VENDEDOR'
            DataSource = DM.DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLPanel1: TRLPanel
            Left = 0
            Top = 32
            Width = 716
            Height = 17
            Align = faBottom
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            object RLLabel2: TRLLabel
              Left = 0
              Top = 0
              Width = 261
              Height = 17
              Align = faLeft
              AutoSize = False
              Caption = 'Categoria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel3: TRLLabel
              Left = 261
              Top = 0
              Width = 58
              Height = 17
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel4: TRLLabel
              Left = 319
              Top = 0
              Width = 87
              Height = 17
              Align = faLeft
              Alignment = taRightJustify
              Caption = 'Valor de Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel5: TRLLabel
              Left = 406
              Top = 0
              Width = 106
              Height = 17
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Custo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel6: TRLLabel
              Left = 512
              Top = 0
              Width = 136
              Height = 17
              Align = faClient
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Lucro /Prejuizo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel7: TRLLabel
              Left = 648
              Top = 0
              Width = 68
              Height = 17
              Align = faRight
              Alignment = taCenter
              AutoSize = False
              Caption = '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLLabel1: TRLLabel
            Left = 2
            Top = 6
            Width = 70
            Height = 16
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 1
          Top = 50
          Width = 716
          Height = 15
          BeforePrint = RLBand2BeforePrint
          object RLDBText2: TRLDBText
            Left = 0
            Top = 0
            Width = 261
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'CATEGORIA'
            DataSource = DM.DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel2
            ParentFont = False
            Text = ''
          end
          object RLDBText3: TRLDBText
            Left = 261
            Top = 0
            Width = 58
            Height = 15
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            DataField = 'QNT'
            DataSource = DM.DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel3
            ParentFont = False
            Text = ''
          end
          object RLDBText4: TRLDBText
            Left = 319
            Top = 0
            Width = 87
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL'
            DataSource = DM.DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel4
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 406
            Top = 0
            Width = 106
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = DM.DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel5
            ParentFont = False
            Text = ''
          end
          object RLLabel25: TRLLabel
            Left = 648
            Top = 0
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel7
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 512
            Top = 0
            Width = 136
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel6
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 1
          Top = 65
          Width = 716
          Height = 24
          BandType = btFooter
          object RLLabel9: TRLLabel
            Left = 261
            Top = 6
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16776176
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText3
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 319
            Top = 6
            Width = 87
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText4
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 406
            Top = 6
            Width = 106
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText5
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 512
            Top = 6
            Width = 136
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 648
            Top = 6
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand4: TRLBand
        Left = 38
        Top = 188
        Width = 718
        Height = 108
        BandType = btSummary
        Borders.Sides = sdAll
        Borders.Width = 2
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLLabel16: TRLLabel
          Left = 262
          Top = 6
          Width = 315
          Height = 14
          Alignment = taRightJustify
          Caption = 'Quantidade de Itens Vendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel18: TRLLabel
          Left = 262
          Top = 24
          Width = 315
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor total de Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel19: TRLLabel
          Left = 262
          Top = 65
          Width = 315
          Height = 14
          Alignment = taRightJustify
          Caption = 'Lucro Prejuizo (+)(-)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel20: TRLLabel
          Left = 262
          Top = 84
          Width = 315
          Height = 14
          Alignment = taRightJustify
          Caption = 'Percentual (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel21: TRLLabel
          Left = 583
          Top = 3
          Width = 129
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBackground
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 583
          Top = 46
          Width = 129
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 583
          Top = 65
          Width = 129
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 583
          Top = 82
          Width = 130
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 262
          Top = 46
          Width = 315
          Height = 14
          Alignment = taRightJustify
          Caption = 'Custo total dos Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel27: TRLLabel
          Left = 583
          Top = 24
          Width = 129
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 19
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLSystemInfo3: TRLSystemInfo
          Left = 636
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
        object RLDBText7: TRLDBText
          Left = 0
          Top = 0
          Width = 35
          Height = 18
          Align = faLeft
          DataField = 'RAZAO_SOCIAL'
          DataSource = DM.DS_Emitente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 141
      Top = 123
      Width = 323
      Height = 21
      KeyField = 'FILTRO'
      ListField = 'NOME'
      ListSource = DS_Query_Clientes
      TabOrder = 5
    end
    object RzComboBox2: TRzComboBox
      Left = 141
      Top = 208
      Width = 323
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 6
      Items.Strings = (
        '<<TODOS>>'
        'Somente Produtos'
        'Somente Servi'#231'os')
      Values.Strings = (
        '   '
        'and TIPO_ITEM = 2'
        'and TIPO_ITEM = 3')
    end
    object RzBitBtn1: TRzBitBtn
      Left = 380
      Top = 258
      Width = 144
      Height = 44
      Caption = 'Filtrar / Visualizar'
      HotTrack = True
      TabOrder = 7
      ThemeAware = False
      OnClick = RzBitBtn1Click
      ImageIndex = 288
      Images = FrmPrincipal.ImageList1
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 527
    Height = 41
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Caption = 'RELAT'#211'RIO DE LUCRO / PREJUIZO'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 503
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 41
      Align = alLeft
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000200
        000002000806000000F478D4FA000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000E4A00000E4A011491CE7600
        00001974455874536F667477617265007777772E696E6B73636170652E6F7267
        9BEE3C1A000064A549444154785EEDDD779463D97D1FF8EAE930A1BB0B407555
        57A799E999E90CE05540A86992B69AA44451999638A2AD60D93429518149A424
        8A414CE290EC19CE0C298A418912298992C86E3AFD617975761DA5D539F6EEDA
        47D63AEDDA3EEBA0E0F55A966989B1F7FB459841BFFA02784001EF5DBCF7AD73
        3E87D21DE0F60F78F7DDEF0570F1B074EBD62D3333332B18D968666666F9261B
        CDCCCC2CDF64A3999999E59B6C343333B37C938D666666966FB2D1CCCCCCF24D
        369A999959BEC946333333CB37D968666666F9261BCDCCCC2CDF64A3999999E5
        9B6C343333B37C938D666666966FB2D1CCCCCCF24D369A999959BEC946333333
        CB37D968666666F9261BCDCCCC2CDF64A3999999E59B6C343333B37C938D6666
        66966FB23164AB5B5B072BD5E691E5EAD503EABF87EC48F4AC03AC9DFFABFE7B
        A8D6AAD53B56A29DC3A57AEB4EF5DF4376AAD1B86379A379787973E7CE25FCA9
        DB846AE9DCB97DA55AFB9E63B587EF5AA4DAF9C79A593B1F83BA4DA8F8C7B1C2
        31C3B1A36E13329EA33C5779CEAAFF1EAA459D1B8959C4DA994DEABF874C3686
        66F572E32006F603E57A2B82C6D3A276BD1CB5EE0D79B0737094EBEDFB77D55E
        6FD52BF5D6FDA5FA73F6ABFB656DE9DAB57D95A87D12355663756F96EAED739C
        E0D5FD42C0BF72D43C8E5A59FBF660ED70BEBCD1BC47DD2F14E55A73B55C6F5E
        89D5BE0517714C8EA8FB8480B5B1C65EADFDBAF118F058F098D47D42C131815A
        CF03C7C840ED1843184B1C53EA7E21E82CB6704EC66A6FF0DCE539CC7359DD2F
        6B9CFB3807A2D6FA60DD80B9B27D7FC82FF29839CC9E4E06C56A675631B3D4FD
        42231B4352899A2B785237624F721C0FC25175FF2C55EACD12EA8A077F5CC4DB
        A9FB6765A5BA7317EABA1CAB336EBB1435D7439B18CB9B0F1F426D0C215573DF
        364EDC534B8F3C12D4C4D85DE876267255F333A2D699A56A3598DA590B6B92B5
        0EE0630B6D62E418E058407D838B2DE522C796EA232BFCE33988DAC6D57E99E7
        B4EA232B8B3A3712EA3A0AF1E08FDB6076A9FB87443686022BA965F1C40EB3C5
        B7EE543F5928575B7C4531EEC4ECDBE6ED553F69AB341AFB51CFB8C1FD349CA0
        6BAA9F2CF0ED66D4C457CEB2D638BE3A52FD64814154A9B72FA93A950A0257F5
        9305D6A26A54F818435A78710CA83A87B812D2471A3CF7448DC3D4796EAB7ED2
        B6A87323316350D3E03B5C2331C3543FA1908D2158BDF8EC8982A8236A5D0CE1
        15E952A38120EABC85ABEB949A57783FD55F9A50CBD9DDB58DB4C5CF1D555F69
        431DA7457DA36C57EA8DBB555F69C3ABE313A2BE9156EAEDC3AAAF34B10655DB
        287CACAAAFB4F1D8A39EA441D4C131A6FA4A1BCF39D49338887ACEAABED2B4C8
        7323FF9831BAC6A1EACC32D55F086463082AF5D6C4136257BBACFA4B13EA38B6
        BBAE448EA9FED272ACDEE05BFFAAAE71329F588E361A0750C7449379CF43AABF
        349DB97AF50ED4314DED17557F69620DB19A92D8E66356FDA509753C14AB2B89
        6D8E35D55F9A50C7A40BF50E9EE3AABFB4A086859C1B89D922EA1A8B59A6FA0B
        816C0C01565AD39C9C8D52AD9DF90ABDB7B145D6370AEFA7FA4B4BB9D69CF6E4
        ACAAFED2D4FB4C51D536CE86EA2F4DD3BC8AEED9CAF2EDF4CEE7E793BF0AED08
        E1DD0BD4316E6F9114C2E7D2A823BE3937199CE3AABFB42CEADC48CC1655DB58
        C832D55F08646308F0C44DF6F67F4FA9DE3AAFFA4B13EA18B7816E98CBAABFB4
        E0DFBF37564F52DB597F650A354CF259EE6D566AAD4C3777956B6D7E6341D636
        4E961F61F4DE4297758D85C7ACFA4C0B8FB9AC2B994CF78EF05C430DD3BC6344
        F7AA3ED3827F7F21E74662B688BA92A8ABFE42201B4380276DAAD53984F0B668
        2D56535235D55F5A7A5F5754758D75646B2BD3B74593EC421FA6123533DD0780
        1AA65EBC54361A997D2D90FFB6AA29A14C4394C75CD4944CC61B3079AEC9BA12
        6967FB2EE382CE8D841AA6F9B88B327F977118D918023C6917624F6252F7A9FE
        D254895A0F8ABAC6E2FD547F69A9D43BDF9D97B58D11A9FED2D4FBBAA8AA6D9C
        4CDF46A79568A26FBBDC663D8A327BE785FFB6AA29093E66D5675AF6F2F14508
        5FEF421DE3BE4227F11C57FDA56551E746421DF7C5EB4AE882EA2F04B2310495
        5A7BBA5774015C70A4546BF1BBB9BABE11783FD55F5A566AADE95ED1D55AE754
        7F695AAE6E7357B4AE6F9428FB778C7A1B18757DA35D51FDA58935C46A4A2488
        8D7493EFE8EEE05853FDA589E79CAA6D1C9EE3AABFB42CEADC48DD0B74E9FA46
        6196A9FE42201B43C0DDAAA5C957E8510857D6E3C54E50CB6D57E54A6033EB8B
        A4F08A61A863E2CFE8B27E35D787F132F1A48889A5A2FA4A1BEAE0952E658DC3
        9402B806036B50B58DC2C7AAFA4A1B8FBDAA6F148E31D557DAA67CD7E872D657
        055CD4B991982DA865A2775E9861597FF36214D9180AAC72275A2D62A515CC55
        A32AF5D6446F49F3F6AA9FB4AD6CB426FB6E742DFBDDB97DC736AE4E38B9B433
        7F5BB1EFE8A536DF05986472C97CB36B1F6B89D5364AC4C7AAFAC902C780A871
        984D8E31D54F1678EE891A87D9E6B9ADFA49DBA2CE8DC48C51350E15C03B17A3
        C8C650742EBC90ECFBAE0CAC60AEEAD657AE37937D8C11D055DDA8F775C024EF
        BE5C5839B713D4452E7A27689245C0C5AC372EC695AB3BBCC4E8F8CDAF51EBF2
        4AB413CC6569590B6B92B5DE6E838F51F59195DE86BA241F056C86F4028378EE
        A1AE247BA5B6B2FEFA5F1CE73C51A7D00CEEED73D4C54DBB495E249D6586A93E
        42211B43538E9AE5D290574768AF2E478DCCBF533C4C296A8FBA6E740D276670
        BF6140A55A839FA90F9918DB5B95A8B516EAE0E6ABB44A4DBF2AE55B72FC3C31
        D4DAF9D9385EF10C7B55CA49E7540857458BEB5EE1AD35F49AFA7C4C217CEEAF
        F08F63826343D68EB114D22BFF41FCE3B9C87352D50E17792EABFB668D731FEA
        1BF6AD803AE74E75BF103073983DA26ECE3111334BDD2F34B231449D0986D790
        EE6EC438C59DB8FC6C852780BA7D48BABFACD7BCBB1CB5F9CAFA1457E37C3B2E
        A46BA20FD3F9719D5AABCC1F4CE144C39F1A0DE12A6E4974BEEB8D1311CFF949
        7EEF9C3FD999E5AEF949F033CFDEBB1978B5D1F9C197A3A15CCB7D94DE6F4960
        62EFD47C928F2184CF6F93E0D8E018E95D97E124C74ED6D788488AE724CFCDCE
        62803F6EC47336B01F2F523807763E76ECBEEB788A7324E7CA507FC17010FF98
        41BD6F20715E5F654685B8401F46369A999959BEC946333333CB37D968666666
        F9261BCDCCCC2CDF64A3999999E59B6C343333B37C938D666666966FB2D1CCCC
        CCF24D369A999959BEC946333333CB37D968666666F9261BCDCCCC2CDF64A399
        9999E59B6C343333B37C938D666666966FB2D1CCCCCCF24D369A999959BEC946
        333333CB37D968666666F9261BCDCCCC2CDF64A3999999E59B6C343333B37C93
        8D666666966FB2D1CCCCCCF24D369A999959BEC946333333CB37D968666666F9
        261BCDCCCC2CDF6463A84AB5C69D95A8B90227CA51B3BCBAB57550DD2E44E5CB
        5B874A51B3C2DA3BFF5B6D1C52B70BCD72F5EA81526D67B9546F9F28D75BC756
        365A772FE14FDD3634E5CDCDFDA5A87514CFF77AA9D65EADD476EE5E7AE4917D
        EAB6A159AB56EFC0F37DB45C6BAD97EACDB5527DE79EA54623F8DA59236B65CD
        AC9D8F818F45DD36341C1B1C231C2B9D3183B1C331A46E1B1AFEF1DCE439CA73
        95E72CCF5D75DBD0702E1C9C1B3957AADB858819C42C62EDCC266694BA5DA864
        6368CAB5E6510CEC1A3476A9B52E71E0ABFB8560B9DA3A8C3AABBBEAEEBAC2C9
        52DD2F6BDD81DD3A276AE673BEC1C1AEEE1782A397DA072A51EB41597BBDB559
        8ADAABEA7E2158BDF8ECFD957AEB7E51376D95EBEDF5101760FC636DDD1A77D7
        CEC7C4C7A6EE1B028E09D4B919AF9B389638A6D4FD42C07391E7A4AA9DE770A8
        2F9438F7A1C62BBB6AEEAA72EE54F70B4167B185EC1175538D99A5EE171AD918
        8ACEA4526BDD2B9EE0B86D0CF4E3AA8F2CA1AE939DDA74CD7DFCEF27D5FDB352
        AEB5CBA8494E86B7895A0F9D6A34827A7557AEEE1C2DD55B91AC7740A5D63A5F
        6934820AA4E5A871B81CB5EBAADE988B47A267051348AC8535C56ADC0D8F8D8F
        51F591158E018E0559EF80CE98C2D8527D6485E71ECF41556FCC26CF69D54756
        50D342CE8DC4ACE9D5A66A7E06B28B19A6FA08856C0C45A5D65E934FEC1058C5
        077382F64254D629057282F22D2CD4235FC54918E4AA9F2C1CD9DA6210E95742
        DA59D54F1656CEEDEC473D49C2BFA7FD90EA270BAC45D728D5F958553F59403D
        6763F58DB2C131A6FAC942C217477D5BA1BC3DBDA873233163648D4330C3543F
        A1908D21C0138D206A270FA2AE7A089F37F2ED42D432F655684C94F5DB8C9D77
        5C92BC92DBED88EA2F6D981087BDED3F144ED092EA2B6DE5A839EC6DFFA1F0CA
        35F38F615883AA6D243C56D557DA78EC657DA3608CA9BED2865A8EECAA6DBC8B
        59BF225DD4B9917AFB722658A4537B8B59A6FA0B816C0C41A9DE3AAD9FD031A2
        F631D55F9A30C1F12D225DDF28B89FEA2F2D9DB7A0555D6335337F355ADE7CF8
        90AE6DAC0BAABF3495EACFE1AB7F55DB3857547F69620DB19A12E16356FDA509
        755C88D79508C69AEA2F4D3CE7646D6364FD11CCA2CE8DC46C91B58DC12C53FD
        85403686A0526F8EFD5C4E8AB27F4B1A07FC0159DB18BC9FEA2F2D95A835D147
        2E03EAAABF3495EAED8AA82B81F656D6AF8A4AB5E6B2AE6DACED3357AF66F68E
        17FF6DD610AB29113E66D5675AF837C53B8C1D1C6BAACF34A18E095F8976F11C
        57FDA56551E74662B6A8DAC66196A9FE42201B43501EB6AB759C5AFBA2EA2F4D
        A85D7F63611CDC4FF59716FCFB13BF0DDD97F55B74955AFB8CAA2B8995EACE5D
        AACFB4F02B44AAAE24566AD97DFCC27F5BD594041FB3EA332D3CE6AAAE2438D6
        549F69E9BD8D2E6B1B0BE7B8EA332D8B3A3712B345D6360EB24CF51702D91802
        3C7153AD7021F3D5166A98EA6D51C8F42DDD72BD39D50A97B2DE7B518EDAA754
        5D8964FC96EED46F8B52B595D9D748F96FCB9A92C8F82DDD3D7C64C48F194FA9
        3ED3D2FB2C5AD7365633D3774851C342CE8D841AA67B573A80774887918D21C0
        9336D5675C957A33F3CF5B30B94DF74A3AE3CD51A861AACFB8A0AAFA4BD3541B
        BABA325F9D57361A53BD922ED55B5B4BD7AE65767120FEDBAC41D5360E1FB3EA
        334DA863AA771943D8388A3A865D5B649C4CF7482DEADC48CC1659DB78C17C63
        274E3686004F1ABF27AA9ECC9142F87C0E93222F2A22EB1B85F753FDA5A5526F
        F04A62B2B65142F87CEE706DE7A0AA6D1CD47E4EF597A6F5289AEAB374D47E49
        F59726D6A06A1B639B8F59F597261E7B51DB581C6BAABF34F19C53B58DC3735C
        F59716D4BD9073234DBFCF28BC6B19F4C9C610F0329678E226FDBAC8E52C5F11
        F59D3D7BED0E0CD88956E8BC3DEFA7FA4BD3882BE849A87BEB58BD91E967E87D
        E5C9BE174DDBA55A3B882B314EF511460017A6610DB2B651327E0BBD8FC71EF5
        4CB6F00AE4BA173CE778EEC91A87E0B9ADFA4AD322CF8DCC16D473395EDF1851
        C89764968DA1A8D49B89DFD6E5C990F566AE41CB1B4D7EA52EE9E4B2CDDBAB7E
        D2D6B9F6FF440BAFF6BAEA270BDC955E996C7209228868F2C925DBCF72074DB8
        772488457A1FEA49BCF0E2D8CAF25B17713CF7549D0ACFE950826851E74662C6
        306B449D12334CF5130AD918123C89FC5C7ADC656923FEF885BA7F963A57BC1A
        FF6D06FCF7C02ED3596DF3A380719B7578029FCCFA2B7471CBD5ED3B71828E7B
        5B7A1B93F9E9908288566A2D6E4C4BF2DDF4FB427845D4C75A5853AC46E5021F
        A3EA232B1C031C0BA86D6420714C716CA93EB2D2FD2A63A24BEA5EE139ADFAC8
        0AE73CD4357A6EE4DC19D05500FB9835A86FDC8B246656E6D7A419473686A633
        3176AF791D5F086CF0474642BBA6FB205E271D93073FAFDB557B396A9F3DDA68
        04F9F6D052B5CA57A47C7514FF36C656396A5E086D4219D4F955B77A8B5FAD8B
        D7CEDF8CB818DAF5E807F1AF733D86DD5F97E2247F196329B8856E1F6B638DBD
        5A9FA91D8F858F898F4DDD2F04DDDF61E85C05331EA6758EA5907F45B2B360E7
        39B9FB9529C7FF299ECBEA7E59E3DCC7391035C617029B9C3343FABD8BB8CE6F
        48747FB46B57EDCCAAD016BAC3C8C650F18F9F7DF16D9545F939DD419D9F3346
        ED8BF693913C119737DACBFCDA5768AF9AC7E177A679D199CECFE9063A110ED3
        FF3963865348AFF8C761ADAC79917E4EB78F63A4F373C61833215C7E76129D8F
        91708EF25C0D393C95459D1B8959C4DA994D212F7215D968666666F9261BCDCC
        CC2CDF64A3999999E59B6C343333B37C938D666666966FB2D1CCCCCCF24D369A
        999959BEC946333333CB37D968666666F9261BCDCCCC2CDF64A3999999E59B6C
        343333B37C938D666666966FB2D1CCCCCCF24D369A999959BEC946333333CB37
        D968666666F9261BCDCCCC2CDF64A3999999E59B6C343333B37C938D66666696
        6FB2D1CCCCCCF24D369A999959BEC946333333CB37D968666666F9261BCDCCCC
        2CDF64A3999999E59B6C0CD152A3B1AF54DFB9A7526BAFC19972D43EB652DDB9
        6B097FEAF62159BA766D5FB9DABEBB546BAFB2F6EEFFEEDCBDF4C823FBD4ED43
        52AAB7EE2CD55A15FCEFE972D43C5EA9368F9C6A34EE50B70D4DF9F2D6A152D4
        ACE0F93E5DAEB5D6CBF5D691B56A75216A5FDDDA3A58AE37CBA8F954A9DE3E51
        8A5A472B8DC67E75DB90B046D6CA9A593B1F031F8BBA6D683836384638563866
        38763886D46D43C37392E726CF519EABBD73F64E75DB90700EE45C38383772AE
        E49CA96E1F12FE31839845AC9DD9C48C6256A9DB874836860683BA8CC11CE1E4
        6CC4A1BDBA1C350EABFB85A014B58FA2CE7ABCEE9E5AB9D63CAAEE97B552AD71
        27EABB18ABB7A7BD55895A6BA12EBE8E6D5C3D58A9B5CEABDA315EB63039AE87
        5AFBD146E340A5DE7A50D50EDB702AC4098635B1B65E8DBB6AE763E26353F7CD
        1AFF3826383664ED184B1C53EABE59E31FCF459E93AA76B8C87359DD376B9CFB
        505F2D566F5F9D73A7BA5F089839CC1E5137E7988899A5EE171AD9180AFEE109
        3D1B7F82054E3A27551F59C2AB9F33B13AB5A87546DD3F2B38318FA1AE6113CA
        A00B2BE776827A558A557809756DC6EA542E1ED9DA0A2A90CAD51D4E881BB13A
        778B5A9757A29D605E99B216D6246BBDDD061FA3EA232B1C03A86BC842F7369B
        1C5BAA8FACF0DC435D1762752A5B3CA7551F59E19C27EA149A41CD8D84BA4E82
        5CE8C69C6586A93E42211B43D17BDB563DB1524827285EF1ACA81A87E1ED553F
        695BD968DD8D7A920CEEAE5AEB7ED54F16F82A0D352509FF9EF683AA9F2C1CBD
        D46610C977B98638AFFAC9026B89D5364AC4C7AAFAC902C780A87198CD90DE09
        E0B9276A1C669BE7B6EA276D8B3A3752EF0586AC534286A97E42211B4370ACDE
        B86BD85B722344A5FA73327F45BA7AB9316110756CF27EAABFB474F62AD413BD
        92BBCD4AD45A56FDA50DE3E59CAA6F147E56AAFA4A1BEA7840D5374AA9DE5C53
        7DA58935A8DA46E163557DA58DC75ED5370AC798EA2B6D3CE7547D635CCEFAB3
        F5459D1B89D9825A2659A4773E726496A9FE42201B43809556C2B788626ACD55
        D55F9AF879A2AC6D0CDE4FF59796955AEB88AA6BAC5AF693E272759B7B16747D
        A344AD8BAABF34F1B37159DB7857547F69620DB19A1209613F008FBDAA6D1C8E
        35D55F9A78CEA9DAC6E139AEFA4BCBA2CE8DC46C51B58DC32C53FD8540368600
        4F5C92CFB694FB547F69AA444337718DC4FBA9FED252A9378FABBA1288547F69
        AA44CD89DE561CB095F5B731A67C35D7B11E45997DAB81FFB6AA2989ACDF35E2
        31471D93BEC3D8C1B1A6FA4C13EA98E895681FCF71D55F5A16756E24D4715FBC
        AE842EA8FE42201B4380276DFC66282DF35774A861D8CED6716AAABFB494EBED
        493E53BC4DD61BEA926F2ADA0D137AA69F8DA2066E2A92B58D53D96864F68A8E
        FFB6AA29A14C37EDF2988B9A92C978D36E6FE3A2AE6DAC76A67B7650C342CE8D
        841AA67AC70836547FF376FA239F19FBF1A66C0C019EB4615F9D1BA914C0E628
        D431F1E7E83D97557F69C1BF7F6FAC9EA4B6B3BE36006A983A44576AAD4C77D4
        976BED69DF79C12BBA46668B17FEDBAAA644F098559F69E13197752593E9E285
        E71A6A48BE51F776F7AA3ED3827F7F21E74662B688BA92A8ABFE66E9CC4F7DE6
        4178313C0A7F0BE1FF87279EBAF9DBEAB683646308B0CA7E483C9163F1021EAA
        BF3455EA13EDCE7D1AEFA7FA4B4BEFEB7FB2B631AAAABF3455EACDC976E73E23
        93D5F9A0957AFBB0A82B894C3FBED8CBDBE87CCCAACF34A18EA9DE65E45853FD
        A50975C8EFA08F95F1D70117756EA4CE05C5446D6321CB547FD340B8DF0197E1
        DBE17DF0BFC07F855B7DA73FFA995BC71FBF71EBC493377F55F5314836860007
        9C5712D34FE848EDCC2FC0803AA60DD24C4F4EEE561535257156F597A6DE46BA
        695E15CDECE49CD699AB57EFE06E6151DB38217CDC35F1DBA27CAC7CCCAABF34
        A196695E646C07B18131D9F55176C97A473A6A58C8B991982DA2AEB19865AABF
        7110E607610B5E0A1F84DF84CFC2D3611FD70FFFB5F76201F0D4CD97AA7E07C9
        C610AC5E7C36BF7231D9C700B5F6C5102EBCD0B92A5AB20BA33C03B70FE10A6F
        93EF03686F95A27610571A9B6285BE9DF5E7FF7DA5A839E9EEE8ED956827F357
        D1AC81B5C46A1B898F55F595B6DE3E80C96A0FE01D46E239C7734FD5385CB69F
        FFD322CF8DFC63C6C81A87AB33CB547F8310DE77C3C3F07DF0D3F08FE1732083
        5E190CFFCE02E0FD37C76E56958DA128772F15A99E54652BA44B5EF63E1F4D3A
        B96C67F959EEA0DED5C5122FBC42F82E7ADF52B5BAAF5C6F26FE5A1AAF57AFFA
        C942677299E06B6978151D4410116B51354A788C7CACAA9F2CF47EB340D7BA4B
        F30AC798EA270B135E83A11ECA553B17756EA4DE25D2932FBCC4A5DE11D625F8
        0A782D7C027E07BE0832D89388873FFEEF3F89FFBB8A6C0C49B9D6E2DB2EA33F
        ABABB56A217CA618C71F45417DE3C2B4CEDBA9FB67657973E74E4CEA9744AD83
        B6B2DEC8A5F4AE06386EB30E2695D6899082887ABBBBC7BD2DBD5DAA3583FA3D
        00D6C29A585BACD6B88742BBFC32FF7A1F378EAB3DC8DF03E86D201D19483C97
        794EABFB676551E746EAECD941E6887A076D30BB10CE6BF0027803FC1AFC6BF8
        32C8209F463CFC69FD899BFF52D51E271B43D3FD7CB7F3D6F4ED030607A1526F
        9E0EE1F3C4613ABF8E56EB7C7F343ED831809AF726797B280BFCC3F3CBB7A5F9
        8AFA99C9B1D6598C3D14C2C55046A9D4DA6BBDB71A072776D4DE3C17CA255187
        A9D4DBBCA601176083B5F3EA69E797379AC1FEF0156B638DBD5AFB75F3315CE2
        6352F70945F712D84D5E5C67F0C5C636C710C792BA4F287A17C17AA8776E0E3E
        EF57780EF35C56F7CB5AF763DE26BF79140FD33AE7CC907FFD9299C3EC6106F5
        EB5E7BC9CBBEE6E41B1FFF81D34F7CFCC9331FBDF9D711CEFF4F3CAC67EDF447
        76873F25D90048B231646BD5D6C1CE15EB3637831D1CC37021C3DA43BA167A12
        FCDA117FFDAABCF9F042FC34EAA0B367AFDDB15C6D1D0EF517D146E1DBCDFC79
        D1A35173217EF6BA8F7FACB9F3D3A801BD659E14C70AC70CC78EFAEF21E339CA
        7375517EB2BB8F7362676E0C6083E53808DE7DF0103C028F9EF9A99BBF0E7FC8
        404ED3B0F0EF2C00126C0024D9686666567408DAFD7005BE039E805D5FBBCBC2
        A8F0A7241B0049369A9999150982F510F06B777F057E127E0B467EED2E0BE3C2
        1FFF2DD10640928D666666798520BD07FA5FBBFB19F8DF60A2AFDD65615CF853
        D20D80241BCDCCCCF200C1C9AFDD5D83FED7EEFE19ECE96B77594812FE947403
        20C9463333B34583A0E4D7EEBE1A7E14E6F2B5BB2C240D7F4ABA019064A39999
        59C8108C67E01BE16D90CAD7EEB23049F853D20D80241BCDCCCC4280101CFCDA
        DDBBE1D7E10F4006669E4C1AFEB86DE20D80241BCDCCCCD286D0E3D7EEAAD0FF
        DADDDF81CCBF76978549C39F26D90048B2D1CCCC6C9E1072FCDADD36BC0CFA5F
        BBFB1F2003B148A6097F9A640320C9463333B35941A8F16B7757E1FBE167815F
        BBFB3CC8002CB24EF83FA6037E9C493600926C3433339B0642ACFFB5BB1F845F
        84DF852F810C3C7BC65EC29F26D90048B2D1CCCC6C1C84D671E87FEDEE53F07F
        810C371B6DAFE13FE90640928D666666831052F7C23741FF6B77FF1E6498D964
        F61AFE34E90640928D6666564C08247EEDEE1C7C2BBC07F8B5BBD47FEDAE2866
        11FE34E90640928D6666967F08A0FED7EEBE139E84BF0B7F0432AC6CB66615FE
        34E90640928D6666962F089CC1AFDD7D08FE57F0D7EE3232CBF0A7493700926C
        34B3B060C23808FC0C96BF60F6CDF003C0ABA2FD02FC4FC01F38F9A7F01BF049
        783FBC19BE1BFE1C3C1BF8B6EE3ED5BFE50B8EF3617816F4BF76F7BF83BF7617
        885987FF341B0049369A59B63049F07358BE5A7B2BFC2398D50F9AF012AABF04
        7CCB775DFDDBB658701CCBF05C781DF86B77819B75F8D3341B0049369A59FA30
        39DC0D5F0F1F85FFC0C962CEB8A8E00559F84E02BFB77D50D565E1C031E2D7EE
        5E086F844F83BF76B740E611FE34CD0640928D66960E4C0ADC84C5EB9EF36B55
        597F1EFBC7C08F0FEAAA564B178EC369E0D7EEDE0E7F03D25814DA9CCC2BFC69
        9A0D80241BCD6CFE3029F0A74CF9D9BD9C3032C477066E40A4EAB674E0F97F1E
        7C16D431B20532CFF0A7693600926C34B3F9C184C06BA2FFFDC10922505C08DC
        840DF5386CFEF0DC7B11B0E0E61DFED36E0024D96866B387C9E0223050E54411
        302E043E039BEA71D97CE179F7226041CD3BFC69DA0D80241BCD6C7630119C00
        6EECFB427F6258505C08708FC0B27A9C363F78CEBD08583069843F4DBB019064
        A399CD06268216FCA7C1892107FE25D4D4E3B5F9C173EE45C082482BFC69DA0D
        80241BCD6CEF30117C0BE4F54A6B0CA26F538FDBE607CFB91701814B33FC69DA
        0D80241BCD6C6F3011BC01F896B99C2472E427C0D70F48119E6F2F02029576F8
        EF650320C946339B0E26015EB2F76383934201FC269C56CF87CD079E6F2F0202
        9376F8D35E3600926C0CD1B1DAC37755EACDB572BD75162E966AADFBCAB5E6EA
        4AAD7548DD3E24CBD5ED3B4BACBDD6BA9FB5F37F4BF5D66A296ADFA96E1F8AE5
        EAD503957A7BA55C6F9F41DD172A51EB41D4BEBEBCD13CAC6E1F9295733BFB31
        462AA8B9533B1EC383A57AFB4465A37144DD7E163009ACC0DF199C140AE4F7E1
        B9A5A875B412B54F96EBCD87F0BC9FC7383F8D31533E73F5EA1DEA390B09C706
        C708C74A6FBC9FE118E25852B7CF1A9E6F2F02029145F8D35E3600926C0CC952
        B5BA0F93CA699C90DBD010B6B03038BE843F75FF2C2D3DF2C8BE4AAD85096568
        EDDB9C70783B75FF2C956BED32EA8B62F53EA3D63C5BDEDC0C726244E82CA3C6
        FAAE9AFB6AAD078F6C6D1D50F79D162681F3C0CD7172822882F5276F7EF9F89B
        3E785D3DE7957AABBA526F07B970E458E0985075F7D439A6D47DB376E6C39FFA
        CA331FBDE95FF4CB5056E14F7BD90048B23114AB179FBD1FAF24AE881352689E
        0B6911B0D468EC435D1777D7295DE4ED553F59403DF7C6EA1B26C2C418D4BB18
        081A2EB854AD711B95A879B7EA635298042E41DE76FA4F04E1DF99908E5FBFF1
        E5B5EF7DCB4BC5F3DD8157D56BEA39CC0AC700EADA88D7A9706CA93EB2C27710
        515774E207DFF90A2C02FE441D179BAF2CC39FF6B20190646328F85679FC241C
        A9D60AE6D7CD50CFA95DF58D764AF593B64AAD5D12B58D72319485D772D4388C
        7A86BDDBA25CDEEBC20B9380C3BF17FE7D9810FF74E51BBEFD2BC5F34DDB2B1B
        AD992CBCF6AAB748BF1CAB6F946D8E31D557DAF8877A9E7E81E14540FAB20EFF
        BD6E0024D9188252ADC9B771E327E0487835BAB5BCB993F92BD2F246F31ED433
        4910D136EFA7FA4B0BDF71C17338FC6DFF21F8118CEA2F4D4BD7AEEDE3DBCCAA
        BE314EAAFE92C024E0F08F857FDFFA639FFA83F2D6D59678BEE9B27A3ED3863A
        4EC6EA1A8B638C634DF597269E73F1DABC08484FD6E14F7BDD0048B231049D4D
        7EB1019E48AD95791895A3F6A4AFFEBB703FD55F5A4AB59D89175D1D51F382EA
        2F4DE56A8B8B2E5DDF6857547FE3601270F80F09FFBEF5F7FEF23F12CF77D7E6
        C3996FDE451D093F5E8CC15853FDA589E79CAACD8B80F90B21FC69AF1B004936
        86A0526F5F52033C81B3AABF3495EAED73A2AEB1783FD55F5A26F8FC3C2EF36B
        C497EAAD55515712DB93EE50C724E0F01F13FE7DC7DFF1331F17CF39C77A453D
        B769E131471D93BE4BD7C1B1A6FA4C13EAD88CD7D5E745C0FC8412FEB4D70D80
        241B4380813C74808F7149F59726D4307C07FA6899FE0E7B396AF32B96AAAEB1
        56B7B632BD184CB9DE4CBA71719752D448FC8A0E9380C33F61F8775CC722E0F5
        8FBF413CEFD9BEDB85632E6A4AA879AFEA332D3CD7745DCFF02260F6420A7FDA
        EB0640928D21C0209EEEEDB95AEB41D55F9A5047D2DDFF7117557F6929D59A53
        7D74C1BD17597F2E8A49795DD59604AF77A0FA8CC324E0F09F24FC7B30697EA1
        F2DC6FF833B1E7FD987A8ED3C2631EAB6702CD4C371BF35CE339A76B7B861701
        B3135AF8CF620320C9C6104CFB6AB4123533FFAA4EB97BF11959DF48B89FEA2F
        2D583CF1BBFFBAB6D1327FD785177111752591E8476D300938FCA708FFBEF547
        3FF11B83CFFBACBE82B9173CF683352535CF8B4925853A127D44EA45C0DE8516
        FE348B0D80241B4380C17B2C3E989308E16223957A73D2AFD275F07EAABFB4AC
        5E6E1C4CF2CA22AE526F657E19D8538D063FD39DF86323D47EBFEA6F10260187
        FF1EC29F8E5FBFF1A581AF0646215CFC8AC77E702C24B4C9B1A6FA4B13CF3951
        9BE445C0F4420C7F9AC50640928D21887FCF3591A83976324F0B3F8A90350E13
        C0471754AAB5267D2BBDBE56AD067199D74AADB522EA1B253A7AA93DF2ED7F4C
        020EFF3D867FDFFA7B7EF9B7F9BCF35A13EAB94E1B8F3DC7C0C078188B634CF5
        95369E73A827F15EA3CE2220BFBF4C3917A1863FCD620320C9C650946A8D3BCB
        F576B257A451BB1ED235BB3B97174D788531D898F5A569A7D5597845132CBCAA
        3B47553F59414DBC06BDAE75977659F5D18749A0F0E18F571A72029A0AAF12F8
        F2377C857AAEB3C231A0C786F490EA232B3CF7448D1ACE691C4FFF764042A73F
        1C6EF8D32C3600926C0C092FEC333E90DA33BFB6FB2C1CDBB87A10AF18CEEB9A
        BB4AF5D639DE4EDD3F2B9DB7D3A3D19703AEF0DAEED14E70D776EF5DDD8D9B19
        477DC5AB3E6EE18249C0E13FCBF0EF597FE2E66FABE73B4BBD201DF56A9A63E9
        544897EBEEE339C8733156EFED702EF73FB6C071F522608CD0C37F561B004936
        86867FFCEE6DE757BAF04A9F83BA546F563B1B056BA35FC585A05C6B1E2BD55A
        0FA0FEDEA6A376AD546F3FC05FDA53B70F45256A1FE97D4ECACBA572128C3099
        9CE30F189D3D7B2DE85F772BD5DAF794A2262F26D5ADBDD6DAE0620BFFF7C971
        1F59601270F8CF21FC3BAE775EBD34D4F39EA5DE5BEA273B630463A533663076
        38863896D47D42C17391E724CF4DD4CC8F343AB5F3DCE5391CBF3D8EAF170143
        841EFE34AB0D80241B4317C2A538A7B5A8B517E539C724E0F09F57F8F76002FB
        5DF5DC8724EFE31DC7D98B809845087F9AD50640928D66458449C0E13FE7F0EF
        3BF1FE9B89BE7E69F383E3ED4540CFA2843FCD6A0320C946B3A2C124E0F04F29
        FC09FFD6CFABE360E9C2717F4D7C1C14CD22853FCD6A0320C946B322C124E0F0
        4F31FC69FD7D37FE933A16961E1CF787E18F06C741D12C5AF8CF720320C946B3
        A2C024E0F04F39FC3BBA9B0183DFC09B5738EE0EFF050B7F9AE50640928D6645
        8049C0E1FF5406E1DF837FFB2DEAB8D87CE1B85F0587FF82853F61B13EB30D80
        241BCDF20E9380C33FC3F027BC9AF91D756C6C7E70DC9F05FF6D701C14CDA286
        3FCD720320C946B33CC32470191CFE6282491326E12FAAE363F381E3FE6C70F8
        2F68F8D32C3700926C34CB2B4C020EFF00C2BF0F13DA4BD471B2D9C2717F0EFC
        F1E038289A4EF85FD7E37011CC7A0320C946B33CC224E0F00F28FC69FDC99BBF
        A18E95CD0E8EBBC37FC1C39F66BD019064A359DE601270F80716FEB4FEBE9BFF
        4E1D2F9B0D1CF73F030EFF050F7F9AF50640928D66798249C0E11F60F8D3F1C7
        6FFC7FEA98D9DEE1B8FF59F8EF83E3A068F212FE847378A61B0049369AE50526
        01877FA0E14FC71FBBF13975DC6C6F70DCBF021CFE39097F9AF50640928D6679
        8049C0E11F70F8775CBFF16575EC6C7A38EED7C0E19FA3F09FC70640928D668B
        0E9300C3FFF7062785A2093EFC7BF0CA66551D439B1C8EFB73A1D03FF093B7F0
        A7796C0024D968B6C8300938FC1724FC090B80E7AAE36893C17177F8E730FC69
        1E1B0049369A2D2A4C020EFF050A7F42BDAF50C7D292C3712FFC4FFBE635FC09
        E7C8CC3700926C345B4498041CFE0B16FE849A1F57C7D392C1717F3EFC8FC171
        5034790E7F9AC70640928D668B069380C37F01C39F4E3C79F393EA98DA7838EE
        5F090EFF1C87FFBC3600926C345B2498041CFE0B1AFE84DA3FA88EAB8D86E3FE
        55E0F0CF71F8D3BC3600926C345B1498041CFE0B1CFE84FA5FAB8EAD0D87E3FE
        02F893C171503445087F9AD70640928D668B009380C37FC1C39F4EBCFFE6D7A9
        E36B1A8EFB5783C3BF00E14F38C7E7B2019064A359E8300938FC7310FE8405C0
        FDEA18DB6E38EE0E7F84FF5A41C29FE6B5019064A359C8300938FC7312FEB4FF
        456F5A56C7D96E87E3FE42F8D3C1715034450BFF796E0024D968162A4C020EFF
        F7E727FC8F5FFF3417006575ACED1938EE5F030EFF02853FCD730320C946B310
        611270F8E728FC3BDEF36B5E008C81E3FEB5E0F02F58F8D33C3700926C340B0D
        2601877FDEC29FDEF5492F0046C071FF3AF8DCE038289AA2863FCD730320C946
        B390601270F8E731FCE1D88FFDBC170043E0B87F3D38FC0B1AFE34CF0D80241B
        43B4BCD13C5C89DA27CBF5F643E57AEB4AA9DE7E00FFF7FAB17AE32E75FB9094
        ABAD7B50EF09D4FB206BE7FFF2FFAFD41B77ABDB8762756BEB60256AADA1E6B3
        E5A875B9526B9DC7FF7DAA54DB496DD3162601877F4EC39F8EBEFC7A300B804A
        AD5D2A45ADD318E31CE797CBB5D6FDA57A73EDC8D6D60175FB79C271FF0670F8
        1738FCE7BD0190646348D6AAD53B4AB5D67D38211B436C7361B074EDDA3E75FF
        2C2D9D3BB7AF526F72425175D336279CA56A35B8DA51DB31D81CA835EEA1B56A
        EBA0BAEFAC601270F8E738FC39B9EF7FFEAB335F0054AA8D4318CF0C7D35CE69
        A314352BEABEF380E3FE8DE0F02F70F8D3BC3700926C0CC572F5EA019C7CB5D8
        C938CCC590160167CF5EBB03355D8ED538CC65DE5EF59305D4733656DF301BC7
        6A0FCFE51D184C020EFF3C873FBDEB976FEDBFF6CA4C1700A55AFB1E8CE3510B
        DDA771B1AEFA98251CF76F82CF0F8E83A271F877CD7B0320C9C65074DFE6D727
        E31027553F5928D7DB67447D23B4CFA87ED256AAB52ABABEA12ECD7AE18549C0
        E19FF7F087D26B3E98E902808BEE52BD5915637AB85AF3A8EA6B1670DC5F04C5
        0EFF0F39FCFBE6BD01906463082A51AB244FC0D1B657AA3B99EF09588E1A8745
        6D63F17EAABFB4943737F7A38E8D785DE394A2E6BAEA6F1A98041CFE05087F3A
        F4F53F9CE90200AFFE477D3C374C7D1E1FD9E1B8FF3970F83BFC9F867960AE1B
        00493686A0526FDD2F4EBE04661746D32AD59AA7746DA3F17EAABFB454EACD69
        165D7451F537294C020EFF82847FE7FBFF0CFF0C170018B75762E338117E6CA0
        FA9B168EFB3783C3DFE1FFB4343600926C0C014EB4A49F9FC73DA0FA4B536FB7
        BCAA6D24DE4FF59796EEB72C746D636C2EE14FF599142601877F51C21F56DEF0
        D3992E00D6A3887B74B663E338914AADBDA6FA9C068EFBB7C01706C741D138FC
        774B630320C9C61094EBED2D75F2257059F59726D4508FD594545DF59716FCFB
        93EEB978DAB18DAB537F23009380C3BF40E14F77BFE4ED992E004A51839BFFE4
        581EAF79AFEA735238EE2F864287FF2987BF94C60640928D21C04936D5DB7395
        7AEB41D55F9ACA51F382AA6D2CDC4FF59716D430D54717B0B5F4C823537D2E8A
        49C0E15FB0F05F7BF7AF3E13FE192D007AFB5DD4581EAFD63AAEFA9C048EFB23
        E0F077F84B696C0024D918029C6849BF8A761B5E6047F597A64A6DD26F0074F1
        7EAABFB460D15556758D53A9B72FA9FEC6C124E0F02F5AF8C3E1BFF8AECC1700
        84204FFA15E3DBACD45A47547F49E1B87F2B38FC1DFE43615E98FB0640928D21
        A8D45A2BEAE41B87570C54FDA5A9546B2EABDAC6E1FD547F69395CDB39883A26
        FEE8659ACD8B98041CFE050CFFCEB5FF07C33FC305C0980B8C69B5D6C699AB57
        A7BE66078EBBC3DFE13F525A1B00493686807F38E126DD4C779FEA2B0BA865D2
        CFD333DFBC48957AF3B8A86D38BC8A3AD5684C3421621270F81731FCE1EE97BC
        35980540EF638068D7981E612F5704C4717F097C71701C148DC37FBCB4360092
        6C0CC54AADC54B7426FA5E7AA9DEAA4E1A44F354AA3F87934BD2CD8075DE5EF5
        9336FE61119074E1B5BD526F4FF48E0B2601877F41C37FF51DBFB83BFC335C00
        107FD782E33836AEB5A87D56F591048EFB9F0787BFC37FACB43600926C0C0977
        9723DCCFC913B22F6ADEBF726E2788001D74F452FB003725CA9A7B78B543DE4E
        DD3F2B4B8DC63ED4C60D81A326C6CB95A839D18F19611270F81734FCE9AE6F7E
        73700B00EA5D0E78E8150131FF6C956BAD752E8ED5FDC7C171FF0BE0F077F827
        92D60640928D214250567012F2E240FC76C0264ECA4BFC3A4E296ACFEDD29CB3
        C2AB1A96A2263F6FE4B50D78DDF1CBFCFC9117DE51B70F057FC5B0B3A1B1FBAD
        864D2C6638493E80E77E75D2CBFF621270F81738FC8FBDF51774F853C60B00EA
        FD70D7F1EEE5C7DBDC1CC8771ECF63AC9FDECBEF5DE0B87F1B38FC1DFE89619E
        48650320C946B359C22450F8F03FF981E2863F27FF435FFF233AFC298005C03C
        E0B87F3B38FC1DFE89A5B9019064A3D9AC601270F81739FCA1F4AA0FE8E0EFCB
        E10200C7FD3BE04B83E3A0681CFE934B730320C946B359C024E0F02F78F81F7B
        CBC774E80FCAD90200C7FD3BC1E1EFF09F589A1B0049369AED152601877FC1C3
        7FEDD15FB9B5FF79AFD2A13F28470B001CF7EF0287BFC37F2A696E0024D968B6
        1798041CFE450FFFF77EFAD6C117BE4E077E5C4E160038EE7F091CFE0EFFA9A5
        B9019064A3D9B4300938FC8B1EFE0880BB5EFC633AEC951C2C0070DCFF3238FC
        1DFE534B7B0320C946B3696012B8020E7F717217C9D1975FD7413FCC822F0070
        DC5F0A0E7F87FF9EA4BD019064A3D9A4300938FC1DFEB72A3FF4111DF2A32CF0
        0200C7FDAFC09707C741D138FC6723ED0D80241BCD268149C0E1EFF01F7DB19F
        5116740180E3FE3270F83BFC6722ED0D80241BCD92C224E0F077F84F1FFEB480
        0B001CF79783C3DFE13F33696F0024D9689604260187BFC3FFD6B1B77D5C077B
        520BB600C071FF6E2878F863DC3BFC67268B0D80241BCDC6C124E0F077F8EF3D
        FC6981160038EEDF030E7F87FF4C65B1019064A3D92898041CFE0EFF5BABB308
        7F5A9005008EFB2BC0E1EFF09FB92C3600926C341B069380C3DFE17F6BF5ED9F
        D0613E8D055800E0B87F2F38FC1DFE7391C50640928D660A260187BFC37FB6E1
        4F812F0070DCBF0F1CFE0EFFB9C9620320C946B3384C020E7F87FFECC39F025E
        00E0B87F7F7C1C148DC37FBEB2DA0048B2D16C10260187BFC37F3EE14F812E00
        70DC7F203E0E8AC6E13F7F596D0024D968D68749C0E1EFF09F5FF853800B001C
        F757C6C741D138FCD391D50640928D668449C0E1FF130EFFB9863F05B600C071
        7F757C1C14CDA99F74F8A725AB0D80241BCD300938FC1DFEB756DFF18B3AB467
        29A005008EFB6BE2E3A0681CFEE9CA6A0320C9462B364C020E7F877F3AE14F81
        2C0070DC5F1B1F0745E3F04F57961B0049365A71611270F83BFCD30B7F0A6001
        80E3FE83F17150340EFFF465B9019064A31513260187BFC3FFD6EA3B530C7FCA
        780180E3FEBAF838281A877F36B2DC0048B2D18A079380C3DFE1DF0DFFE7BD4A
        07F5BC64B800C0717F7D7C1C148DC33F3B596E0024D968C58249C0E1EFF0CF26
        FC29A305008EFB0FC5C741D138FCE1FA8D2FCBF61464B9019064A31507260187
        BFC31FE1FF4BD9843F65B000C071FFE1F838281A877FE733F8DF42083FFFF863
        37BEA8FEFB3C65BD019064A31503260186FFEF0F4E0A45E3F0CF38FC29E50500
        8EFB1BE2E3A0683AE12FC6429130FCFB63228B4540D61B0049365AFE611270F8
        3BFC6FADFE78C6E14F292E0070DC7F343E0E8AC6E17F7BF8F7A5BD08C87A0320
        C9C6D0AD47D11DAA7D1184503B260187BFC33F8CF0A794160038EE6F8C8F83A2
        71F8EBF0EF4B731190F50640928DA1596A34F695A2E67AA5D63A5FAEB736A001
        F572BDFD10FEF798BA4F28961E79645FB9D63E5EAE37CFA1D6A8577B548E5AE7
        2A516B6D097FEA7EF38249C0E1EFF047F8FF32C2FFD53A90D396C20200C7FD4D
        F17150340EFFD1E1DF97D62200FF4EA61B00493686A45C6DDD83F0BCD20BCE61
        CE57AA8D43EAFE595ADEDCB9B3546F5D12F53E236A5DE4EDD4FD670D9380C3DF
        E11F56F8D39C170038EE6F8E8F83A271F8270BFFBE792F0242D80048B231142B
        D59DBB1092DBBB425340D046472FB50FA87EB2706CE3EA41D4B519AF73884DDE
        5EF5332B98041CFE0EFFF0C29FE6B800C0717F4B7C1C148DC37FB2F0EF9BE722
        00F564BE01906463083A6F9D8F7BF51C53AAB71F507D65010B12BEE52FEB5478
        7BD5CF2C601270F83BFCC30C7F9AD30200C7FDADF17150340EFFE9C2BF6F5E8B
        80103600926C0C41A9DE5C534199C051D55F9ACAF56659D4954073E613212601
        87BFC33FDCF0A7392C0070DCDF161F0745E3F0DF5BF8F7CD631110C20640928D
        2140203EB03B201339A9FA4B136AB837565352F7AAFEA68549C0E1EFF0BFB5F6
        AE80C39F66BC00C0717F7B7C1C148DC37F36E1DF37EB4500FACB7C0320C9C610
        94EACDAA08C8241E52FDA5A95C6B5F14758D87FBA9FEA68149C0E1EFF00F3FFC
        69860B001CF777C4C741D138FC671BFE7DC77FE8F1EF3C7EFDC697D4BF378950
        3600926C0C010231E906BAB84BAABF34A1867AACA6A4EAAABF49611270F83BFC
        1723FC69460B001CF777C6C741D138FCE713FE84F9F9D2DA2BDFF1BD7B5D04A0
        BE203600926C0CC1D8AFCF0D7756F597A6726DB20D804FC3FD547F93C024E0F0
        FFA027C1B5777D7231C29F66B000C0717F577C1C148DC37F7EE14F98A3CF729E
        DEEB2220940D80241B438027FABEA7837102957A734DF59726D471325E57427B
        DABF8049C0E1EFF05FACF0A73D2E0070DC1F8D8F83A271F8CF37FC09D972BC3F
        57EF651110CA0640928D21C0937CA4FF644F60ABBCF970E617045AD968DD8D5A
        125DBF60C036EFA7FA4B029380C3DFE1DF0DFFE72F50F8D31E160038EEEF8E8F
        83A271F8CF3FFC89D982797AAB3F674FBB0808650320C9C65094EBED8976D387
        F0EABFAF12B5277A1780B757FD248149C0E1EFF0BFB5F6E802863F4DB900C071
        7F4F7C1C148DC33F9DF0EF63C60CCEDB932E0242DA0048B23114FCE11C3CC997
        079FF0A1A2D643695F577F94A56BD7782123FE7681AEF776E7797BD5CF389804
        1CFE0EFFC50D7F9A620180E3FEDEF838281A877FBAE14FFC63D60CCEDF932C02
        506F301B00493686A417A47C353DEC2DF5CD52ADBDAAEE9BB5CE60A937D74B03
        6F1BC56C956BADE3BC9DBAFF3898041CFE0EFFC50E7F9A700180E37E3D3E0E8A
        C6E19F7EF80F2A45ED55CCDF4F7F532DE92220A40D80241B438410BD134FF431
        04EABD9D5FD2AB374F57A2E6CA5AB535D76BE8CF027FA8A8526BAD94EBED33AC
        1D8FE14CA5DE5A598976A6DEAF8049C0E1EFF047F8FFCAAD035FF91A1DAC8B62
        8205008EFB63F17150340EFF6CC3BF8FD9C30C6216715E3FFE86F7FFF971170B
        0A690320C9460B1B260187BFC33F1FE14F09170038EEEF8B8F83A239E571CFF0
        FF4D353E4230EE8A81216D0024D968E1C22450F8F0F7240879097F4AB000C071
        7F223E0E8AC6E33EECF0EF1BB608086D0320C9460B13260187BF27C17C853F8D
        5900E0B83F191F0745E371BF18E1DFA71601A83FA80D80241B2D3C9804AAE0F0
        1F38A10AA913FEAFD541BAA8462C0070DC9F8A8F83A2F1B85FACF0EF8B2F0242
        DB0048B2D1C28249C0E1EF49309FE14F43160038EEEF8F8F83A2F1B85FCCF0EF
        1B5C0484B6019064A385039380C3DF93E0ADB577E734FC492C0070DC3F101F07
        45E371BFD8E1DFD75B047C01FF1BD40640928D16064C020E7F4F8208FF5FCD6F
        F8536C0180E3FE13F17150341EF7F908FF3E847FE6BF52ABC846CB1E260187BF
        27C14EF81FFCAA1C873F0D2C0070DC3F181F0745E3719FAFF00F996CB46C6112
        70F87B122C46F813160038E6FBE02707C7401179DC3BFCD3241B2D3B98041CFE
        9E048B13FE70E0C53F56C171FF507C1C148DC7BDC33F6DB2D1B28149C0E1EF49
        B050E14FA73F7CE3E7D45828128F7B877F1664A3A50F9380C3DF9360E1C27FE5
        877F528E8522F1B877F86745365ABA300938FC3D093AFC0BC8E3DEE19F25D968
        E9C124E0F0F724D80DFFAFFE41199479B4F2230E7F8F7B877FD664A3A5039380
        C3DF3F6DEAF02F2087BFC33F04B2D1E60F9380C3DFE15FC0F0FF901C0B4572D2
        E1EFF00F846CB4F9C224E0F077F8DF5A7BCFAF21FC5F278332779EFBAA5B2B6F
        70F83BFC1DFE21918D363F98041CFE0EFFC285FF3187BFC31F1CFE61918D361F
        98041CFE0E7F877F0139FC1DFE21928D367B98041CFE0EFFE285FF8F7E588E85
        2271F83BFC43251B6DB6300938FC1DFE0EFF0272F83BFC43261B6D76300938FC
        1DFEC50BFF373AFC1DFE0EFFD0C9469B0D4C020E7F877F37FC5FE8F02F1287BF
        C37F11C846DB3B4C020E7F877F01C3FF23722C1489C31FE1FFE4CD7FA8E6450B
        8B6CB4BDC124E0F077F8172FFCDFE4F077F83BFC17896CB4E9611270F83BFCE1
        53B70E7ECDEB7558E68DC3BFE3E44F78DC3BFC178B6CB4E9601270F83BFC6FAD
        5DFFF4AD83DFF56E1D9679E3F0EF70F83BFC17916CB4C9611270F83BFCBBE1FF
        F2F7DDDAFF5DEFE984A30CCDBCC0E35B7DF347E558281287BFC37F51C9C650F1
        EF58BD7157A5DE2C55AA8D43EA3659C024E0F077F83F13FE7FE9BD5D2FC8F18F
        FC38FC3B1CFEB309FF52AD7127E775FEAFFAEF216316B1766613334ADD2654B2
        31342BB5D6A172D47AA85C6F6D4263C046A5DEBABFD268EC57F74B03260187BF
        C37F77F8D337BC4187E7A273F87738FCF716FE471B8D03E5A87D96F3786C5EDF
        2CD55B0F1C899E7540DD2F04CC1C668FAA9D59C5CC52F70B8D6C0C099ED0639D
        27F5F627392E2AD57696D5FDE7099380C3DFE1DF09FF43DF1D0B7FFA961FD301
        BAC818FE6FF92939168AC4E1BFB7F02FD7DB65CCDBF1F0BC5D0DFFBDD62EABFB
        67895983FAA25DF5DE8E99754CDD3F24B231147C5B25F6A40E8515E316DF8251
        FDCC032601873FC3FFBA9E1C0A6358F8D3B7FDB80ED145F53C873F39FCF716FE
        A55AFB1ECCD9DBF1397C886DDE5EF59305660CB346D42931C3543FA1908D2128
        6F6EEEC713386E9575BB5AEBD2D2238FEC53FDCD12260187BFC3BF17FE4FE8F0
        A73C6D0474F87738FCF716FE4BE7CEEDC35C5DDD35778F56E5FD547F6962B630
        63447DA344CC32D55F086463082A51FBA47832C72A45CD8AEA6F56300938FC1D
        FEE3C3BF2F0FD7FF67F8FF98C3DFE1BFF70D7FA5A8BDAAE6ED71783FD55F9A98
        2DAAB6719865AABF10C8C61094EB6D6EFA934FE828957AEBB4EA6F16300938FC
        1DFEC9C39F167D236027FC7F5A8E852271F8EF3DFC09AFA0B9714ECEDD23E17E
        AABF34315B646D63B51F52FD85403686004F5C7DF71399C879D5DF5E611270F8
        3BFCBBE1FF3D09C39F5EBCB81B010F3CEFD50E7F70F8CF26FC09F3F395D87C9D
        D415D55F9A50C3F9584D49D5557F21908D21E8EC00D54FE668B5F645D5DF5E60
        1270F83BFC270F7F5AD08D809DF07FABC3DFE13FBBF027CCEB35396F8F83FBA9
        FED2C46C91B58D832C53FD85403686004FDC94ABADE6BDAABF69611270F87FC8
        E13F55F8D377C1826D0464F8AF39FC1DFE30CBF0A752BDFD809EB747E3FD547F
        6962B6A8DA1298CBBBD2B3201B4330FDE72DB3FBEE25260186FF1F0C4E0A45E3
        F08769C3BF6F8136023AFCBB1CFEB30F7F2AD7DBEB62CE4EA0BDAEFA4B13EAE0
        3569446DA3CD735FDA5EC9C6102C57B7EFC49397F8FB963DF595733B33F9CA05
        260187BFC3BF1BFEAF7852077B52DFF0A3326C43D309FFB7FD8C1C0B45E2F09F
        4FF813AFEE87797AD28F773742B82A20B305B54CBA376D8B59A6FA0B816C0C45
        256AAD892774A852BD3593AB01621270F83BFC6F1D9F45F8D3026C0474F87739
        FCE717FE7DE55A8B57019473B884DBAB7EB2C08C91350EC10C53FD8442368682
        7F38F8493E77D92E47ADE3AA8F49611270F83BFC6F1D7FECD35F9E49F853E01B
        011DFE5D0EFFF9877F1FE66C5EE765DCD500F9DF83FB0E3DB3A6579BAAF919C8
        AED07F1C483686A65C6B1EC513AA778FD65A9756365A77ABFB4D0A9380C3DFE1
        7FEBF8E337FEE4CEEF7DEA9FCB309F56A01B010F3C1FE1FF7687BFC33FBDF0EF
        2BD5777849E0615F0BAC2E575B87D5FD42C0CC61F688BAA9C6CC52F70B8D6C0C
        55E72723A3E60A9C2847CDF2EAD6D64175BB696012A881C3BFF0AFFC6FFCE989
        F7DFBC82D0FE3F7685F85E04B811B01BFE3F2BC7429138FCD30FFF41FC395D5E
        658FF37AE76A7B97B716E297F48819C42C62EDCCA645FB3963D9583498041CFE
        1FFA8CC3BF17FE1C1308EDD92E00BE31AC8D800EFF2E877FB6E16FD9928D4582
        49C0E1EFF0BF2DFC09A13DDB05C08BDF2A83380B9DF07F87C3DFE1DF09FF7F30
        381F5AB1C8C6A2C024E0F077F8F7C3FFB62B8D21B467BB00F8F63036023AFCBB
        1CFE0E7F2BF002009380C3DFE1CFF0FF5C3CFC09A13DDB05003D2FDB8D800EFF
        AE931F70F83BFC8D6463DE611270F83BFCFBE11FA93182C09EFD02E085AF97C1
        9C866EF8FF9C1C0B45E2F077F8DB3364639E611270F83BFC47863F21B067BF00
        C86823E081AF7CCDADE3EF74F83BFC1DFE763BD9985798041CFE0EFF7EF86FAA
        31D287C09EFD02E091F437023AFCBB1CFE0E7FDB4D36E611260187BFC33F51F8
        13027BF60B806F7F970CE97971F87739FC1DFEA6C9C6BCC124E0F077F833FC3F
        8FF0DF5263240E813DFB05003DEFD532AC67AD13FE3FFE3139168AC4E1EFF0B7
        E164639E601270F83BFCFBE1DF5063444158CF670190C24640877F97C3DFE16F
        A3C9C6BCC024E0F077F84F1CFE84B09ECF02E01BDF28437B561CFE5D0E7F87BF
        8D271BF3009380C3DFE1DF0FFF961A23A320ACE7B30098E34640877F97C3DFE1
        6FC9C8C6458749C0E1EFF09F3AFC09613D9F05C09C360276C2FF5D0E7F87BFC3
        DF92938D8B0C9380C3DFE1DF0FFF1D3546924058CF67014033DE0878E0AB18FE
        3F2FC7429138FC1DFE3619D9B8A8300938FC1DFE7B0E7F4250CF6F0130C38D80
        9DF07FD4E1EFF077F8DBE464E322C22450F8F03FEDF067F87F01E1FFB01A2393
        4050CF6F01F04DB3D908E8F0EF72F83BFC6D3AB271D1601270F83BFC6716FE84
        A09EDF02E091B7C9409FC481AF7AADC31F1CFE0E7F9B9E6C5C2498041CFE0EFF
        7EF83F4B8D916920A8E7B700F88EBD6D0464F8AF3FFA0B722C1489C3DFE16F7B
        231B1705260187BFC37FE6E14F08EAF92D0068CA8D809DF07FB7C3DFE1EFF0B7
        BD938D8B009380C3FFC30EFF5EF83F478D91BD4048CF7701F0353F24037E1487
        7F97C3DFE16FB3211B438749C0E1EFF0EF87FF9F556364AF10D2F35D004CB811
        D0E1DFE5F077F8DBECC8C690611270F83BFCE71AFE84909EEF02E05B936F043C
        F802873F39FC1DFE365BB2315498041CFE0E7F86FF1711FE5FA1C6C8AC20A4E7
        BB00F88E4765D8C775C2FF3D1F9763A1481CFE0E7F9B3DD918224C020E7F877F
        2AE14F08E9F92E00E8F9A337023AFCBB1CFE9DF0FFFB6A9C9AED856C0C0D2601
        87BFC3BF1FFECF556364D610D0F35F008CD808E8F0EFC2F19663A1481CFE362F
        B2312498041CFE0EFF7EF83F5F8D91794040CF7F01F0A2370D09FF1F74F883C3
        DFE16FF3251B438149C0E1EFF04F3DFC09013DFF0580D808D809FFF73AFC1DFE
        0E7F9B3FD918024C020E7F877F3FFCBF4A8D91244AB5C69DA57ABB528A5A47CB
        9B9BFBD56D1404F4FC1700B18D80DDF0FF841C0B45E2F09F2EFC572F3E7B7FB9
        D63C5AAAB52A4737DA772DE14FDD2E344B8DC6BE527DE79E4ABDBDC2FF5DAA56
        F7A9DB8568E9DAB57D95DACEDDAC7D25DA397CF6ECB53BD4ED42251BB38649C0
        E18FF03FEEF09F2AFC97CE9DDB57A9B74E97EBAD4D68C45C29D59ACBEA7E8310
        D0F35F00D0F35FD30DFFAF76F893C37FF2F0AF6C348E605C5F8E8D73C2F86FDF
        BB1E454186D24AAD75A85C6B9D439DDBB1BAB7B1683F57BEBC7548DD2F04876B
        3B0731C73C885AB7E2B5C385A351F32E75BFD0C8C62C611270F83BFC19FE5F42
        18BC408D91512AF5C6DD3801AF0C9C901256ECF771A1A0FA2084733A0B80AFF9
        21877F8FC37FB2F0E7ABCF72BD79468DEF981AC2F688EA232BE5A87D0C75A905
        FAA04DDE4EDD3F4BA5A859416D1BB15A6F53E2C2206A1E57F70F896CCC0A2601
        87BFC3BF1FFE2F54636494B56AF50E9C7CF5F8C9384C256A9D51FD10C2399505
        C0C16F7DEBADF5EB0E7F87FF14AFFCA3F64935AE87D8E0AB56D54FDA5037DFB1
        50354ABCBDEA270BE56AEB1ED4147FC762282E16543FA1908D59C024E0F077F8
        F3F14F15FE8493ED3E75128EB2526F1F567D219CE7BE0038F8F2C76F9D78E293
        722C1489C37F8AF0EFBED3953888BA9A0FA9BED274AAD1E022BDB6BBB6916ABC
        9FEA2F4DDCAB80E770ECBB8B311B47B6B60EA8FE42201BD38649C0E1EFF0EF87
        FFD7AA3132CEEAE5C64171F28D55A9B5CEABFE10D0735D0074C2FFA95F9163A1
        481CFED36DF82BD55A0FA8F13C56B57DB7EA2F2D955A7B4DD63506EFA7FA4B13
        3757AADAC6AA354FAAFE42201BD38449C0E1EFF0EF87FFD7A931920456E66579
        F28DB7A9FA4348CF6D01E0F0EF72F84F17FE54AEB7277D15DD51AAB557557F69
        410D67E335257456F597267E6428EA1A2F6A9D53FD854036A6059380C3DFE1BF
        E7F0279C68A7769D7809F1AB82F1FE10D473590074C3FF57E558281287FFF4E1
        BF726E67BF1AC749E055EC7DAACFB4A08649DF42EFBBA2FA4B136AB810AB29A9
        48F51702D998064C020E7F877F3FFCBF418D914994BA5FFB5327DF58EA2B3B08
        EB992F001CFE5D0EFFE9C39F4AF5E74CBD00E0B75F549F69C1795A55758DC3FB
        A9FED2843ABC0098054C020E7F877F3FFCBF498D9149F5BE9AA34EBE7136D505
        5310D8335D0038FCBB1CFE7B0BFF3E8CDBC4DF761954AA3733FD2C1D354CB777
        01F753FDA50935DC1BAB29112C5EE43EA310C8C679C224E0F077F8CF34FCA952
        6D1C5227DF5851F382EA0FA13DB3054027FCDFEFF077F8CF26FCA91CB51E92E3
        798CE56A4B7EEB252DE55AEBB8AA6B2CDC4FF597A672ADC96B17E8FA4628D5DA
        A7557F21908DF38249C0E1EFF0EF87FF8BD418D98B52BD3DF1AB8B526D475E15
        10C13D9305C0C197BFCFE10F0EFFD9853FF1EBAB18BF137E0DB07521EBCB03F7
        3EBE8862758D13F17EAABF3475BFC238F1E6CB4D5EF150F51702D9380F9804EA
        E0F077F833FCBF598D91BD9A747219F57928C27BCF0B00877F97C37FB6E1DF37
        E1BE974DBE4BA6FA49DB4AD45A16F50DC5DBAB7EB2C02B2AAA1A4708EE4A8683
        64E3AC611270F833FC1FD3934351CC33FCFB96A3065F198D5DA557A2D683A3AE
        918E00DFD302E0E0773BFCC9E13F9FF027FE680E5E91DEAFC6774C94E4F72FD2
        54AEB58F630113BF8EFE6D3AFF1DB753F7CF126A3B86E77D64EDB05D8EDAA7D4
        FD43221B67099380C3DFE1CF5F35FC32C2E0C56A8CCC1A2F09CC57F79D9370F7
        89594F72794E84F8D40B00877F97C37F7EE13FA8526F9630AED5A297E3FF81E5
        EAD520AF44C76FDFA0BE8B03F50EBA78ACF670B03FA853DE7CF8109EF7F3A26E
        BACC5F3554F70B8D6C9C154C020E7F877F3FFC1F5163649EF80A8927225E49AC
        32F427790B14413ED502E090C3BFC3E19F4EF80F3AB671F5205E9996B9D37F79
        A37978D48F5D85A4D268ECE7CF7557A2D6DAA43FDB9DB5DEEF8F1C61EDFCA8E2
        E8A576B097FD5564E32C601270F83BFC330BFFBD42984FBC00E884FF071CFE0E
        FFF4C3DF6C1AB271AF3009DC0BBF373829148DC31FBAE1FF1235464287409F68
        01E0F0EF72F83BFC6D71C8C6BDC0247037FCE3C149A1681CFED00DFFBFA0C6C8
        2240A8275E0074C3FFD7E4582892134F39FC11FE7F4F8D27B310C9C6BDC044F0
        C9F8C450240E7F58F0F027047BA205C081975EC7A4EF1FF671F83BFC6DF1C8C6
        69612278437C622812873F74C3FFDBD4F8582408F7440B80638F7E5C8E852271
        F83BFC6D31C9C6696022F83AF8D2E0C450240E7FE886FF77A8F1B16810EE6317
        00A537FFB41C0B45E2F077F8DBE2928D93C2447009FE6870622892D31F71F8F7
        C2FF3BD5F8584408F8910B80C33FF893722C1489C3DFE16F8B4D364E02134119
        FEE5E0C450240E7FC859F813427EE802E0CEEF7BF2D6E90FDF90E3A1281CFE0E
        7F5B7CB27112980C6EC62787A270F84337FCBF4B8D8D4586A0970B80832F7BFC
        D6C982EFF877F83BFC2D1F646352980CFE4C7C72280A873F30FC9FBAF997D5D8
        587408FBDD0B80BF7C1DC7FC97E478280A87BFC3DFF24336268509E11FC62788
        2270F84337FC5FAAC6451EA805C0F21B7F4A8E87A270F83BFC2D5F6463129810
        BE313E411481C31F721EFE145F001CF82B8FDD3AF5A14FCB3151040E7F87BFE5
        8F6C1C0713C21DF03B8313441138FCA11BFE2F53E3224FE20B80F28FFDAC1C13
        45E0F077F85B3EC9C67130297C577C92C83B873F74C3FFE56A4CE4CDE002E0E0
        CB1F2FECAE7F87BFC3DFF24B368E8249E14EF8B7839344DE39FCA11BFEDFA3C6
        441E0D2E002A6FFF981C1779E7F077F85BBEC9C6513031BC263E51E499C31F0A
        16FED45F001C7AC513B74E7FF4A61C1B79E6F077F85BFEC9C66130311C80C2FC
        C6BFC31FBAE1FF0A351EF2ACBF0038F6AE5F906323CF1CFE0E7F2B06D9380C26
        876BF1C922AF1CFED00DFFEF536321EFB800B8F3FB9E926323CF1CFE0E7F2B0E
        D9380C2688C7E313461E39FCE1FA0D86C1F7AB7150045C00ACBCF3E7E5F8C82B
        87BFC3DF8A45360E8349E29FC7278DBC71F84337FC5FA9C64051700170F2839F
        9263248F1CFE0E7F2B1ED9A8609238179F34F2C6E10F0EFF8EBB5FF9817FA1C6
        481E39FC1DFE564CB251C14491EBDDFF0E7FE886FFABD4F12F9ACADB7EEE3FA9
        7192370E7F87BF15976C543059FC467CF2C80B873F74C3FF35EAD817D189A77E
        E5B36AACE489C3DFE16FC5261BE330592CC3E707278FBC70F84337FC5FAB8E7D
        11615C9C8C8F93BC71F83BFCCD64631C268C17C727903C70F84337FC5FA78E7B
        51616CBC3C3E56F2C4E1DF09FFBFAB8EBD5991C8C6384C1AEF8A4F228BCEE10F
        0E7F09E3E3AFC5C74B5E9C78D2E1EFF037EB928D7198383E169F481699C31FBA
        E1FF7A75BC8B0CE3E320E4F2F37F87BFC3DF6C906C8CC3E4F1B7E293C9A272F8
        4337FC7F581DEBA2C318B9373E66F2C0E1EFF0378B938D719840FE697C425944
        0E7FE886FF8FA8E31CC7BF95EACE5DE5A87DAC5C6FDD5BA9B74E94A2D6D14AA3
        B15FDD3E24FC3B1A35EF42CD2BE57AF34C256A9F2CD5769697AB570FA8DBF761
        9CB4E3E366D139FC93853FC706C708C74A67CC60EC700C712CA9DB8784E764E7
        DCC439CA7395E72CCFDDD06B5FAA56F72D6F340F57EACD353CE798639A6BCB51
        E3F0D2B973FBD4ED43B2D468EC2B458D7B4AF5D62A6B2F47CDE3956AF3C899AB
        57EF50B70F916C8CC324F287F14965D138FCA11BFE3FAA8E71DCB1DAC377956B
        AD4B984C1AC21606FC7AA8934B79F3E143A8F142ACE6BE6D38B974ED9A9C6030
        56BE313E761699C37F7CF8732C704CF4C6861A331738A6D47DB3C63F9E8BA811
        E7A4A81DE730CF6575DFAC2D6FB49751637D57CD5D1116032575BF1060917804
        35D6623577D55A1BA55AABA2EE171AD9380893C821F8F2E0A4B2681CFED00DFF
        37AA631C578ADAAB58D5EA096550AD7DB1BCB919D4BB0138F9CAA86D7357ADBB
        5D3E5CDB3918BF3FC6CBF7C4C7CFA272F88F0F7F8E018E85D8D8503639B6541F
        59E1B9D7390775BD4FE3B9CC735AF59115D4755FBC4E05417A9FBA7F964A51EB
        B4AA35AE12B51E5C7AE491A0DFC9908D833091DC179F581689C3BF0BE1FF6675
        7CE3CAD5D63D18BCC35E09290FA87EB2D07BE59F24FCBB6AAD73F13E3066DE1A
        1F438BC8E19FEC6D7F8E013936B4CD90DE09403D0FC4EA1B659BE7B6EA276DA5
        5A7B55D437146FAFFAC942296A56548DC3F0E324D54F2864E3204C260FC72797
        45E1F0EF4A1AFEFC3C0E83F64A7C108FD7CEFC9551F7ADD0A16FFB8F726CB01F
        8C9B8FC4C7D1A271F8270C7F1CFBD85848E202C79AEA2F4D3CE7446DE35CE139
        AEFA4B4BA5DA986C91DEB5C9FBA9FED274646BEB006AD988D536CE76A5B673B7
        EA2F04B27110269417C5279845D009FFC7F5E4502408FFB7A8E3AAF43ED75283
        78A452BDBDEB9574DAB8594BD5364EA9DEBA34D80FC6CE425F03C0E19F2CFC89
        C75E8D897138D6547F69E239A76A1B87E7B8EA2F2DA89B9B14656DA3F07EAABF
        347537FBE9FA466B9E51FD8540360EC2A4F295F14926740EFF2E84FF5BD5311D
        A65C6B1DD70378AC48F597A6EE6E7F59DB385B831B02317E7E3B3E9E1605824F
        8E8322491AFEBD8D7FE3F7B9081C6BAACF34A18E285E572238C7557F6929D7DB
        0FCABAC66A3FA8FA4B13F723E8DAC6889A17547F21908D8330B154E3134DC81C
        FE5D08FFB7A9E3390A06EBD95D8337A123D1B3467EBD6EDEB8CA56752551A937
        9E7E8B0E6368217F06D8E19F3CFC89C75C8D8564B27D45C7734DD795C859D567
        5AF0EFEB9DF3E3D5547F699AF61D23D854FD8540360EC2E452894F36A172F877
        21FCDFAE8EE5387B08D1EDACBFFBDAFDEEB6AC6DAC631B579FFE3600C6D13F8C
        8FABD039FC270B7FE23157632189AC3776F15C431D936CD41D90EDE2053524F9
        C6857259F597A6693F7681CC172FC3C8C6384C327F129F7442E3F0EF42F8BF53
        1DC324F6F036FA15D55F9A780117515712B77D7C81B1F4E9F8D80A99C37FF2F0
        EFE3B18F8D854438D6547F69421D536CD6CDFEE38B69DF460FE1EB80A8E354BC
        AE64B2FFF86218D9188789E6FF8E4F3C2171F87721FC7F5C1DBFA496ABDB77EA
        013C46AD75BFEA2F4DBC8A1B6A99FC5551AD75DBC989F1F413F1F1152A87FFF4
        E14F3CF6724C8CB63DEE6A9269E039276A1B8BE7B8EA2F2D95DA742F32783FD5
        5F9A2AB57649D53656ADB5AEFA0B816C8CC36413ECDBA20EFF2E84FFA3EAD84D
        0A0376D215FAE64AB413C477A351CBA41F036C1DDD68DFB6A31B63EA4DF13116
        2287FFDEC29F78EC39066263629C20BED7CD730EB54CFA75BACC5F45F3C23895
        7A7BA2CFD279FB502EA8837ACEC7EB1BA9D6AA857C6960D9188709E753F10928
        040EFFAE59853FAD47113F5F9C64A3CE6DDFA3CF526F6777F2CF18A3E6AE1DD1
        18572F8D8FB3D038FCF71EFE7D1C03726C6897875D423A0BA86792EB18D4786E
        AB7ED276ACDEB88B57271435EEC2DBF1F6AA9F2C4C7A1D03FE3680EA2714B231
        0E93CE07E29350D61CFE5D08FF77AB63B617A5A8CD8F02C65D546793DF8B55F7
        CF52E7D2AEE3AFEEB6C5895F5DD00563EB6BE3632D240EFFD9853FF1AFB70818
        1D481853EAD2D159EB7D377D5C205DE039ADEE9F95CA4663F8B5F49F51CBFABA
        054AA9BEC3ABA58EDB8311F46F19F4C9C6384C3CAF8B4F44593AFD51873F21FC
        DFA38ED72CF0AFFB0B5D9DAFBE0C7EB65E2FD5DB0F942F6F05F9E3287DA8F358
        EF6B3B83137B8489FCC1F8DBFE8330BEB6E2E32D140EFFD986FFA0CEC701DD3D
        01831B03B77A63289877B9149E8B9D73F2F61FD6E1397B89E730CF6575BFAC9D
        6A34EEA8D4DA674AF56675A06EBEEAC7FFDF3CB356AD86FBD6F9B9737CB7919B
        02B91018981FDB356E582CD59F13FC2FA6926C8CC3E413C527A3AC38FCBB10FE
        D7D5B19A07FEEC65B9DABE7BADDA0AEE15D0387CCB96DFF91EFCAADF28186327
        E2632E040EFFF9857F1CC70AC74C486FF727C57394E72ACF59F5DF43B57AF1D9
        FBF9D3BAFC5FF5DF43C6854CF767811723F407C9460593D0BF8B4F4A6973F877
        21FC1F53C7C8F60EE3EC0EF8CF83E32E6B0EFFF4C2DFAC4864A38289E843F189
        294D0EFF2E84FFE3EAF8D8EC60BC7D223EFEB2E2F077F89BCD8B6C54301965B6
        39CAE1DF85F07F421D1B9B2D8CB96F8D8FC12C38FC3BE1FF77D43132B3BD938D
        0A26A4BBE0B38313541A1CFE5D08FF27D571B1D9C3B85B86CF0F8EC3B439FC1D
        FE66F3261B87C1C4F4D7E313D53C39FCBB10FE4FA9E361F383F1F71BF1F19816
        87BFC3DF2C0DB271184C4EDF1D9FACE6C5E1DF85F0FF803A16365F1883AF8E8F
        C934AC3FE1F077F89BA543360E8309EA747CC29A07877F17C2FF27D471B0F9C3
        387C303E2EE7CDE1EFF0374B936C1C0513D5DF8C4F5CB3E4F0EF42F87F503DFF
        961E8CC77F161F9FF3E2F077F89BA54D368E82C98A1705FAD2E0E4352B0EFF2E
        84FF87D4736FE9C2987C343E46E7C1E1EFF037CB826C1C0793D6CCBF27EDF0EF
        42F87F583DE7963E8C4B5E1570AEDF7C71F83BFCCDB2221BC7C1C4F5007C6E70
        22DB13877F07C2FF23EAF9B6EC607CCEED5D0087BFC3DF2C4BB231094C60B3F9
        8540877F07C2FFA3EA79B66C618C96E1BFDC366667C0E1EFF037CB9A6C4C0293
        D871F8E3C1496D620EFF0E84FF4FABE7D8C280B1FA23BBC6EE1E38FC1DFE6621
        908D4961327B7B7C724BCCE1DF81F0FF19F5DC5A38305EEF86FF78DBF89D92C3
        DFE16F160AD9981426B4A3F08783135C220EFF0E84FFCFAAE7D5C28371FB8A5D
        E378420E7F87BF594864E32430B17D0B7C7970A21BC9E1DF71E2C99B3FA79E4F
        0B13C6EE41F8D7B78DE50938FC1DFE66A1918D93C204F78EF8842739FC3B10FE
        3FAF9E470B1BC6F04B768DE9041CFE0E7FB310C9C6496192DB077F7570D2DBC5
        E1DF81F0FF05F51CDA62C058FEE8AEB13D82C3DFE16F162AD9380D4C7647E077
        0627BFA739FC3B10FE1F57CF9D2D0E8C677E14F0776F1BDF4338FC1DFE662193
        8DD3C2A4C71F50F97F0727C14EF8BF4F4F0E4582F0FF847ACE6CF1605CAFC2BF
        B96D9CC738FC1DFE66A1938D7B81C9EFF9F085CE44E8F0EF40F8FFA27AAE6C71
        617CD7415E07C3E1EFF0375B04B271AF3009BECAE1DF85F0FF65F51CD9E2C338
        7F11DCF60D1887BFC3DF6C51C8C65938F1D4CD5F5793439120FCFD55BF9C43E8
        BFD9E1FF0C87BFD9E2908DB3C2EBDBAB4922EF8E5FBFF1253CF6EF57CF89E5CF
        998F7EE6D71CFE0E7FB345231B670941F8D2E38FDDF8A29A30F2E8F8E337FEC7
        89F7DF7C583D17964F38DE47B000F8176A3C14853FEA325B3CB271D630416E21
        18FF584D1C79B2FEBE9BFF0E8F75553D07967F08C19B6A5CE459EFDDAE57A9E7
        C3CCC2261BE701C1B88C5749FF5A4D2279B0FEE4CDBFAD1EB7150BC2F087D7AE
        DFF8B21A23798345FD9FE0BC7E8E7A1ECC2C7CB2719E10947F4D4D260B0B933D
        26FD77AAC7DA576934F62F6FB4972B51FB64396A9FE5FF966A3BCB2BE776F6AB
        DB8762A95ADDB7526B1D29D75AC7CBF5D6D94ABD75BA14352BC736AE1E54B70F
        C9D2B56BFB96A3C6E14ABDB956AEB7EFAF44AD33A55AAB52A9360EA9DBCF1242
        F1F9C71FBBF1A772BCE4C4FAFB6EFC073CCEF5F8635FAE6EDF8971B282F1722F
        C6CDFD253CFFA5A871CF12FEE2B70D0DC746678C60AC74C60C6AE718E25852B7
        0F09CF499E9B3C4779AEF29CE5B9CB7358DD3E149C0339170ECE8D9DB91273A6
        BA7D48D6A3E88E52D43E5AAAB74FB0763855A9B54BCBD5AB07D4ED43241BE78D
        6F19F2B37235B12C124C827F8049F085EA31F655A22627C30D68EC526B6D70C2
        51F7CBDA72B57518355677D5DCB50DA7961A8D20279795EACE5DA8EFF240BDB7
        C3047FF6ECB53BD47D6705E3E234C6C7EFAB71B3E8B088FF7B787CB73D7FAB17
        9FBD1FE173BF7CBEBB2E94EAAD3B07EF130A8E058E095173DF658E2975DFACF1
        1C447DA780E7A4AABDCA7359DD376B9CFB38078A9A698373A7BA5F0818F4A831
        8AD5DCB789B1BE101F05CBC6347002C142E00378A5F47935C9840C8B97FF86DA
        5FA91E571FFF30081E1083437920A4574878F5B38E9A864D2883AE1CD9DA0A6A
        B58B55F831D435B6761C9BEABCDF0DC0183FB0FEC4CDDF526368215DBFC19FB0
        7E22FE388F464D2EB8EAF1E758D82AD7DAE5F8FDB3D479D53F7CA13B689B634B
        F591159E7BA8EB4AAC4E05E7437BD7BB3559E11F6A4A3437720E0D696E242C5C
        EE53B5C6A1F6F3A1BF03231BD38449F29E134FDEFC243713C94927207C5B1713
        E0A3EA71C4F5DE36970343C2ED553F695BA9B7F9CA3F49F8F73DA4FAC9422F88
        B662F58D72218DC90563E6655834FE1735A61605BFE580737527FED8961E7984
        AF402FC59ED75136576AADB97F0C9304FF50CF85587DA36C718CA9BEB2807A1E
        8AD537CA36CF6DD54FDA16756EA4DE0B0C5DA7508A5AA7553FA1908D59C0E4B2
        CA8D74216EA042F07F0193F8CFF0159DAA3D8E9F83E2E04F1244B4C5FBA9FED2
        D2792BB4D6AA89DA46AAD4DB99BF55C73FD43149107554A2D69AEA6F1E30867E
        140B81CFAA3116AAF5F7DDF8F718F75FAB1E0F55A2E609F5BC8E715EF595361E
        7B51DB481C631C6BAABF34F19C53F58D84737BDE1F7D8DB3A87323AD6E6D1D44
        2D9BB1DAC6D95EDE6806F9110CC9C62C61B27908AF367E93A1AB26A434719FC2
        89276F7E06352DAB5A879972524418354FA8FED252AE358FAABAC6A9D4B29FD0
        7B9FFBCBFAC6B8A4FA9B178C257EF4F504C6F7E7D4980BC5F1F7DDF8CFA8F53B
        D5631834CD82913899AAFED2843A265E305208FB0178CEA9DAC6C239AEFA4BCB
        A2CE8D54A9B5275E3076D45AF7AAFE42201B438027EEE2F1D73CFAAAF577FFE2
        DF3BFED8A7D3B986C0F5CE2B9EDF43E87F02935F43D595046A9FE4ADB94199BE
        9DDEFBEC5FD535CE86EA2F4D93BE3537603B8BCD8C185F8730CE7E010B81A02E
        928545EF7FC702E575AAE638EED416CF67325133D3BD00BDCD73937CD4F58C00
        F602A08E619BE7C6C8762F006A58C8B991C66C721DE5A2EA2F04B2310478D26E
        7BABE5D8B77ECFD7AFBFF3E73EB9FED8AFFD87597E4CC0771AD69FB8F93B98F4
        DE8A4979269312EA4DB2214AA9ABFED2827FFF6CAC9EC4D6AAAD4C5FD1A1867B
        E33525566DDFADFA4C03C7DCFA7B7FF96731AEFF63561F7FF5CE817F8273E0F5
        AAC661F0DC4DF58E5147AD7952F599161E7359573299BEA2E3B9266A4AEAACEA
        332DF8F717726EA4693E62ECD954FD8540368660D45B8B95879FB773FC35EF7E
        F5FA5B3EF4D4FA3B3FF6E9F577FFD23F58BFFE2BFFE7FA639FFA3DBE5B8009ED
        F37C35CF09956FB57203D6FAFB6EFE1B4C72BF8D575D7F1513DD53F04A4CBE5F
        A1FEEDBD9A76A0F07EAABFB4546AED515F851A657BE9DCB94C77BB62753ED55B
        8B94F5E2A5FFD662E5D92FB8BAFEE69F7C1C63F97719CA2AAC6705E7C47F5B7F
        F2E6AFE31CF866555312C7EA8D693F7669F031AB3ED3B29710E558537DA685E7
        1AEA98EADD0B9EE3AACFB42CEADC48C8A473AAB6B19065AABF10C8C610E0247B
        503E99E39D52FDA5093524FA9A88709FEA2F2D95EE350B545D6334AFA8FED254
        AAB796756D6345AABF34956AED7B445D8DE3AF7ED70FF43E02FB232C08BED859
        D48A301FABB710EE6CE8EB6E669DC9F1E21FEA9C745354071FB3EA334DA863D8
        F7B847E25853FDA589E79CAA6D1C9EE3AABFB4A086859C1B0935F07A0BAAB691
        9865AABF10C8C61094A3E6645F15E95989B23F39A70DD2AC4F4E4C6CDCA12B6B
        1B05ABF3EC4FCECD4D7E1E3DF1ABA24A94FDC9C9EF0AA39644417AECC52FFBDA
        CEDE18BE53F0E8C73FC177B4F8CE16FC2E5ED1FF03FCFFBF8A907F0CBE0741FF
        6761AE636ACACD689B217C3F9AC75ED436CE36C79AEA2F4D3CE7446D63F11C57
        FDA56551E74662B6A8DAC64296A9FE42201B43D07B9B2BC9053A0634CFA9BED2
        D67B657471777D235DE4FD547F69C27338E9C7001B59BF85DE578A9A136E626C
        6F95A2761057A7C3C4BCAA6B1C6A1B9362667B17FA58036B89D536121FABEA2B
        6D3CF61C03AAC66138C6545F69EB7D8431E146C066A66FFFD322CF8DC48C11F5
        8D52CDFAE3D1516463284AF51DBE359A7472D958BDDC08E61AF5BD57D3492797
        ADAC57E67DFC9E70A9DE4CBCF00AE952C69DC9254A3EB9F03AF5AA9FAC600C24
        9E5C78FD71D547163AD74217352A7C8CAA8FAC700CA83A258CAD5082883A97D2
        55750A3CA7B3BE0640DFA2CE8DC48C414D49175EDBCC30D54F286463482A51FB
        089EC891DF35E606116E4852F7CF52B9DAE20266DC677557783B75FFACF45E5D
        8CFEBA0E7FC7A0DE0EEE770C7A1F058CBBCC28DF6E0FEAB2AEB456ADDE91E032
        A35B957AF3784841C43FD6C4DA62B5DE868F8D8F51F59125D4C6AF908EFB08E6
        8110DEFA8FE339C87351D43BE8A150DEA5EB5BD4B9919835093633D6985DEAFE
        21918DA139D56860626CF357AEF8032FFD770438D9E0D55E739D972355F70B41
        EFF3DD9358C55E82FE04C955EDA54AD43C11EA0FEA50A5FBAB6EFC8CB73FC1F0
        B9BFC289FC48F4ACA07FF1AA5C6F97F11C9F1F9C1C3BEF6C44CDFB57A29D202E
        453B4C296A1DE58E63D43FB049ADCD45F003CB9B3BC1BC1A8A636DACB1576BEF
        39C763E063C16352F70905C704C7C66DEF7E7516B91CFF61FD7E411CCFC5DEC2
        9181DA9F1F39EECFF31C56F70901E73ECE819C0B516B676EC4FFDD991BF17F9F
        0CF93AFADD4B60773E72E43B8EFD799DCFFD656615334BDD2F34B231641C1418
        207786F40A2829FEAC68A7F605F879D1B8F2E5AD43FCF94BF5DF42C76BCFF3D7
        EAD47F0B1D7FE635C4579EE3B0E645F8D96885632594DF2B9814CF519EABEABF
        856C91E746FE756A0F78C1328C6C343333B37C938D666666966FB2D1CCCCCCF2
        4D369A999959BEC946333333CB37D968666666F9261BCDCCCC2CDF64A3999999
        E59B6C343333B37C938D666666966FB2D1CCCCCCF24D369A999959BEC9463333
        33CB37D968666666F9261BCDCCCC2CDF64A3999999E59B6C343333B37C938D66
        6666966FB2D1CCCCCCF24D369A999959BEC946333333CB37D968666666F9261B
        CDCCCC2CDF64A3999999E59B6C343333B37C938D666666966FB2D1CCCCCCF24D
        369A999959BEC946333333CB37D968666666F9261BCDCCCC2CDF64A3999999E5
        9B6C343333B37C938D666666966FB2D1CCCCCCF24D36C6BDF6639F588517C05F
        821F8637989999593098CDCC6866F5AACAF238D9D8874E5E02FF337C116E9999
        9959F098D9CCEE97A86CEF938DB8D31ADC00D5B19999992D0666F99ACAFA5D0D
        B8E18BE0F77B77343333B3C5C64C7F513CEF6FFB7F7083D70FDCC1CCCCCCF2E3
        F583993F18FE117C6EE086666666961FCCF8E8B605001A0EC13FE9DDC0CCCCCC
        F289597F687001F0EE81FF68666666F9F5EECE0200FFC769F0D7FCCCCCCC8A81
        997F9A0B80570D349A999959FEBD8A0B80BF1D6B343333B37CFBDB5C00FCAB58
        A3999999E5DBBFE202E0B3B146333333CBB7CF7201F05F638D666666966FFF95
        0B80DF8D359A999959BEFD2E17009F89359A999959BE7D860B80BF186B343333
        B37CFB8B5C0094E18F071ACDCCCC2CBF98F9E5FEA5805F3EF01FCCCCCC2CBF5E
        FEF46F01F416017F337603333333CB97BFD9CFFDC105C009F8C3811B99999959
        7E30E34FEC5A00F416015F07BE3090999959BE30DBBF6E30F36F5B00106E701E
        7EAB77073333335B6CCCF4F3F1BCBFEDFFE9C30DF7C39BE0F3A03A333333B3B0
        31C399E5FB55D6EF6A18843BD5E009F8B7A03A373333B3B030B399DD3595ED7D
        B2514147C761135E002F343333B360309B99D1C755862BB2D1CCCCCCF24D369A
        999959BEC946333333CB37D968666666F9261BCDCCCC2CDF64A3999999E59B6C
        343333B37C938D666666966FB2D1CCCCCCF24D369A999959BEC946333333CB37
        D968666666F9261BCDCCCC2CDF64A3999999E59B6C343333B37C938D66666696
        6FB2D1CCCCCCF24D369A999959BEC946333333CB37D968666666F9261BCDCCCC
        2CDF64A3999999E5D9ADA5FF1F6D68ABBC7948AE9F0000000049454E44AE4260
        82}
      Proportional = True
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 527
    Height = 8
    Margins.Top = 0
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clHotLight
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = 41
    ExplicitWidth = 503
  end
  object Query_Clientes: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select 0 ID_CLIENTE,'
      '       '#39'<<TODOS>>'#39' NOME,'
      '       '#39' '#39'  FILTRO'
      '       FROM RDB$DATABASE'
      '       union'
      '       Select'
      '       ID_CLIENTE,'
      ''
      '       NOME,'
      
        '       '#39' ID_CLIENTE ='#39'||ID_CLIENTE from CLIENTES WHERE CLASSIFIC' +
        'ACAO <>2')
    Left = 24
    Top = 208
    object Query_ClientesID_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Query_ClientesFILTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 24
    end
  end
  object DS_Query_Clientes: TDataSource
    DataSet = Query_Clientes
    Left = 24
    Top = 160
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 240
    Top = 152
  end
end
