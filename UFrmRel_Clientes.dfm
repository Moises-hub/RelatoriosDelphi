object FrmRel_Clientes: TFrmRel_Clientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio Clientes'
  ClientHeight = 322
  ClientWidth = 678
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 55
    Width = 678
    Height = 267
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStop = clAppWorkSpace
    TabOrder = 0
    Transparent = True
    VisualStyle = vsGradient
    ExplicitTop = 0
    ExplicitHeight = 338
    object RLReport1: TRLReport
      Left = 815
      Top = 301
      Width = 1123
      Height = 794
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Width = 5
      Borders.Color = clGray
      DataSource = DS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      Transparent = False
      Visible = False
      object RLBand4: TRLBand
        Left = 43
        Top = 38
        Width = 1042
        Height = 18
        BandType = btHeader
        Transparent = False
        object RLSystemInfo2: TRLSystemInfo
          Left = 910
          Top = 0
          Width = 132
          Height = 18
          Align = faClientRight
          Alignment = taCenter
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itNow
          ParentFont = False
          Text = 'Relat'#243'rio emitido em '
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 43
        Top = 56
        Width = 1042
        Height = 61
        BandType = btTitle
        Transparent = False
        object RLLabel11: TRLLabel
          Left = 14
          Top = 6
          Width = 157
          Height = 16
          Caption = 'RELAT'#211'RIO DE CLIENTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 14
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
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 43
        Top = 149
        Width = 1042
        Height = 17
        BandType = btSummary
        Transparent = False
        object RLSystemInfo1: TRLSystemInfo
          Left = 970
          Top = 0
          Width = 72
          Height = 17
          Align = faClientRight
          Alignment = taCenter
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 43
        Top = 117
        Width = 1042
        Height = 16
        BandType = btColumnHeader
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 63
          Top = 0
          Width = 81
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 537
          Top = 0
          Width = 114
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'FONE RES.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 248
          Top = 0
          Width = 289
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 651
          Top = 0
          Width = 114
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'FONE COM.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 765
          Top = 0
          Width = 114
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'FONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 144
          Top = 0
          Width = 104
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'DATA DE NASC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 879
          Top = 0
          Width = 165
          Height = 16
          Align = faLeft
          AutoSize = False
          Caption = 'EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 0
          Top = 0
          Width = 63
          Height = 16
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 43
        Top = 133
        Width = 1042
        Height = 16
        Transparent = False
        object RLDBText3: TRLDBText
          Left = 248
          Top = 0
          Width = 289
          Height = 16
          AutoSize = False
          DataField = 'NOME'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 537
          Top = 2
          Width = 114
          Height = 16
          AutoSize = False
          DataField = 'FONE_RES'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 651
          Top = 0
          Width = 114
          Height = 16
          AutoSize = False
          DataField = 'FONE_COM'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel2
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 765
          Top = 0
          Width = 114
          Height = 16
          AutoSize = False
          DataField = 'FONE'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel3
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 144
          Top = 0
          Width = 104
          Height = 16
          AutoSize = False
          DataField = 'NASCIMENTO'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 879
          Top = 0
          Width = 165
          Height = 16
          AutoSize = False
          DataField = 'EMAIL'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 63
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'id_cliente'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 63
          Top = 0
          Width = 81
          Height = 16
          AutoSize = False
          DataField = 'DATA_CADASTRO'
          DataSource = DS_Clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
    end
    object RzGroupBox1: TRzGroupBox
      Left = 12
      Top = 11
      Width = 381
      Height = 102
      Caption = 'Anivers'#225'rio Per'#237'odo'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clBlack
      CaptionFont.Height = -13
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GroupStyle = gsUnderline
      ParentFont = False
      TabOrder = 1
      Transparent = True
      VisualStyle = vsGradient
      object Label1: TLabel
        Left = 86
        Top = 30
        Width = 20
        Height = 16
        Caption = 'Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 230
        Top = 30
        Width = 26
        Height = 16
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 86
        Top = 66
        Width = 20
        Height = 16
        Caption = 'Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 230
        Top = 66
        Width = 26
        Height = 16
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 112
        Top = 27
        Width = 97
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31')
      end
      object ComboBox2: TComboBox
        Left = 262
        Top = 27
        Width = 97
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
      object ComboBox3: TComboBox
        Left = 112
        Top = 57
        Width = 97
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31')
      end
      object ComboBox4: TComboBox
        Left = 262
        Top = 57
        Width = 97
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 12
      Top = 99
      Width = 381
      Height = 79
      Caption = 'Data de Cadastro'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clBlack
      CaptionFont.Height = -13
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GroupStyle = gsUnderline
      ParentFont = False
      TabOrder = 2
      Transparent = True
      VisualStyle = vsGradient
      object Label3: TLabel
        Left = 88
        Top = 25
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
      object Label4: TLabel
        Left = 238
        Top = 25
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
      object RzDateTimeEdit3: TRzDateTimeEdit
        Left = 88
        Top = 44
        Width = 121
        Height = 24
        Date = 43041.000000000000000000
        EditType = etDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RzDateTimeEdit4: TRzDateTimeEdit
        Left = 238
        Top = 44
        Width = 121
        Height = 24
        Date = 43084.000000000000000000
        EditType = etDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 456
      Top = 23
      Width = 185
      Height = 79
      Caption = 'Filtrar por'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      GroupStyle = gsUnderline
      ItemIndex = 0
      Items.Strings = (
        'Anivers'#225'rio'
        'Cadastro'
        'Anivers'#225'rio / Cadastro')
      TabOrder = 3
      Transparent = True
    end
    object RzRadioGroup2: TRzRadioGroup
      Left = 456
      Top = 108
      Width = 185
      Height = 61
      Caption = 'Ordenar por'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 2
      GroupStyle = gsUnderline
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Anivers'#225'rio'
        'Cadastro')
      TabOrder = 4
      Transparent = True
    end
    object CheckBox1: TCheckBox
      Left = 456
      Top = 175
      Width = 201
      Height = 17
      Caption = 'Visualizar Somente Dependente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Memo1: TMemo
      Left = 728
      Top = 40
      Width = 241
      Height = 156
      Lines.Strings = (
        'Memo1')
      TabOrder = 6
    end
    object RzBitBtn1: TRzBitBtn
      Left = 91
      Top = 195
      Width = 150
      Height = 41
      Cursor = crHandPoint
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 7
      ThemeAware = False
      OnClick = RzBitBtn1Click
      ImageIndex = 0
      Images = FrmPrincipal.ImageList3
    end
    object RzBitBtn2: TRzBitBtn
      Left = 258
      Top = 195
      Width = 150
      Height = 41
      Cursor = crHandPoint
      Caption = 'Visualizar / Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 8
      ThemeAware = False
      OnClick = RzBitBtn2Click
      ImageIndex = 1
      Images = FrmPrincipal.ImageList3
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 672
    Height = 41
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Caption = 'RELAT'#211'RIO DE CLIENTES'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 527
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
        9BEE3C1A00005C0849444154785EEDDD07985455B605609A1CD4F11926BE7933
        A320628EE3E0380A920404C19C734451248A8A8A88620605090AD8DD24498AA2
        806013151503A038334E3010248A22A129C0F3F66E1A2D6EAFEAAEAA7B6EAC55
        DFF7BFE71CA0EB86B3F73A9DEEA9648C212222A21C030789888828DEE0201111
        11C51B1C242222A278838344144E95EAFF75DF4A751B9D5FE9D0331EAB74C819
        85F2FF678A4FC5973ED3F79C597A0C8F951C931C1B3A66220A27384844E151E9
        C823AB4BC05E5FE9D0D3A74BD86E1726A4E4D8E418F558E598D1B9105178C041
        220A9EBC2A57AA7BC615F259F67F41D8869B1EB31EBB9C033A37220A1E1C24A2
        6055FA63A3C32548979409D6E859A2E782CE9188820507892838129A2DC57749
        211A757A2E2DD1B9125170E0201105A3D2A18D6E93B0DC95149E7121E7D4E836
        74CE44140C384844FEAB54F7F4B612943F3A82334E7ED47344E74E44FE838344
        E4AF4AF54E6F2001B9C9119871B449CF155D0322F2171C2422EF48085611878A
        86A2B97C567C91FCFF6F040ACC38FAA6F49C9B0BBD067A2DAAA06B4544DE8183
        44E49E84DA01A50177B578444C16CB44987F973F287A4DF4DAE835D26BA5D74C
        AFDD01E8DA12917B709088322761F57FE21A314AAC1428E828737A2DF59AEAB5
        FD3F74ED8928737090882A26617490B8400C11FF1228BCC83EBDD67ACDF5DA1F
        84EE0D11550C0E1211268173A0E820168A38FFC47E54E83DD07BA1F7E44074CF
        8808838344F4330996EAA2BD7859F0FBF7E1A5F746EF91DE2BEE454054013848
        4425C17F8A182436081438145E7ACFF4DE9D82EE2D11710140548684462BF18E
        40C142D1A3F7B215BAD744B90C0E12E51A09883C71AEF850A010A1E8D37BABF7
        380FCD01A25C030789728584813E94E712F1A940A141F1A3F75AEF391F3E4439
        0D0E12E5020980F3C5E7028504C59FDEFBF3D1DC20CA05709028CEA4E9D71333
        4A438048E7423D345788E20C0E12C59134F95AA28F281628082877E99CD0B951
        0BCD1DA23882834471238DBD8DF8AF40CD9F680F9D236DD01C228A1B38481417
        D2CC7F25A6943677A274E99CF9159A534471010789E2401A7863914BDBEC925D
        3A771AA3B9451407709028CAA4695716BDC42E811A3B51BA740EE95CAA8CE61A
        5194C141A2A892467DB07853A0664E942D9D5307A3394714557090288AA4419F
        2EB80F3F7945E7D6E968EE1145111C248A1A69CC1DC5CED2464DE4159D631DD1
        1C248A1A38481425D290FB263568223FF4457391284AE02051144813D6E7F8BF
        90D49489FCA4738FFB095064C141A2B093C65B53BC52DA888982A273B0269AA3
        4461070789C24C1AEEFE625E69038EB42AF51A993A4736857F1667BF38BA79C9
        B9A33F8B209D8BFBA3B94A1466709028ACA4D1EA93FD969636DEC8C8AB7B8639
        E4D473CCD9175E6FEEEAD2D314F67FCA7C34A9D06C59F8865934215FFE3C3661
        58213DD777473E69B61715986F67E49B4F5E1A625E7ABA9FB9BD4327D3E0F473
        4BAE15FA7721A773924F0EA44881834461240D763FF15169C30DB5FD8F695112
        F68F3DF0A07967DC48F3FDDB53CDCE0F66A4D4A96337F871E2E8F69B3A98ED6F
        BD98527151A159FDC68B66C6B0A74D879B6F37FF736C0BF8714248E7E67E68EE
        1285111C240A1B69AC35445169A30D9D038F3BCBB4BBE446F3D4830F990F2716
        98C4A2E930E853D9FEFE74D3B4FDD5F063C74993369798AD3347C2E04FA9A8C0
        AC9B966F663EDFDF74ECD0C91C74FC59F0638784CED11A680E13850D1C240A13
        69A8FA68DF09A50D3614F4CBD4A7B5BEDC3CDDE721B3E4E55166C7221CEC9958
        37678AA9775A7BF87E7150B7611BB3FAD5A138E433210B82F5D3772F08DA5C70
        6D18BF65A073958F0EA6D08383446122CDF4B9A4E61AA8139A5D54F265FD2F67
        4C8421EED6F29993CCC92D2E81EF1D6527373DDF7C35E9391CE82E6D9A55685E
        7BEE4959905D06DF3B20CFA1B94C14267090282CA491DEEF68ACBE3BE28CF3CC
        033D7B997F4C1D0743DBB6CD0B5F37175FD9011E4B145D74C935E6FBE9C36178
        5B55946FBE7DB3D08C7EAA9F39F6CC0BE0B1F8EC7E34A789C2020E12858134D0
        EB1D0DD537758E686A6EEFD8D52C9E5C0843DA0F431F7BD4FCEEE4B3E1F145C1
        6F4F6C6906F7BE1B87B5D78A0ACC9A69F9E6F1FB7A95DC4B747C3EB91ECD6DA2
        308083444193C679BC284E6AA4BE38F8F896A6F7DDF799B5735E81A1EC37FD6A
        C0A3F73F680E3C36D43FF8B697038F696EFAF5E8EACF67FD69D85234CA143ED9
        AFE4DEA2E3F598CEE1E3D11C270A1A1C240A9234CC7DC5BF4A1BA82F0E3DB59D
        19F8F023E687775E87411CB4ADEFBE61A68D186C3ADED6D51CD2B01D3C8720FD
        E994B3CDAD37DE625E7FB6AFF9E1CD7004BF53F1EC5166FAD0FEE630FF7FD052
        E7F2BE68AE1305090E1205499AE5B8A4E6E9A9139B5D6CC60DEC9FF1AFED054D
        BF42B1F495D1E6CD91434DFED34F9A418FF4CBCAB3F7F5CCCAC8877B99E9031F
        311F17F637DFD8F8C97E3FCD2E34EF8F1E6C4E6DE9EB0F0D8E43739D28487090
        2828D2286F76344E4FE853F95E1D3608866B2E8101992B8A0ACCD2F1C34CBDD3
        7CFB8ACACD68CE1305050E1205411AE471625B52C3B4AE7AFD33CD3DDDEE0EED
        97FAFD068331C7E8B70606F77DB0646EA0396391CEEDE3D0DC270A021C24F29B
        3446FDBEFFE7A58DD213679E7395F9ECB5B1300873150AC45CB56E46A1697BE1
        7570EE58A4739C3F0F40A1000789FC264D71405293B4EA3727B536A3063C0503
        30D7A120CC694505665EFEC0923983E6922503500D10F90D0E12F9491AA2FECA
        DFCEA40669853E22F6B65BBB986FE7BF0AC38FB8004865EBECD1A6778FBBBD7A
        CCB0CE75FE6A20050E0E12F9451A619E78B7B4315AB3CF91CDCCA4C1CFC2D0A3
        9FA1F0A33DF2CD7BA38794CC2534C75CD2399F876A82C82F7090C82FD2046F4C
        6A8A56D4FD6B3BB3F4955130F0686F38F828D9EA6905A6FEDF3C7976C08DA826
        88FC020789FC200DF020B121A921BAD6FCDC6BCCBAB95360D8515928F0A82C7D
        9AE07997DE00E79C0B3AF70F42B541E4073848E407697E23929AA16B5DEFEC11
        B907FA040D851DA530BBD03C7EDF7D70EEB93002D506911FE02091D7A4F19D2A
        7E4C6A8459ABD5A0097FCA3F4B30E828B5A27C337BE4C0923987E66216B4064E
        453542E4353848E435697AB3929A60D60E38F62CB368423E0C37AA180C39AAD0
        D753F34BE61E9A935998856A84C86B7090C84BD2F01A3A1A6056F63DAA995938
        6E240C364A0F0A374ACF57AFBD583207D1DCCC4243542B445E8283445E9266F7
        BAA3F965ACE6E14DCCACFC6130D4287D28D8287DFF983CBC642EA2399AA1D751
        AD1079090E1279451A9D3EF40735C0B4553DACB17965E84018689419146A9499
        0FC70E2D999368AE66880F07225FC14122AF48939BE4687A19A95CB79129ECCF
        1FF8B305051A656ECEC881257313CDD90C4C423543E4153848E4056970470A57
        3FF93FE8914760905176509851765E1DFC149CB319D0DA3812D50E9117E02091
        17A4B98D4E6A76197BB8D70330C4287B28C8284B45F9A6E0C97E70EE666034AA
        1D222FC04122DBA4B11D2C12498D2E23575E7B1B0C3072070619654F16013DEE
        EC0AE7709AB4460E463544641B1C24B24D9ADAED494D2E237F6A788ED938FF35
        1860E40E0C3172655BD12873D869AEF60EB81DD510916D7090C836696A1F389A
        5C5AAAD46B64E68F190EC38BDC430146EE7DF9EAC892B98BE6741A3E40354464
        1B1C24B2491ADA118E0697B65E3DEE81C14576A0F0223B5EE8F7109CD3693A02
        D512914D7090C8266966FD1CCD2D2D7F6E7189297E6F1A0C2EB2030517595254
        681AB7BD02CEED34F443B54464131C24B2451A5965B122A9B1A5659F239B997F
        4C1D07438BEC81C145D66C78B3B0642EA3395E01AD99CAA8A6886C818344B648
        136B9AD4D4D236ECB1C76060915D28B4C8AE592F3C03E7781A9AA29A22B2050E
        12D9224D2CE33DFFDB5D72230C2BB20F05165956946FAEBFA1239CEB1518816A
        8AC8163848648B34B1E58EA656AEEAF5CF34FF99361E8615D907038BACFB7E66
        61C9DC4673BE1CCB514D11D90207896C900656CFD1D02AD4A143671854E40D14
        56E48DC77BDD0BE77C05EAA1DA22B2010E12D920CDEB2647332B57AD064DCCF2
        999360509137505091377E98555832C7D1DC2FC74DA8B6886C8083443648F37A
        C9D1CCCAD5A553771852E41D1454E49DC17D7BC3B95F8E97506D11D9000789DC
        92C69527D62435B272ED7B5433B37AF6CB30A4C83B28A4C83B5BDE2A2C99EBA8
        0652D01ACA433546E4161C24724B9AD651494DAC42F776E713FF8280428ABC55
        F0F8C3B006CA7114AA3122B7E020915BD2B4D2DEFCE77F8E696136CC7B150614
        790B0514796B5B51A139E0D816B01652E0E640E4093848E49634AD098E2696D2
        43F7DE0FC389BC87028ABC37F199C7602DA43001D518915B7090C82D695ACB1C
        4D0C3AF8F896E6FBB7A7C27022EFA17022EF1517159A5F9FD80AD604B00CD518
        915B7090C80D695855C4F6A4069652D73B7BC060227FA070227FBCF8585F5813
        80D65215546B446EC0412237A459A5FD00A0C5930B6130913F5030913F364CCF
        873591021F0844D6C1412237A459B571342FE898332F80A144FE41C144FE39E3
        ECCB606D006D50AD11B9010789DC9066D5CDD1BCA0C71E78108612F9078512F9
        E7CD614FC3DA00BAA15A2372030E12B921CD6AB8A3799551A55E233EF6370450
        28917FF4C1405A0BA8461C86A35A2372030E12B921CDEA6D47F32AA359FBAB61
        2091BF502891BFAEBDB603AC1187B751AD11B9010789DC9066B5D6D1BCCAC87F
        FA491848E42F1448E4AFC56307C31A71588B6A8DC80D3848E48634AB1D8EE6B5
        977D8E6CC6DFFD0F091448E4AFE2A202B3DF51CD61AD24D9816A8DC80D384894
        2D6954351C8DAB8CCBAFB9158611F90F0512F9AF6FCF9EB0561C6AA09A23CA16
        1C24CA9634A9831C4DAB8CE92386C03022FFA13022FF7D356538AC15878350CD
        11650B0E12654B9AD41F1D4D6B2FBF38BAB9492C9A0EC388FC87C2880250946F
        0E3AEE2C583349FE886A8E285B7090285BD2A48E7634ADBDB43CFF5A1844140C
        184614884EB776823593E468547344D9828344D99226D5D0D1B4F6D2F7DE0760
        105130501051306656FC50A086A8E688B2050789B2254DAA99A369ED65DEE8E1
        30882818288828186BDE18096B264933547344D9828344D9922675AEA369FDA4
        E6E14DCCD677DF804144C14041440129CA37B51A3481B553EA5C547344D98283
        44D99226D5DED1B47EF2B7B3AF802144C181414481B9EAEA5B60ED946A8F6A8E
        285B7090285BD2A4527E0BE0EE6E77C310A2E0A010A2E0BCFCEC63B0764AF15B
        0064151C24CA9634A9BF389AD64FDE183E1886100507851005E7EB57CB7D1EC0
        5F50CD11650B0E12654B9AD4518EA65542773CDB38FF351842141C1442141C7D
        2C7039BB031E856A8E285B7090285BD2A4FEE0685A258E6F7A110C200A160A21
        0AD6D9175C53A67E4AFD01D51C51B6E02051B6A4491DE8685A256EEFD8150610
        050B051005ABE0F1BE65EAA7D481A8E688B2050789B2254D0A6E06347ED00018
        40142C144014AC7F4D1E56A67E4A713320B20A0E12B9218D2AE1685CE69329A3
        610051B0500051B036CDCCDFAB764A2550AD11B9010789DC9066B526B979E5D5
        3DC36C5EF83A0C200A160A200A58517E49CD24D79058836A8DC80D3848E48634
        AB79C9CDEB3727B586E143C1830144816B707AFBE4F057F350AD11B9010789DC
        9066352CB9799DDAEA32183E143C143E14BC6BAE29F344C061A8D688DC808344
        6E48B3EA9CDCBC2EBBFA56183E143C143E14BCFEF7F74A0E7FD519D51A911B70
        90C80D6956AD929B57AF1EF7C0F0A1E0A1F0A1E04D1BF24472F8AB56A8D688DC
        8083446E48B33A24B9790D7FE271183E143C143E14BC4F5F1A921CFEEA10546B
        446EC0412237A4595516DBF634AFD985CFC3F0A1E0A1F0A1E0AD7D636472F86B
        2D5546B546E4061C24724B1AD6D23D0DEC8B191360F850F050F850F0B6CC2A48
        5E002C453546E4161C24724B9AD6386D5ED5EB9F69128BA6C3F0A1E0A1F0A170
        A8D5A0C99E05C0385463446EC14122B7A46975D0E655EFB4F63078281C50F050
        38343AFBB23D0B800EA8C688DC8283446E49D33A5C9B57B3F657C3E0A17040C1
        43E1D0B5E39D7B160087A31A23720B0E12D9208D6BD54D37DF098387C201050F
        85C38B8FF6D1F05F856A8BC8063848648334AFD1F776E73300C20C050F85C38C
        A14FEA026034AA2D221BE020910DD2BCAEEB7BEF033078281C50F05038CC1B31
        401700D7A1DA22B2010E12D920CDEB4FFD1FEA0B8387C201050F85C307A306EA
        02E04FA8B6886C808344B614F47FF207143C140E2878281CFE31716802D51491
        2D7090C896D985CFFF0B050F85030A1E0A8755AF8FD8846A8AC816384864CB8A
        599316A0E0A17040C143E1B0F9ADC20DA8A6886C818344B648C8CC74860E8507
        0A1E0A87C49CD15C0090A7E020912D12326F3B4387C203050F85832C00F82D00
        F2141C24B2454266B13374283C50F05048CC1EB515D514912D7090C8160999CF
        9DA143E1018387C26176217F0B803C0507896C919059E10C1D0A0F183C140E45
        053B514D11D90207896C9190D9E80C1D0A0F183C140E45F93FA29A22B2050E12
        D92221B3DD193A141E30782824F2A584705D11D90007896C9080A9EA0C1C0A17
        1C3C14168905136BA2DA22B2010E12D92001B3AF3370285C50E85078C802E037
        A8B6886C8083443648C0D470060E850B0A1D0A0F5900EC876A8BC8063848648B
        84CC2E67E85078A0D0A1F070D613914D7090C8160919EE06186228742824F85B
        00E4313848648B84CC1A67E85078C0E0A170282AD8856A8AC8163848648B84CC
        97CED0A1F080C143E130BB7007AA29225BE020912D12329F394387C203060F85
        C3ECC262545344B6C041225B24643E70860E85070C1E0A85C49C515B504D11D9
        0207896C919099E70C1D0A0F143C140E8939A3BF433545640B1C24B2454266BA
        3374283C50F05038C802601DAA29225BE020912D1232939DA143E1818287C221
        3177CC4A545344B6C041225B246446394387C203050F854362EED82F504D11D9
        0207896C919019E60C1D0A0F143C140EB200F83BAA29225BE020912D1232039C
        A143E1818287C221316FDC62545344B6C041225B24641E71860E85070A1E0A07
        59002C443545640B1C24B24542A6973374283C50F05038C802E02D545344B6C0
        41225B24643A384387C203050F854362FE4BE3504D11D90207896C919069E30C
        1D0A0F143C140E89F9E3FBA09A22B2050E12D9222173AC3374283C50F0503824
        164CB800D514912D7090C8160999039CA143E1818287C221B160E2A1A8A6886C
        8183443649D06C71060F85030A1E0A81A27C291D5C4F44B6C041229B2468FEE1
        0C1E0A07183E14BCD985DB512D11D90407896C92A099E90C1E0A07183E14B8C4
        9CD11B502D11D90407896C92A019EE0C1E0A07143E14BCC4DCB1FF44B5446413
        1C24B24982E60167F05038A0F0A1E025E68D9B836A89C8263848649304CD75CE
        E0A17040E143C14BCC7FE945544B4436C141229B24689A3B8387C201850F052F
        317F424F544B4436C141229B24680E77060F85030A1F0A5E62C18456A896886C
        8283443649D0D471060F85030A1F0A5E62C1C45FA25A22B2090E12D92661F3AD
        337C2878287C286045053FA21A22B20D0E12D92661B3C4193E143C184014ACD9
        A3B6A11A22B20D0E12D9266133D1193E143C184014A8C4DC312B500D11D90607
        896C93B0B9C7193E143C144014ACC4BC9766A21A22B20D0E12D92661D3DA193E
        143C144014ACC4FCF10FA01A22B20D0E12D92661F35B67F850F0500051B0120B
        261E8F6A88C8363848E405099CB5CE00A260A100A2001515EC42B543E4053848
        E405099C19CE00A260C110A2C024E68C5E8F6A87C80B7090C80B12388F3A0388
        8285428882939837EE5D543B445E8083445E90C0B9D81940142C1442149CC4FC
        F1CFA0DA21F2021C24F282040EF70408191442141CEE01407E8283445E90C0A9
        2CB6240710050B851005A4285F7F03A02AAA1D222FC04122AF48E82C74861005
        07061105223167F40FA86688BC020789BC22A133D81942141C1444148CC4DCB1
        CB50CD1079050E12794542E746670851705010513012F35F2A443543E4153848
        E415099D3F3B43888283828882915830E11A5433445E8183445E91D0A9257624
        8710050705110523B160E201A86688BC020789BC24C1C31F040C091444E43FFE
        002005010E12794982A78F33882818288CC87F8979E3E6A35A21F2121C24F292
        044F2367105130501891FF12F3277442B542E4253848E425099EEA820F040A01
        1446E4B3DD0F00DA07D50A9197E02091D7247CB8336008C040225F7107400A0A
        1C24F29A844F37671891FF502091BF12F35E9A8A6A84C86B7090C86B123E2738
        C388FC870289FC955830E1525423445E8383445E93F0D18D81D6278711F90F05
        12F9A8A8E0476E0044418183447E90009AE00C24F2170C25F24D62EE98E5A836
        88FC000789FC200174933390C85F2894C83F89F92F8D42B541E4073848E40709
        A0BACE40227FA15022FF24164C6C826A83C80F7090C82F12425F3A4389FC8342
        897C32BB7007AA0922BFC04122BF48080D778612F9070613F9223177EC3F514D
        10F9050E12F94542E8126728917F5030913F12F3C73F8B6A82C82F7090C82F12
        42FF2312C9A144FE41C144FE482C98F8275413447E8183447E92209AEA0C26F2
        070A26F25E62CE9835A81688FC040789FC244174853398C81F289CC87B89F9E3
        87A05A20F2131C24F29304D17E625B7230913F503891D74A76FFFB1DAA05223F
        C14122BF49184D768613790F071479293177CC4A5403447E8383447E9330BAD0
        194EE43D1450E4ADC4FCF14FA31A20F21B1C24F29B84516DB139399CC87B28A0
        C84345255FFE3F08D50091DFE02051102490C63A038ABC05438A3C93983BE62B
        34F78982000789822081D4CE1950E42D1452E49DC4FCF18FA0B94F1404384814
        0409A41AE2FBE480226FA190228F14E5EBDEFFFBA1B94F14043848141409A57C
        67489177605091271273C7FE1BCD79A2A0C041A2A04828B57486147907051579
        23317F7C2F34E789820207898222A1544D6C480E29F20E0A2AF24051817EF9BF
        369AF344418183444192601AEA0C2AF2060C2BB22E3177EC6768AE1305090E12
        054982E978675091375058917D8905132E41739D284870902868124E0B9C6145
        F6A1B022BB1273467F8FE63851D0E02051D0249C2E728615D987028BEC4ACC1F
        DF1FCD71A2A0C141A2A04938E90F03AE4A0E2BB20F0516595454B08B3FFC4761
        050789C24002EA3E6760915D30B4C89AC4BC7145686E1385011C240A0309A85F
        8BEDC9814576A1D0225B4A36FE3906CD6DA23080834461212135DA195A640F0E
        2EB2213177EC17684E1385051C240A0B09A986CED0227B5070911D8905136E40
        739A282CE020519848507DE00C2EB2030517B99798336A0B9ACB4461020789C2
        4482EA2A6770911D28BCC8BDC4FCF1CFA3B94C14267090284C24A8749BE075C9
        C14576A0F0229776FFEA1FB7FDA5D0838344612361F5B033BCC83D1860E44A62
        DEB877D01C260A1B384814361256BF1789E4F022F75080913BF2D9FF29680E13
        850D1C240A2309AC21CE002377508051F61273C72E437397288CE02051184960
        FDAF284E0E307207851865ABE4C13F27A3B94B1446709028AC24B40638438CB2
        87838CB29198376E319AB34461050789C24A424B1F0FBC2539C4287B28C8280B
        457CEC2F450F1C240A3309AEC79C4146D98161461993CFFEDF43739528CCE020
        519849701D28362507196507851965A828FF47F9ECBF1E9AAB4461060789C24E
        C2AB8F33CC287330D02823F2D9FF7C344789C20E0E12859D84D7FE6263729851
        E650A05106767FF6FF07344789C20E0E12458104D83DCE40A3CCC050A3B425E6
        BD3413CD4DA228808344512001B68FE01E012EA050A334ED7EE6FFAFD0DC248A
        023848141512625D9DA146E983C1466991CFFE5F437392282AE02051544888D5
        12AB92438DD287828DD2B0FBB3FF03D09C248A0A3848142512649738838DD203
        C38D2A94983FFE59341789A2040E12458D84D94C67B851C550B851F91273466F
        407390286AE02051D44898D513DC28284328E0A83C258FFC6D86E62051D4C041
        A22892407BC01970543E1C72944A62DEB83968EE1145111C248A2209B41AE25F
        C90147E543214729CC2E4CC867FFFBA1B9471445709028AA24D49A39438E5283
        41475062FE841E68CE1145151C248A3209B6B1CEA0230C051D9595983BE62B34
        D788A20C0E12459904DBAFC577C94147180A3B72D8FDBC7FEEF54FB1030789A2
        4EC2ED3667D8515930F0682F89792F8D47738C28EAE02051D449B855168B92C3
        8ECA4281473F4BCC19B5593EFBAF8AE61851D4C141A23890803B51EC4A0E3CDA
        1B0A3DFA5962C184CBD1DC228A033848141712720F3B438F7E86428F764BCC1B
        F70E9A534471010789E24242AEAA782739F4E86728F848BFF43F7A5362C1C49A
        684E11C5051C248A1309BA3F888DC9C147BBA1F0CB79BB7FEAFF54349788E204
        0E12C58D84DDF9CEF0232E0090C4FCF14FA0394414377090288E24F0863A0330
        D7A100CC6589B9633F437387288EE020511C49E0D5129F260760AE432198B366
        8F2A4E2C9878009A3B4471040789E24A42EF28B12D390473190CC25C54A4DBFC
        4E6887E60C515CC141A238DBB968DA9D280C73110CC35C3477ECCB68AE10C519
        1C248A3369F8FBEF5838050662AE2913843968DBCC7CB36174BF3FA0B9421467
        709028CEA4E9EFBFBDA8C0EC7CFF0D188AB9C419863947E6C1CAE77A72014039
        090E12C59934FEFDB5F927E68C96109C5E261473C95E619873F2CDFAC27EE6EB
        A7EFE4028072121C248A3369FE250B009598370E0663AEF8390C73CF77130794
        843F170094ABE020519C49F3FF6901A0120B26C070CC05C9D72197FCF0EA909F
        C29F0B00CA55709028CE2400F65A00A81DEF4C86011977CEEB900BB64E1FBE57
        F8730140B90A0E12C5998440990580CAC5DF0C40D721CEB6CDCA97C0EFCC0500
        91808344712641001700FA30981DEF4D85411957F03AC454F15B0566C5B3DDCB
        843F170094ABE020519C4918E00580CAB15F0F84D7208EE4BEAE1A7C370C7FC5
        0500E522384814671208A917006AF628B373D13418987103CF3F6E8AF2CD9AE1
        0FC0E0DF830B00CA45709028CE2414CA5F0088C49C311290F17F46003AF778C9
        37EB47EDFE5DFFF2700140B9080E12C5990443850B00950BCF0840E71D271B27
        F48781EFC40500E52238481467120C692D00D4EE45407CBF1280CE391EF2D30E
        7FC50500E522384814671210692F005462EE58B373513C1701E87C23AF28DF6C
        18F7040CFA54B800A05C040789E24C4222A305802AF99980182E02D0B9469A84
        FFFA518FC2902F0F1700948BE020519C495064BC0050259B07C5ECB703D07946
        565181595BD017067C45B800A05C040789E24CC222AB054009FD15C1183D2700
        9E631449F8AF19F9200CF774700140B9080E12C5990446F60B0035BB30368B00
        787E5123E1BFFA85FB61B0A78B0B00CA45709028CE2434DC2D009484CE8EF75E
        87A11A25F0DCA2449FF037F45E18EA99E0028072111C248A33090EF70B0055B2
        0888F6DE01F0BC22429FEDBFF2B99E30D033C50500E52238481467121E761600
        25F2CD8E775E86E11A05F89CC26FEB8C1166C5335D619867830B00CA45709028
        CE24402C2E00764BCC7B2992BF2688CE25D48AF2CD77939F8121EE061700948B
        E020519C4990585F009428F90D8168FD5C003C8FB02AF949FF3E30C0DDE20280
        72111C248A3309136F16004A3E43DDB1F01518B66104CF2184B6CD7CD1AC1888
        F7F2B7810B00CA45709028CE2450BC5B00944ACC1F1F896F09A0630F977CB369
        CA7330B46DE2028072111C248A330916CF17004A9F1CB8FD9D293078C3021D77
        6814159875058FC0C0B68D0B00CA45709028CE245C7C5900A82DAF0F369BA717
        C0F00D0374CC61B06D66BEB55FF14B071700948BE020519C49C0F8B600506B47
        F6366B5EEC6B8AE74F86211C2474BC8192CFFABF1DF7240C692F710140B9080E
        12C599048DAF0B80ADD38799E5FD3B97F876C233A17A82A0F3580353946F7E78
        6D88593EA00B0C68AF710140B9080E12C599048EAF0B002501F353D8AC1C7497
        F9E18D913090FD868ED56FDBDE7CD17C63E171BE6E700140B9080E12C599848E
        EF0B80E29923CC8A67BBED153AAB87F736DBE64C80C1EC1774ACBE292A30EB47
        FDBC300A121700948BE020519C49F8F8BE0050DF4D780A844F67B37EEC5326B1
        F03518D05E43C7E9B9A27CF3FD2B834ACEBDECF508061700948BE020519C4908
        05B20050AB86DC0D0368C5B3DD4B7E3E60FB027F1F22E43C3E4FC967FCFA7D7E
        3F7FBA3F5D5C00502E82834471266114D802E08729036100FDACB3599BFF88D9
        3273340C6CDBD031DA563C2BDF6C7CE9E99273C3E71C3C2E002817C141A23893
        500A6C01A0D60C7F008690D3AA21F79AEF5F1DE6E96F0DA0E3B3A228DF6C9D3E
        DCAC19D11B9E5BD8700140B9080E12C5990454A00B80ADD38696FC4A200A2264
        F9335DCD86714F9BE279936088BB818ECF95A2829247F77AF9DC7E2F700140B9
        080E12C5990455A00B00B57ED4C330882AB2FA85DE66E3C48166CBAC3166C7FB
        D360A867021D5B66F24DF15B0566F3D461667D61387EA23F1B5C00502E828344
        7126C115F802A0F8CDE166C5337BFF5A60A6F4A139AB47F4311B270F325BDF1A
        67762CCA7C41808EAD7CA581FFC6F366FD98C7E41CBAC2638B1A2E002817C141
        A23893200B7C01A0368E7F028651B6960FE86AD6BCF890F9EEE5C1253F44B86D
        EE04B3FD9D57CBDD95101DD74F8A0A4AE80FF16D79E305B361DC1325BFAD80DE
        3BEAB800A05C040789E24CC22D140B80EDB3469A553EFD4A9C7E4F7ED5D05E66
        CD883E66DDA8C7CC8697FA9B8D2F3F57F299FCA657079BEF263D6336C867F46B
        46F631AB0687EFD7F4BCC60500E5223848146712BEE15800884DAF3C0B0389FC
        C50500E5223848146712BCA15900A8D52FDC074389FCC30500E5223848146712
        BAA15A006C797D88F93A835F0B24FBB800A05C040789E24C4237540B00B5AEE0
        21184CE40F2E002817C141A23893C00DDD0260DB8C174A1EF883C289BCC70500
        E522384814559F7DF6D961E2A1CD9B375F26FF7B3FE79F2B09DCD02D00D4C671
        8FC37022EF95B300D84FE792CE299D5BE0CF89220B0E12458934E63C71967843
        FC28CCF7DF7F9FD8B56BD71AF9F3939D7F5FC236940B80E25923CDCA413D6040
        91B7522C004ED639A47349E754E9DCD239A6732D0FFC7DA24881834451204D78
        1F71ABF887D006FD93AD5BB7CA5F31E6C71F7F941EBEEB6EF9CF9F1AB6846D28
        17006AD3E40130A0C85B8E05409ECE199D3BF2DF2573C939BF84CE399D7BFB24
        FD3BA24881834461264DF710F194F84EA0E66C76EEDC297FF5E797FCEFB7E5FF
        1D2C42BD0050AB87F5822145DE495A001C5C3A577E7AE95C4273AC94CE419D8B
        87C85F2D335789C20C0E12859134D926E255B14BA0665CE21FFFF887FCF5B22F
        F9ACEE7BF97F4D256443BD00D83C75300C29F24EE902A069E91C29F3D23985E6
        5A129D933A379BC85F87F397286CE02051584843AD2D6E129F0AD478CBF8EF7F
        FF2BFF34E5EBC79DDB8B07EB7EF5287CC362DD8B7D605091070674313B366F1A
        AE7363F71429FBD23985E65A0A3A5775CED6967F0AE7355118C041A2A049F3FC
        83784C7C2B50934D69F9F2E5F221CA7FEDD8B4C124DE9E00C3370CB64D7FBE64
        B73F185864CDCA171E34C56B5796CE8AD42F9D5368AE5540E7AECEE154BF6140
        142838481414699667884962A7404DB5426BD6E80FFF57FCDAB57387492C9D0D
        03380CBE1DFB280C2DB263DDD417CDAEC4F6D2D950FE4BE7149A6B69D2B9AC73
        FA0CF95070DE1305010E12F9491A634D71AD582C5003CDC8B7DF7E2B1F36FD57
        62E5BFCCF6D985308483543C73845939309EDBEF0669F9B3DDCCA665EF97DEFD
        F45E3AA7D05CCB82CE719DEB35E5C3C27A20F20B1C24F28334C1FF150F8B7502
        35CBAC6CDEBC593E7C66AF9D5BBE3789775F86411CA4EF273D0D438CB2F34D7E
        3FB37DE3FAD2BB9EFE4BE7149A6B2EE89CD7B9FFBFF2E1617D10790D0E127949
        9ADE5FC54B628740CDD195EDDBD3FBB2AEF3F5E3AE5D26F1F777601007E99BA1
        F7C030A3CC6C786B82F9D1F1EBA1E9BE744EA1B96681D680D6C25FE56D60BD10
        79050E12D9260DAE86B8527C205023B4E6C71F53FE30775AAFC4DAAFCDF6B9A3
        61180761F36B8360A0517A560CEA6936FF6759E9DDCDEEA5730ACD35CBB436B4
        466AC85BC23A22B2090E12D922CDEC37A2B7582350D3B3EA5FFFFA97BCADFBD7
        CEE22D26F1FE6B309083B076646F186E54BED5639F3689CD9B4AEFAABB97CE2D
        34E73CA0B5A235F31B795B58574436C04122B7A479FD598C167B9EA3EE8B2FBF
        FC52DEDECE4B3FEB4BFCFB2318C87EDB3A6D9859DEBF330C39423A9B8D6F4F73
        FDD5A0E497CE2D34E73CA4B5A335F467797B5867446EC041A26C48A3AA262E15
        EF0AD4D03CB76AD52A3914BBAFC4B7ABCDF679E36030FB69C3E84740D091D38A
        21BDCCD6955F94DE3D7B2F9D5B68CEF9446B4A6BAB9A1C0AAC3FA24CC141A24C
        4853FAA5E8255609D4BC7CB36EDD3A3924FBAF9D89ED26F1F10C18CC7ED15F0B
        5CF16C37187AB4DB9A4983CD8EE26DA577CDEE4BE7169A733ED31AD35AFBA51C
        12AC47A274C141A27448133A41BC288A056A56BEFBFE7BF828776BAFED5F2D33
        413E46F8BB094FC1E0CB79FDBB98EF3E9A577A97BC79E9DC42732E205A735A7B
        27C8A1C1FA24AA081C244A451A4E557181582050630AD49E6D80BD7C25367D1B
        E86384570DB91B87608E5AF9426FB36DFD37A577C7BB578A6D81C3406B516BB2
        AA1C26AC5B22040E1221D260F407FB960BD48442C1B90DB057AF92C7087F3217
        06B4D77E98321006612E5AFB4681D9B523517A57BC7D55B02D7018686DF20706
        296D70900891E6A2DFEBF7E4E13D36A4DA06D8CBD7F655FF09E431C26B863F00
        0331572C7FA69BD9F4F70F4BEF827FAF34B6050E92D6267F3680D20607895291
        063335A9E1844A05DB007BF6DAB16593492C7C0506B557B6BE31D47C9DA3BF16
        58F238DFEF33DBEFC1D62BC36D81FDF69A1C22AC5B22040E12A5224DE64247D3
        098D74B601F6EAA58F11DEFE8F7761587B657DE1C33020E36C7DD164B3CBA76F
        F3A05796DB02FBE542394458B744081C244A459A8CEEDCB731A9E98446BADB00
        7BF9DABE6E85D93EC79FC70817BF39DCAC7826377E2D70F9A0BBCC0F5FFEB3F4
        2A07F772B92DB097B426B9C32065040E1295471ACDB0A4C6131A996E03ECD56B
        47F156B37DD1EB30B46DDB38FE09189871B27ADC0093D892F90E8F5EBC2C6E0B
        6CDB30393C58AF44A9C041A2F248B339CDD17C42219B6D80BD7AE923688BFFB3
        1886B655B3469A55CFF584C1197D9DCDB7EFBE69F571BE6E5F1E6C0B6CCB6972
        78B05E8952818344C83EE7DDFD0B71A3787BE6DBEFA32614A86CB701F6F2B57D
        E35AB37DDE581CDE966C7AE559109ED1B662C8BD66CB375F975EC5F0BC3CDC16
        386B5A8B5A93A5B5F90B394C58BF444E7090680F692855440B31566C13DA6CCC
        9D83C6C16614A4307DA698FCD2C708177F3C1386B72DAB5FB80F066914AD79E5
        79B3637B71E9D50BD74BE7189A7B41D25ADC5397A535AAB5AA355B450E19D635
        91828344D23C1A887E62A5486E3025EA5FFF306C4641B1B50DB097AFE2AFFFEE
        D96384B7BC3E24FABF16D8BF8BD9B86461E9D50AEFCBC76D81D3A2B5886A5468
        ED6A0D3790C386754EB90D0E526E92467180E820DE17A8A1EC65ECF4B9B02105
        C1E636C05EBEB66FDA68B6BF3D1186B85BEB0A1EC2C11A012B87F731DB36AC2D
        BD4AE17E05B02D704A5A83A83601AD69ADED03E41460FD53EE8183943BA42154
        15678B0962BB40CD03BAE29191B02905C18B6D80BD7AE96384B77D3A0F86B81B
        DB66BC60963FD315066C98AD9D3EC6ECDCB1A3F4EA84FF15F0B6C07BD11A44B5
        590EAD71AD75AD79EE1D90E3E020C59F14FF31E249B15AA04651A1DF5CF68059
        BCF413D898FCE6D536C05EBEB67DF385F5C7086F1CF7380CD930D2C7F97EFFF9
        D2D2AB119D5748B6052EA93DAD41549B69D2DAD71E708C9C16EC13146F7090E2
        490AFD607187F848A08690915A2D6F37FD4784E38701BDDE06D8AB5762EB6653
        FCEE1418E6D9289E35D2AC1CD403066E98AC2A7CDC146FFAAEF42A44EB15966D
        81B5F6B406516D66417B82F68683E51461FFA0F88183141F52D0D5447BF18A48
        0854FC19A9D3B68BA97AD2F9A6D2A167984617DF069B93DFFCD806D8ABD7AE5D
        BBCCB67FBE0F033D1B9B260F80A11B16EBE7BD5672CE517D85655B60AD3DAD41
        AD45AD4954AB59D01EA1BD427B4635395DD857281EE020459F14EF09E219B14E
        A042CF589DF63D4CF5532F3795EA352E693CAACA618DCD8285EFC106E527BFB6
        01F6F2B56DDD2AB37DCE2818EA995A3DEC5E18BE415A3EF02EF3C3D7FF2E3DDB
        E8BEC2B02DB0D69CD6DE9E3AD49AD4DAD41A45B59B25ED1DDA434E90D3867D86
        A20D0E523449A1FE5A74159F0854D059ABD1F83A937778B39F1B4E929EFD06C2
        26E59720B601F6EAB5A3789B29FE601A0CF54C6C9E3A18867050BE9930C86CDF
        BAA5F42CA3FF0A7A5B60AD39548B5AA35AABA8865DD29EA2BDE5D772FAB0FF50
        F4C0418A0E29C81AE202F1BAD82950F166AD568B5B4DE5A35AC166B3C711CDAF
        804DCA2F416D03ECD54B1F36B3F5BF4B61B06762DD8B7D6018FB6DC3A239A17D
        4853B6AFA0B705D69A43B5B887D6ACD62EAA6997B4C768AFD19E53432E05EC4B
        140D7090C24F8AEF14F19CF856A04275A5F6D9779AAA27B487CD0599326D166C
        547E08721B602F5FC5DFAD37DBE78F83E19E8E6DD39F37CB077481A1EC871543
        7B99CD6B57969E4DBC5E416E0BACB5866A10D11AD65A46356E81F61EED41A7C8
        25817D8AC20D0E523849A1FD4EDC25FE2E5041BA56A75D7753ED2F97984A751B
        C18692CA75DDFBC266E587306C03ECD56B472261B62D7E0B067C3ABE1DF3280C
        67AFAD7E6DA4D911C2BD196CBD82DC16586B0DD5604A52CB5AD35ADBA8E62DD1
        9EA4BDE977727960FFA2F08183141E5250B5C4A56286D82550F1B9776E4F53E3
        F4AB4DDE614D7013A9C02F4F6E6B3E5DB60C362CAF85651B602F5F5B977F9ED5
        63848B678E302B07768721ED89FE5DCCB7CB3E283DEAF8BE82DA16586B4C6B0D
        D56045B4B6B5C6B5D6610FB0437B94F62AED59B5E452C1BE46E100072978523C
        A789E7C5F702159A35359BDE6C2A1F71166C1A997861CC24D8B4BC16A66D80BD
        7C15FFF0BD297E7B120CFAF27C3FE9691CD696AD18F9B0D9BA7143E9D1C6FB15
        D4B6C05A63A8F632A1B5AE358F7A8165DABBB48771ABE2908283140C29943F88
        5EE25F02159455B55BDD61AA1C9BDD6713489BEBBBC1A6E5B5306E03ECD56BE7
        CE1D66CBB2B761D097E79BA1F7C0D0B665CDAC89917A9CAFDB5750DB026B8DA1
        DACB86D6BEF600D41B3CA03D4D7BDB1FE4F2C1FE47FE8383E41F29883AE22A51
        247E14A878ACAAD3B6ABA976F285B029B851F38866E6838F3E868DCB4B71FB09
        F3745E5B567F95D1638437BF360806B75BCB9FED6EBEFBEFDF4B8F2A775E416C
        0BACB5A535866ACF0DED05DA1350AFF080F638ED75DAF3EAC8A5847D91FC0107
        C95B32F1F34423F1A2F841A042B1AFFD5DA6FA695798BC7A67C24660C3C3CF8E
        80CDCB2B51D806D8ABD7F6AD9BCDD6F75E83818FAC1DD91B8678B6568EE96F8A
        376F2A3D9ADC7BF9BD2DB0D616AA391BB427686FD01E017B8737B4F7690FD45E
        98279714F64BF20E1C246FC8243F543C28BE10A8203C53F3CC1B4CDEE1CD61F1
        DB744AFB1B61F3F24A54B601F6EAA58FD4DDFCF98730F09DB64E1B6696F7EF0C
        C33C536BDF991EE9C7F9DA78F9BD2DB0D616AA399BB44768AF403DC463DA13B5
        371E2A9716F64FB20F0E923D32A1F713D789F9024D7C4FD53AEB3653F9E8D6B0
        D8BD9057B791299AF7366C605E88D236C05EBEB6AE5F6D8AE78E81C19F6CC3E8
        4760A0A76BF973F7984D2BBF2A7DD7DC7EF9B92DB0D694D616AA392F68CFD0DE
        817A8A0FB4576ACFDC4F2E33ECAB64071C247764E25616CDC428B155A049EEA9
        DA6D3A9BAA279E078BDB6B9D7A3F059B9817D6AF5F2F979C2F7D258A8BCD960F
        DF84C1BF87FE5AE08A67BBC170AFC8AAC9C3CCF66DD1DD74C9F64BE71E9A935E
        D09A42B5E635ED21DA4B508FF181F64EEDA1DA4B2BCB2587FD96B20707293B32
        49EB8B87C5728126B4E7EAB4EB61AA37BCD454AA9BB45188CF0E39E322D8C4BC
        10D56D80BD7AE90FA76DFE62190CFF3DBE9BF0140CF8F2AC5FFC4E4EFEB06579
        2F3FB705D69A42B5E60BE925DA53B4B7A09EE313EDA9DA5BEBCBA587FD973207
        07297D3221F717378B85024D5C7FE8837CCEB8D6E4D56F8A8BD867E3A74C838D
        CCB6286F03ECE56BEB771B4CF182097001A0560DBE1B06BDD3F2171E349BD7C7
        F7498B6E5E7E6D0BACB5846ACC6FDA5BB4C778FC20A17468AFD59EBBBFDC06D8
        97293D7090CA2713AF8A68255E12C5024D52DFD46A768BA97C644B58B441B9EC
        8EFB6133B32D0EDB007BF1D2EBB2F6BFFF84E1AFBE7DF959736FE76EA6FB6597
        98FF3CD10986BF5AB9EC635EE3142FBFB605D65A42351614ED35DA73502FF299
        F65EEDC1DA8BABC82D81FD9A52838384C9243B4A3C2EBE116842FAAA76EB4EA6
        CAF1ED6091066DFFE35A99A54B3F810DCD96386D036CF3B569D326F3F9E79F9B
        2F16BF07C37F56C173E6B8EB1E2899437AAF0E3DA98519D7E57AB800F8E782B7
        4A3E967E4CBECABEBCDE16586B486BC9595F61A0BD477B90B32F05447BB2F6E6
        A3E4B6C0FE4D65C141FA994CA8034547F1814013CF7775CEE966AA9D7251C61B
        F6F86DE0C8B1B0A9D912B76D80DDBEF433D2152B56FC747DFEB3E4830D12F8D3
        F7F8FCE5E767B7BDB3EFAAE4B9947CBFCE6E755EF1C74F76DBF0CDD07BD6EDF1
        F9BB73137B3E9E7E6C7E3560EF97D7DB026B0D25DFA3D0D18D86A417694F4A9E
        5701D35EAD3DFB40B945B0AFD36E7030D7C9C4A926DA8AC962BB4093CC7FE7DE
        65AAFFED2A937798770FF2B1A9D9159D6053B325AEDB0067F3D21F48FBE73FFF
        E9BC4673E48FF67CCBEA0E51665F0970DFBE177788922FA9EAC748FE98FA1EFC
        C1CB9F5F5E6F0BAC3594746F424B7B92F626ED51CE391620EDDDDAC3B5975793
        DB05FB7D2E8383B94A26C971A2BF582BD0840A4CCD26379ACA0D5AC0E20BAB6A
        F59B9885EF2D828DCD86386F039CEE6BC78E1DE6EBAFBF86D747CC91B9D3507C
        9C3C9792A1FB56EA63D1503F86E36396D0F7D4F7CEF59797DB026BED680D39EE
        4BA8698FD25E85E65AC0B4A76B6F3F4E6E1BECFFB9080EE6129910BF14778A25
        024D9C40D56E79BBA9724C1B586C5170DF13436073B32117B6012EEFB571E3C6
        94DF835EF8C1C7A6ED7D43F4CBFDE5EE2F81EE59921F9B5FD969D53B291671FA
        DE7A0CB9FCF2725B60AD1D704F22417B96F62E34E742407BBDF6FC5FCA2D84B9
        902BE060DCC98DAF2ECE13AF8A1D024D9240D569DBC5543DE97C585C51726CAB
        AB6173B32157B60176BE128984F9EAABAFE03559B6EC33F348E1ABE67757F486
        F3CA09DD3327FD21B407FB3F2F1F7B197C4F3D163DA65C7C79B92DB0D60EBA1F
        51A23D4C7B199A7B21A0BD5F3340B3A0BADC4E9817710607E34A6EF2C962A0D8
        20D084085C9DF63D4CF5532F3795EA05F7201FDBDE98391B3638B772691BE03D
        AF0D1B36A4FCACFF95B7DE360D3B3D0DE7552AE87EA5725CEB6BCCE4A96FC2F7
        D663D263CBB59757DB026BCDA07B1049D2CBB4A7696F437330243413341B4E96
        DB0AF3238EE0609CC80DFDADE82E960974E343A346E3EB4CDEE1F6B7FB0CDACD
        77F7834DCEAD5C7A325D7171B1F9E28B2FE07558F4F11273FD130566BF0BEE81
        F3AA3CE87E95A78A34F32BEEEC6DDEFFE023782C7A8C7AACB9F2F26A5B60AD19
        74FDA34C7B9BF638340F4346B34233E3B7728B61AEC4051C8C3AB97135C5C562
        9AD829D04D0E8D5A2D6E35958F0AE7EFFADAF0DB86ED537EF9385BB9B20DB006
        CCBA75EBCCDFFFFE77781D9E1EF786F9E3D57DE0BC4A07BA5FE938F8E4B6E6F1
        21F9F098F458F598736581667B5B60AD15AD1974DDE3407B9DF63C341F4346B3
        433344B3A4A6DCEA325913757030AAE426E94F3C0F15DF09744343A5F6D9779A
        AA27C4B7D093E58F9F029B5DB6F4FBCE717F6DDBB62DE5EF994F9BF7AE69D4ED
        1938AF3281EE5526748BDAD7537C8B478F5DCF21EEAF543F8F912DAD1574ADE3
        467B9FF640342F43483345B3A5A1DC72983F510407A3446EC8EFC53DE29F02DD
        B8D0A9D3AEBBA9F6974B42FF201F9BCEBDB9276C76D98AF336C0FA99F3DAB56B
        537ED6DF69E058F33F17DE0BE756A6D0BDCA94FEAA5A877B1E83C7AAE7A0E712
        E7AF06D8DE16586B055DE758D20709492FD49E88E6674869D668E6FC5E6E3FCC
        A5A88083612717BEB6B85CCC12BB04BA49E1A31BF69C7EB5C93B2C5ABFDB6B43
        9DA35A988F162F810D2F1B71DD06583798F9CF7FFE03CF798F8ECF8CC1F32B0B
        E85E65E3C69E8FC063DD43CF29AE1B37D9DC16586B446B055DE338D39EA8BD31
        041B0D6542B3473348B3A8B64C059857610607C3482E709E385D8C109B04BA21
        A155B3E9CDA6F21167C1C99F2B527DCF381B717B1ADDAE5DBBCCEAD5ABE1B93A
        2DF9E45373CC2D8FC1799629749F3255B7F1C566C9D2A5F0589DF41CF55CE3F4
        B2B92DB0D608BAC6B9427BA4F64A3457434E3349B349332A4FA605CCB1B08183
        612217F34FE27EF15F812E7CA8D56E7587A9726C5B38D973CD691776804D2F1B
        71FA6C527F973CD31F249B34737E563FF5EF84EE5326F4B70232DDFA59CF354E
        CF70B0B92DB0D608BACEB9467BA6F64E34672340B34A33EB4F323D60AE85051C
        0C9A5CB87DC535421F655AEE93CCC2AA4EDBAEA6DAC917C2C99DAB342CE62E58
        081B5FA6E2B0298D7E26ECE6FBC736BE1580EE53266EBCABFC2FFD9747CF3D0E
        5F0DB0B52DB0D686D608BACEB94A7BA8F65234772340B34B334CB36C5F992A30
        EF820407832017A8B268220AC416812E68F8B5BFCB543FED0A93572F1A1BF6F8
        AD5BDF6760F3CB843E7426EAAF1F7EF8A1649B5D747EE9B2F1AD00748FD295C9
        97FE53D16BA0D722EAAF540F67CA84D606BACEB94E7BA9F654EDAD680E478466
        9A669B665C6599323007FD0607FD2417A39E78487C25D0858B8C9A67DE60F20E
        6F0E2731ED56BFC9A5B0F96522CADB003BB7EC75CBEDB702D03D4A47365FFA2F
        4FD4B71AB6B12DB0D606BAD6B49BF656EDB1681E478C669D665E3D993A3017FD
        0207BD2627FE0B71A3785BA00B1429B5CEBACD5439BA359CB454D6CBAFE3C7C9
        A62BAADB00A7D8B2D7B5DB0664FFAD00747FD2E1E64BFFA94479AB61B7DB026B
        4DA0EB4C6569AFD59E8BE6730469066A16FE42A611CC4B2FC1412FC809EA9EE4
        2DC458B14DA08B1129B5DB7436554F3C0F4E524AEDEA2E7D60134C57D4B601D6
        6D73BDDC377EF1D24FB2FE5600BA3F15D12FFD2F5EE2EE4BFFE5D16B15B5AD86
        DD6E0BAC3581AE35A5A6BD577B309AD711A499A8D9A8195945A614CC51DBE0A0
        4D72320DC4A362A540271E3975DAF530D51B5E6A2AD5E50FEC64E3C013DB984F
        3EFD1436C27444691B60DD2ED78BCFFA9D2666F9AD00747FCA63FB4BFFA9E835
        8BD256C36EB605D65AD09A40D79B2A203D587BB1F66434BF234AB35233B3814C
        2D98ABB6C041B7E4C00F101DC4FB029D6034E9837CCEB8D6E4D56F8A2723A56D
        68E104D80CD311855F212B6FCB5EAFDC3A60349EB7E540F7A63C37F47818BEB7
        57A2B2D5B09B6D81B516D0B5A6F4694FD6DE1CB10709A5433354B3F400996630
        6FDD8083D99003AC2ACE1613C576814E26B26A35EF602A1FD9124E3ECA5CAB6B
        BAC066988EB06F03AC9F0DDAF8A9F04CE9B7028EBEE551387F5341F72695431B
        79FBA5FF54F45A86FDAB3E6EB605D65A40D79B32A73D5A7B359AEB11A799AAD9
        AA195B55A61CCCE14CC1C14CC8C11C239E14AB053AF048ABDDBA93A9727C3B38
        D9287B351A344DB9A56C45C2FA5C790D812FBFFC121EB35F32FD5600BA37885F
        5FFA2F8F5EDBB02EFE744EA263AE88D680D602BAE6943DEDD9DABBD19C8F01CD
        5ACDDC6364EAC15C4E171CAC88BCF1C1E20EF1914007187975CEE966AA9D7251
        4E6DD8E3B73E039E874DB13C61DD06589F079F6AF31EBF65F2AD00745F10BFBF
        F49F8A5EE3B0EE0391CDB6C05A03E87A9305BAD190F470EDE568EEC78466B066
        F1C13205615E97070E22F206D5447BF18A48087430D177EE5DA6FADFAE327987
        F1413E5E3BE99CEB61532C4FD8B6012E2E2EB6F23BE03665F2AD00745F9C82FA
        D27F79F49AEBB50FD32B9B9FF9D01A40D79CECD15EAE3D5D7B3BAA8198D04CD6
        6CD68CAE26D311E6B8131C4C261FEC44F18C5827D01BC746CD263799CA0D726F
        27AEA0E4C90AFDCDD9F360634C252CDB0057B4656FD046BF3107CE7127745F9C
        0AC64F81EF11B4B06D359CE9639D75EE6B0DA06B4EF6696FD71E8FEA206634AB
        35B34F946909737D0F3828FFF0D7A2ABF844A0378895DA2D6F37558EE1AFE104
        A1E37D4FC0E6984A18BEFC9BCE96BD419B3C6B019CEB4EE89E384D7C6D3A7C8F
        B008CB56C3996E0BAC731F5D6FF296F67AEDF9A81E6248335CB3FCD73245CB64
        FD4FFF217FA186B840BC2E760AF4C162453799A87AD2F97092903FFEEFB4F361
        734C25C827C5E9679AE96ED91BB4E726CE8073DE09DD13A767868F81EF11367A
        6F82FC6A40A6DB02EBDC47D79BFCA1BD3FC21B0D654A335DB35D33BE864CD7DD
        0B00F91FA788C1E25B81FE61ECD469DFC354FFEBE5A61277DE0A853193A7C206
        8904F599DE962D5BCCBFFFFD6F784C61D4EB85C970EE3BA1FBE174D72303E17B
        8491DE23BD5741BC32D91658E73CBAD6E433C900CD02CD04541F31A559AF997F
        8A2E00D05F88AD1A8DAF37798737C393810271D16DBD609344FCDE3046B7ABFD
        E69B6FE0B184D90D4F16C0F9EF84EE87D3959D7BC3F70833BD677E6F359CC9B6
        C03AE7D1B5A66068266836A01A89B39C5900D46A71ABA97C542B78F32958FB1D
        DB32AD9F32F77B1B60DDA6369B5FED0A83B37B0D8675E084EE8753D3CBEF80EF
        11767AEFFCDE6A389D0740E95CD7398FAE35054B3342B302D54A1CC57E0150FB
        EC3B4DD513DAC39B4DE1D1FF85D1B05926F36B1B60FD4C6EE5CA95F018A2E2A4
        8E4FC07A7042F7C2E988E657C0F7880ABD977E7DE5289D5F09D5B98EAE338587
        66866607AA993889ED02A04EBBEEA6DA5F2EE1837C22A2F1A51D61B34CE6C736
        C0FA835C9F7FFE397CFF28F9DD15BD615D38A17BE1B4FF71ADE07B4489DE533F
        7E80349D5D1F75AEA3EB4C21A30F12920CD12C41B51307F15B00E8863DA75F63
        F20E6B826F2A8552D5FA679A050BDF870D730F2FB701F67ACB5E3F7DB07829AE
        0D00DD0BE4838F3E86EF15355E6F355CD1B6C03AC775AEA36B4CE1A459A29912
        C38D86E2B500A8D9EC6653F988B3E04DA4F0BBE7D141B069EEE1D58630DF7DF7
        9D2F5BF6FAE5F5390B617D20E83E20AFCD780BBE5714E9BDD67BEEC5ABA26D81
        758EA3EB4BE1A7D9A21983EA28AA62B100A8DDEA0E53E5D8B6F0A651741C75D6
        95B069EE617B1B60DD66F6EBAFBF86EF1565CFBF3213D60982EE0332A4603C7C
        AF28D37B6F7BABE18AB605D6398EAE2F4587668D660EAAA7A889F402401FE250
        EDCF17C29B44D154DE679A3677820B6ACB5E3FF479F115582F08BA07C87D4F0C
        81EF1575B6B71A2E6F5B609DDBE8DA523469F644FD4142D15C00B4BFCB543FED
        4A93578FDF4B8B9BF2769DB3F194B7306CD9EBB50EFDEDEF06787D8FBEF0BDE2
        C2D656C33A47D1C7573AB7D1B5A5E8D20CD22CD24C42F51576915B00D43CF306
        93777873783328FA7E754A3BF3E9B265659AA78D6D80C3B465AF97CE7D6018AC
        1D04DD03A4D5355DE07BC589ADAD86D1B323744EEBDC46D796A24F3349B309D5
        589845660150EBAC8EA6CAD1ADE1C5A778193176729906EA661B60DD36F68B2F
        BE28F331E3AA61A7A7610D21E8FA23C7B5BE06BE571CE95C71B3D530DA1658E7
        34BAAE142F9A519A55A8D6C228F40B80DA6DBA98AA279E072F36C5D33937F428
        D340B3D90658BF1CBB6EDDBA9CF8AC3FD99FAEEE036B0941D71FF9E5C96DE17B
        C595CE199D3BD97CDB096D0BAC731A5D578A27CD2CCD2E54736112DA05409D76
        3D4CF58697994A75B9614FAEA9756473F3A1E3F7CE33FDD2ECB66DDB42BF65AF
        17967CF2A9D9F77C5C5308BAFE88EE5BBF6469C58F6B8E1B9D433A97327939B7
        05D6B9AC731A5D578A31C92ECD30CD32547B6110BE05803EC8E78C6B4D5EFDA6
        F8A2524EE83768E45E4D34DDA7B8E9676C153D8C25CEDE5CF01EAEAB14D0B54F
        65C65B73E17BE6029D53E97E35C0B92DB0CE65743D2937689669A685F14142A1
        5A00D46ADEC1543E929B64D019A6E17937EDD544D3F92C2C6A5BF67AA1606A11
        ACAD54D0B54F65E4B897E17BE68A74B71AD6B99AFCEF742EA3EB49B945B34D33
        0ED5615042B100A8734E7753E578FE842CFDAC72DD4666F6BCB77F6AA2E56DE6
        12D52D7BBDF0E8A8D7608DA582AE7D2A7D9F190EDF33D754B4D570F2B6C03A87
        752EA3EB49B949B34E330FD5A3DF42B100A8D1E83A78A128B7757EB07F49132D
        6F1B607DF25A54B7ECF5C29D03C7C11A4B055DF7546EBDF731F89EB948E75C79
        4FA6DCF390299DC3E85A526ED3CC43F5E8B7502C00F853FE841CDAE8E292268A
        B6018EC396BD5EB8E8A117608DA582AE7B2AED6E2CFBDB19B92ED556C37BB605
        D6398CAE25E536CD3C548F7E0B7E01706E4FEEDC47294D78757A996D80376DDA
        148B2D7BBD7046D701B8CE5240D73C953FB7BB01BE67AED3B9A87332F9A57356
        E72EBA8E449A7961F8A1C0C01700FAD004748188D4E59D1EF8691B60DDC675C5
        8A15B009D36E875DFF30ACB354D0354FE57F4F3D0FBE27EDA67373CF56C33A67
        75EEA2EB48A4C2F0C0A0C01700D5FF7A05BC3844EA80135A9B0D1B36C46ECB5E
        2FE8E366F7BFF05E5867A9A06B9E8AEE638F1ED34C3FDBB3D5B0CE599DBBE83A
        1229CD3E54937E0A7C0150E598B3E1C521DA63D8E8B28F06A6B2E6BCFB01ACB1
        F2A0EB5D9EE4DFCCA0D474CEA2EB47B487661FAA493F05BA00A8D3AEBBA9C45F
        91A10AE867520B16BE0F1B2DFD6CECF4B9B0CECA83AE7779464D7A0DBE37FD4C
        E72A3FFBA70A49F66906A2BAF44BA00B809A4DF8800C4A4FF32BEF84CD967EF6
        F4B837609D95075DEBF23C36381FBE37FD4CE72ABA76444E9A81A82EFD12E802
        A0DA9F2F84178508796248016CB8B45BF721E3619D95075DE7F274EAFD147C6F
        DA4DE728BA6E44886620AA4BBF04BA00C86BC00D32287DFB1FD7CACC7BFB5DD8
        78E9337365BF91B0CECA83AE73792EBCF55EF8DEF459C9DCD4398AAE1B11A219
        88EAD22F812D006AB7E697C928738D2FED089B2F7D669ADD3510D65A79D0352E
        CF69177680EF4D9F95CC4D74CD88CAA359886AD30F812D006A9C7E35BC184415
        71EE1448BB1D75F3A3B0D6CA83AE6F790E6974117CEF5CC71DFF285B9A85A836
        FD10D802809BFF50B6F63DE62C337BFE3BB011E7B2832EBE0FD65A79D0F52D4F
        CD239AC1F7CE653A17754EA2EB455411CD42549B7E08660170EE5DA652BDC6F0
        6210A5E36FFC52F45EDE5EF411AEB50AA06B5B11FE4AE6DE742EA2EB449416C9
        42CD44549F5E0B6401A07B22C30B4194813E039E870D39174D9A391FD65A45D0
        75ADC8F829D3E031E4229D83E81A1165423311D5A7D7025900546B7829BC0844
        99D8E7E816E6ADB90B6063CE3503274C87B55611745D2BD2FF85D1F018728DCE
        3D9D83E81A1165423311D5A7D7025900543EB225BC0844996A78DE4D66199F4F
        6FEE7D7E12ACB58AA06B5A91EE0F3F038F2197E89CD3B987AE0F51A63413517D
        7ACDF705409DB65DE10520CAD67D4F0C814D3A975CF74401ACB78AA0EB5911DD
        E50E1D432ED13987AE0D51B6341B518D7AC9F70540CDC6D7C39327CA56ED239B
        9B3767CF838D3A57B4BE7730ACB78AA0EB5991332FBD1D1E43AED0B9A6730E5D
        1BA26C6936A21AF592EF0B80AA279D0F4F9EC88D93CFB93EA7BF1570C26D8FC3
        7AAB08BA961539BCD965F0187281CE319D6BE8BA10B9A1D9886AD44BBE2F00F2
        EA3785274FE4D6DD8F0E824D3B17FCE6F20760BD55045DC78AEC776C4B780CB9
        40E718BA26446E6936A21AF592AF0B80DA2D6F87274E64833EA466DAAC39B071
        C7D9071F2F81F5960E741DD3B1E8C38FE0B1C499CE2D9D63E87A10D9A01989EA
        D42BBE2E00AA9F76253C69225B8E3FFB1AF3698E7D2BE0B5D9EFC07A4B07BA86
        E998326D163C96B8D239A5730B5D0B225B3423519D7AC5D705409563DAC09326
        B2A95BDF01B089C7D5B09767C27A4B07BA7EE9782EFF25782C71A5730A5D0722
        9B3423519D7AC5B705409D763D4CA5BA8DE04913D954A34153337546116CE471
        D47BE4CBB0E6D281AE5F3AEE7D7C303C9638D2B9A4730A5D0722AB2423352B51
        AD7AC1B70540CDA67C6806F9E7E89657994F3EFD1436F4B8B9E5E951B0E6D281
        AE5D3AAEEDF6103C96B8D139A473095D03222F6856A25AF5826F0B806AA75C04
        4F96C82B9D7A3F059B7ADCB4BB7F28ACB974A0EB968EB3AEEA0C8F256E740EA1
        F327F28A6625AA552FF8B600A8DC80CFCC267F55ABDF24277E58ED2F773C056B
        2E1DE8BAA5E3985657C36389139D3B3A87D0F9137945B312D5AA177C5900D43E
        BB333C5122AF1DD1FC0AF3C927F1FE56C01FAEEA03EB2E1DE89AA5E3A093DAC0
        63890B9D333A77D0B913794D3313D5AB6DBE2C006A9CC15F9FA1E0DCDAEB71D8
        E4E360F1D24FCCBEE7E3BA4B07BA5EE9C8ABDBC82C5EB2141E531CE89C41E74D
        E407CD4C54AFB6F9B200A87A7C7B7892447EA85AFF4C3369EA0CD8E8A36EC6FC
        F760CDA50B5DAF74C5F5A14B3A5774CEA07326F2836626AA57DBBC5F009CDBD3
        E4D5633151B00E6B72A959B2347E9FB1BEF8DA5BB8EED284AE55BA868F990C8F
        29CA748EE85C41E74BE417CD4CCD4E54B33679BE00A8D5E2567882447EBBA967
        3FD8F4A3AC5FE1ABB0EED285AE53BAFA0C781E1E5394E91C41E74AE437CD4E54
        B33679BE00A87EEA65F0E488FC56A55E63337ECA34D8F8A3EAF667C7C2BA4B17
        BA4EE9BAF9EE782DA8746EE81C41E74AE437CD4E54B33679BE00A87C542B7872
        444138A4D145B1FAE1B50BFBBC00EB2E5DE81AA5ABEDF5DDE1314591CE099D1B
        E83C8982A0D9896AD6264F170075CEE9064F8C2848717A8ADDDFBAF487B5972E
        747DD275D239D7C3638A229D13E81C8982A4198AEAD6164F170035CFBC019E14
        51902AD76D64C64C9E0A83206AEA5DD717D65EBAD0F549D76F1BB687C714353A
        17744EA073240A926628AA5B5B3C5D00543DF90278524441FBE3E9179A8F162F
        818110159F7EBACCFCE2827B60EDA50B5D9B745539AC71E4F75BD039A073019D
        1F51D0344351DDDAE2E90220AF3E77D0A2F0BAB2736F180A5151B47011ACBB4C
        A0EB9289B7E62E80C716153A07D0791185816628AA5B5B3C5B00D46E75073C21
        A2B0D0A7D9158C9F0283210AC64C9B036B2F13E8BA64A270C2ABF0D8A240EFBD
        CE01745E4461A1598A6AD706CF1600D5FF76253C19A230F9FD5FCF331F7EF431
        0C88B07B72ECEBB0F63281AE49261E1DF4223CB6B0D37BAEF71E9D1351986896
        A2DAB5C1B305409563DBC293210A9B4B3ADE074322ECBA0D1E0F6B2F13E87A64
        E28E079E84C716767ACFD1F910858D6629AA5D1B3C5900D469DFC354E297D628
        22F4CBC023C646EFB1B6973F3202D65F26D0F5C8C4051DEE81C716667AAFF9A5
        7F8A0C99AB9AA9A87EDDF2640150B3D9CDF84488424A7FA56DD1871FC1C008AB
        263D9E85F59709742D32F1D7F36F86C716567A8FF55EA373210A2BCD5454BF6E
        79B200A8F6978BE1491085D9F9B7DC0D4323AC8EB8A91FACBF4CA0EB9009FD15
        3A746C61A5F7189D07519869A6A2FA75CB930540E523CE8227411476C30A27C0
        E008A3032EEA05EB2F13E81A64A24683A6F0D8C248EF2D3A07A2B0D34C45F5EB
        96F50540ED365DE0091045C1AFFE7C8E796FD1873040C264C1FB1FC1FACB14BA
        06999AFFCEBBF018C344EFA9DE5B74FC4451A0D98A6AD80DEB0B801A8DAE8507
        4F1415ED6EEC0143244C26BC391FD65FA6D0F967EAA557DE80C718267A4FD1B1
        134585662BAA6137AC2F00AA9E702E3C78A22819F4E238182461F1ECF869B0FE
        3285CE3D534F0F1B058F312CF45EA2E3268A12CD5654C36ED85D009CDBD3E41D
        76263C78A22839E8A43666E17B8B60A084C1DDC326E21ACC103AF74C75EB3B00
        1E6318E83DD47B898E9B284A345B3563511D67CBEA02A0D659B7C103278AA2D6
        D77485A11206D73E960F6B3053E8BC3375D91DF7C3630C03BD87E89889A24833
        16D571B6AC2E00AA9F7A393C68A2A81AF0C268182C416B79CF73B0063385CE39
        538D2FE9088F31687AEFD0F1124595662CAAE36C595D00543EBA353C68A2A83A
        E084D666C1C2F761C004E9B85B1F8735982974CE99AADFE452788C41D27BA6F7
        0E1D2F515469C6A23ACE96B505409D73BAC303268ABAE657DE09432648BFBEEC
        7E58879942E79BA97D8F390B1E6390F49EA163258A3ACD5A54CBD9B0B600A8D9
        E44678B04471F0C4900218344178FFA325B006B381CE351B617A7682DE2B748C
        4471A0598B6A391BD61600D54EBE001E2C511CEC7F5C2B33EFED703CF0664AD1
        DBB006B381CE351B2FBFFE263C56BFE93DD27B858E91280E346B512D67C3DA02
        20EFF066F06089E2A2F1A5E1F861B72193DF8435980D749ED91834321CCF4DD0
        7B848E8F282E346B512D67C3CA02A076EB4EF04089E2A6DFA0913078FCF4C088
        97611D66039D6336EE7974103C563FE9BD41C74614379AB9A89E3365650150E3
        6F57C183248A1BFD81B7D9F3DF8101E4979B9E2A8475980D748ED9B8A66B1F78
        AC7ED17BA2F7061D1B51DC68E6A27ACE9495054095E3B8C906E58EBF5DD80186
        905FCEB96F08ACC36CA0F3CB46D0BF29A1F7041D17511C69E6A27ACE94FB0540
        FBBB4CA57A8DE14112C5559F01CFC320F2C39F6F7F12D76216D0B965E3A8B3AE
        84C7EA07BD17E89888624B3257B317D574265C2F006A35BB051F20518CED7374
        0BF3D6DC053090BCF6FB2B1F84B5980D746ED938E084B3E1B17A4DEF81DE0B74
        4C4471A6D98B6A3A13AE1700D5FE72093C38A2B86B78DE4D66D9B2653098BCF2
        F1924F601D660B9D57B63E5ABC041EB357F4DAEB3D40C74214779ABDA8A633E1
        7A0150F9C896F0E08872C17D4F0C81E1E49569F3DE8575982D744ED97A7DE66C
        78CC5ED16B8F8E83281768F6A29ACE84AB05409DB65DE08111E58ADA4736376F
        CE9E0703CA0B235F7D0BD662B6D03965EBF9D193E0317B41AFB95E7B741C44B9
        423318D575BA5C2D006A34BA0E1E14512E39F99CEB7DFB56C0C305AFC25ACC16
        3A9F6CF57E7A183C66DBF45AEB3547C740944B3483515DA7CBD502A0EA89E7C1
        8322CA3577FBF4209C8ECF8C81B5982D742ED9BAB1E723F0986DD36B8DDE9F28
        D76806A3BA4E57F60B80737B9ABCC39AC08322CA35358F6866A6CD9A0303CBA6
        F31F7C1ED76396D0B964EBECEBBAC163B649AFB15E6BF4FE44B9463358B318D5
        763AB25E00D43A8BCFDC264A76FCD9D7984F3DFE56C0699DFBC37ACC163A8F6C
        9DD0E63A78CCB6E8B5D56B8CDE9B28576916A3DA4E47D60B80EA7FBD021E0C51
        2EEBD677000C2F5B0EBDF621588FD942E790AD5F9FD20E1EB32D7A6DD1FB12E5
        32CD6254DBE9C87A0150E598B3E1C110E5B21A0D9A9AA9338A6080B9F5C9A7CB
        CC7E17DC03EB315BE81CB255A55E63F3C9279FC263774BAFA95E5BF4BE44B94C
        B318D5763AB25A00D469D7DD54AADB081E0C51AE3BBAE55512D6F683F0AD77DE
        87F5E8063A7E3766CE990F8FDD0DBD967A4DD1FB11E53CC962CD6454DF15C96A
        0150B3099FBE45549E4EBD9F8261E6C6A83766C37A74031DBB1BF9E3A7C06377
        43AF257A2F22DA4D3319D57745B25A0054FBF385F0208868B76AF59B9829D366
        C140CBD61363A6C27A74031DBB1B8F0C1C018F3D5B7A0DF55AA2F722A2DD3493
        517D5724AB05405E033E818BA8224734BFC2EAF7C4BB3CF712AC4737D071BBD1
        F1BE27E0B16743AF9D5E43F43E44F433CD6454DF15C9780150BBF59DF00088A8
        AC5B7B3D0EC32D1B973E3C02D6A41BE898DD38EFE6BBE1B16743AF1D7A0F222A
        4BB319D57879325E00D438FD6AF8E6445456D5FA679A495367C080CBD499DD9F
        8535E9063A663774773E74EC99D26BA6D70EBD071195A5D98C6ABC3C192F00AA
        1CDF0EBE3911618735B9D42C59BA14065D261ADCF008AC4937D0F1BAF17FA79D
        0F8F3D137AADF49AA18F4F44986633AAF1F264B60038F72E53A95E63F8E64494
        DA4D3DFBC1B04BD7B2659F99032EEA85EBD20574AC6E543FBC89EB8D91F45AA1
        8F4D44E5906CD68C46759E4A460B805ACD3BE03726A272E94372C64F9906032F
        1DF3DEFB10D6A45BE858DD9ABB60213C8774E835D26B853E2E11954F331AD579
        2A192D00AA37E497E588B27548A38BCCE225D97D2B60FC8C79B026DD42C7E9D6
        D8975F87E75011BD367A8DD0C724A28A6946A33A4F25A30540E5A35AC13725A2
        F45CDBED21187E1519F0D23458936EA16374EBC9A105F01C2AA2D7067D3C224A
        8F6634AAF354D25E00D469DB15BE2111A5AF72DD4666CCE4A93000CBD373E804
        58976EA16374AB4B9FFEF01CCAA3D744AF0DFA7844943ECD6A54EB48DA0B809A
        8DAF876F464499F9E3E9179A8F162F814198CAD58FBE08EBD22D747C6E5DD2F1
        3E780EA9E8B5D06B823E16116546B31AD53A92F602A0EA49E7C33723A2CC5DD9
        B9370CC3545ADC3D08D6A55BE8D8DC3AE3E25BE139A4A2D7027D1C22CA9C6635
        AA7524ED05405E7D6EC549644B5EDD46A620838D738EEDF018AC4BB7D0B1B955
        EFCC4BE039207A0DF45AA08F434499D3AC46B58EA4B500A8DDF276F8464494BD
        DFFFF53CF3E1471FC36074FAE5A5F7C3DA740B1D975B758E6A01CFC149CF5DAF
        01FA1844943DCD6C54EF4E692D00AA9F76257C132272279DEF97BFF7E1625897
        36A063B2E1DDF73F80E7924CCF1DFD5B227247331BD5BB535A0B802AC7B4816F
        4244EEE897BF478C9D0C03728F97DF5A00EBD206744C3654B4FF819E33BFF44F
        E40DCD6C54EF4E152E00EAB4EF612AB150893CF3DB86EDCDA20F3F8241A9064F
        9A016BD306743C363C3B622C3C17A5E7AAE78CFE1D11592099ADD98D6A3E5985
        0B809A4D6FC66F4044D69C7F4BEA6D74EF1B3E19D6A60DE8586CE8D96F203C17
        A5E78AFE0D11D9A3D98D6A3E59850B806AA7F0D19C447E1856380106E68D4F16
        C2DAB4011D870D57757E109E8B9E23FAFB4464976637AAF964152E002A376801
        3F3811D9F5AB3F9F63DE5BF46199D06CD36B08AC4D1BD071D8D0EC8A4E65CE43
        CF4DCF11FD7D22B24BB31BD57CB2721700B5CFEE0C3F301179A3DD8D3DCA04E7
        491D9F80F569033A061B8E6C714599F3D073437F9788BCA1198EEA7E8F721700
        35CEB8067E5022F2CEA017C7ED159CFF7B456F589F36A0F7B7E17F8E6FBDD739
        E839A1BF4744DED10C4775BF47B90B80AAC7F3277589FC76D0496DCCC2F71695
        04E7878B97C2DAB405BDBF2D7B1E72A4E7A2E784FE0E117947331CD5FD1EA917
        00E7F63479F5CE841F9488BCD5FA9AAE25E1F9C6DC85B83E2D41EF6DCBD41945
        25E7A0E782FE9C88BCA519AE598E6A5FA55C00D46A712BFC8044E48F012F8C36
        C3A7CC82F5690B7A5F5BF427FEF51CD09F11913F34CB51EDAB940B80EAA75E06
        3F1811F9E380135A9BBB878C87F5690B7A5F5BBAF57DA6E41CD09F11913F34CB
        51EDAB940B80CA47B170898256FFE2EEB03E6D41EF69CB9FCEE033448882A659
        8E6A5FC105409D73BAC10F4444FEAA79E60D65EAD326F49E44142F9AE9B0FED1
        A0361DF44188C85FB5CEEA58A63E6D42EF4944F192EA1309B800A87AF205F083
        1091BFEAB4ED52A63E6D42EF4944F1A2990EEB1F0DE6D56F0A3F0811F92B55E1
        DA82DE9388E245331DD6BF73A076AB3BE00720A260546B78E95E356A137A3F22
        8A1FCDF632F5EF1CA8FEB72BE13F26A2E054FFDB557BD5A92DE8BD88287E34DB
        CBD4BF73A0CAB16DE13F26A260D5687CFD5EB56A037A1F228A1FCDF632F59FFC
        3FEAB4EF612AD56D04FF3111054C6AB366B39BF72A60B7E0FB1051FC48FFD08C
        DFABFE93FF47CD66B7E07F4844E150AFB1A975D66D7B15B11BF03D88289634E3
        F7AAFFE4FF51ED2F17C37F4444E19177581353BB75A7BD0A395BE8E313513C69
        C6EF55FFC9FFA3F21167C17F4444E192777833B38F856704A08F9D893C7ECB90
        283234E3F7AAFF3DFF51BB4D17F80F88289CB4987F71DE5D7B1574A6D0C74D57
        D5FADC2E9C286A34EB7FAAFF3DFF51A3D1B5F02F135178553EBAB539E0C27B7E
        2AE84CA18F998EEA873781E344146E9AF53FD5FF9EFFA87AC2B9F02F1351B8D5
        3AF93CB3FF05F7FE54D499401FAF22FA993F170044D1A459FF53FD97FCC7B93D
        4DDE61FC721E5154D56B7B8BD9EFFCCCBF12803E56792AD76D64FE74FA85F0CF
        8828FC34EB35F34BEA5FFF8FFE5A11FA8B44141DAD3AF52B13F015411FA73C4D
        2FE7A3C289A26ECFAF12972C00AAFFF572F89788283A6A34686AAE7EF8853221
        5F1EF47152B9F4F6FB4ADE03FD19114587667E49FDEBFFA972746BF89788285A
        8E6E7995B9B2DFC832419F0AFA18C845B7DD5BF2B1D19F1151B468E697D47F9D
        73BAC3BF4044D17447EFA7CC39F70F2D13F608FAF74E2DAEBAD3DCF1C093F0CF
        88289A4AB2BF66931BE11F12513455ABDFC44C7AFD4D736287477F44A19F0CFD
        FB6447B4B8E2C7495367947C4CF4E744144D25D95FEDE40BE01F1251741DD1FC
        0AF35CC104B3CFB977FD1D05FF1EE8DFFEA46EA3BF0F1A39AEE463C13F27A2C8
        2AC9FE2A47B72ECE3BBCD90E228A978617DEBAB3FAA997E54BD0BF2BBE44A411
        A4F26ED593CECBD78F813E3611459B667F25630C111111E5183848444444F106
        0789888828DEE020111111C599A9F4FF353B0A89B4CAE9190000000049454E44
        AE426082}
      Proportional = True
    end
    object SpeedButton1: TSpeedButton
      Left = 638
      Top = 0
      Width = 34
      Height = 41
      Cursor = crHandPoint
      Align = alRight
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
      ExplicitLeft = -2
      ExplicitTop = 9
      ExplicitHeight = 32
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 672
    Height = 8
    Margins.Top = 0
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clHotLight
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    ExplicitWidth = 527
  end
  object Prov_Cliente: TDataSetProvider
    DataSet = Cliente
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 72
  end
  object DS_Clientes: TDataSource
    DataSet = CD_Clientes
    Left = 647
    Top = 184
  end
  object Cliente: TSQLDataSet
    CommandText = 
      'select clientes.NOME, clientes.OBS, clientes.NASCIMENTO, cliente' +
      's.DATA_CADASTRO, clientes_dados.CELULAR, clientes_dados.FONE_RES' +
      ', clientes_dados.FONE_COM from clientes LEFT JOIN CLIENTES_DADOS' +
      ' ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 640
    Top = 24
  end
  object CD_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Cliente'
    Left = 648
    Top = 128
    object CD_ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_ClientesOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CD_ClientesNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object CD_ClientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CD_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 18
    end
    object CD_ClientesFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Size = 18
    end
    object CD_ClientesFONE_COM: TStringField
      FieldName = 'FONE_COM'
      Size = 18
    end
    object CD_ClientesFONE: TStringField
      FieldName = 'FONE'
      Size = 18
    end
    object CD_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CD_Clientesid_cliente: TFMTBCDField
      FieldName = 'id_cliente'
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Relat'#243'rio de Clientes'
    Filter = 'Excel|.xlsx'
    Left = 531
    Top = 363
  end
end
