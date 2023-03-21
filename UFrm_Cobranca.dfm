object Frm_Cobranca: TFrm_Cobranca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  ClientHeight = 399
  ClientWidth = 624
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 399
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 626
    object Label3: TLabel
      Left = 337
      Top = 120
      Width = 127
      Height = 13
      Caption = 'Especie de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 3
      Top = 123
      Width = 90
      Height = 13
      Caption = 'Centro de Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 337
      Top = 164
      Width = 39
      Height = 13
      Caption = 'Regi'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 3
      Top = 166
      Width = 39
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 339
      Top = 208
      Width = 54
      Height = 13
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 227
      Width = 85
      Height = 13
      Caption = 'Status Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 339
      Top = 257
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 337
      Top = 137
      Width = 254
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 593
      Height = 105
      Align = alCustom
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object Label1: TLabel
        Left = 67
        Top = 35
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
      object Label2: TLabel
        Left = 232
        Top = 35
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
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 67
        Top = 54
        Width = 142
        Height = 24
        EditType = etDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 232
        Top = 54
        Width = 135
        Height = 24
        EditType = etDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 402
        Top = 15
        Width = 97
        Height = 88
        Align = alRight
        Caption = 'Filtrar por Data'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Emiss'#227'o'
          'Vencimento'
          'Liquida'#231#227'o')
        TabOrder = 2
        Transparent = True
        VisualStyle = vsGradient
      end
      object RzRadioGroup2: TRzRadioGroup
        Left = 499
        Top = 15
        Width = 92
        Height = 88
        Align = alRight
        Caption = 'Contas '#224
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Receber'
          'Pagar')
        TabOrder = 3
        Transparent = True
        VisualStyle = vsGradient
      end
    end
    object Button1: TButton
      Left = 341
      Top = 316
      Width = 252
      Height = 51
      Caption = 'Filtrar / Imprimir'
      TabOrder = 2
      OnClick = Button1Click
    end
    object RzComboBox3: TRzComboBox
      Left = 3
      Top = 138
      Width = 147
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
    object RzComboBox4: TRzComboBox
      Left = 337
      Top = 181
      Width = 254
      Height = 21
      Style = csDropDownList
      TabOrder = 4
    end
    object RzComboBox5: TRzComboBox
      Left = 3
      Top = 181
      Width = 254
      Height = 21
      Style = csDropDownList
      TabOrder = 5
    end
    object RzComboBox6: TRzComboBox
      Left = 339
      Top = 224
      Width = 252
      Height = 21
      Style = csDropDownList
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '8'
        '9')
    end
    object Memo2: TMemo
      Left = 672
      Top = 9
      Width = 567
      Height = 382
      TabOrder = 7
      Visible = False
    end
    object Button2: TButton
      Left = 207
      Top = 227
      Width = 50
      Height = 19
      Caption = '+'
      TabOrder = 8
      OnClick = Button2Click
    end
    object RzComboBox2: TRzComboBox
      Left = 339
      Top = 276
      Width = 252
      Height = 21
      Style = csDropDownList
      TabOrder = 10
      Items.Strings = (
        'Em Aberto'
        'Quitado'
        'Renegociada'
        'Cancelada')
      Values.Strings = (
        ' and (status= 0)'
        ' and ((status = 1) or (status = 2))'
        ' and (status = 8)'
        ' and (status =9)')
    end
    object Memo1: TMemo
      Left = 6
      Top = 252
      Width = 251
      Height = 115
      Enabled = False
      ParentColor = True
      ScrollBars = ssBoth
      TabOrder = 9
    end
    object Memo3: TMemo
      Left = 8
      Top = 389
      Width = 567
      Height = 382
      TabOrder = 11
      Visible = False
    end
    object Memo4: TMemo
      Left = 744
      Top = 228
      Width = 567
      Height = 382
      TabOrder = 12
      Visible = False
    end
  end
  object RLReport1: TRLReport
    Left = -16
    Top = 373
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = False
    Borders.Color = clBackground
    DataSource = Ds_filtro
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
        Left = 295
        Top = 1
        Width = 128
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio de T'#237'tulos'
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
      Height = 90
      AllowedBands = [btFooter]
      DataFields = 'NOME'
      BeforePrint = RLGroup1BeforePrint
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 43
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Color = clBtnHighlight
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand1BeforePrint
        object RLPanel1: TRLPanel
          Left = 0
          Top = 32
          Width = 717
          Height = 11
          Align = faBottom
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          object RLLabel8: TRLLabel
            Left = 346
            Top = 0
            Width = 30
            Height = 11
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'Parc'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 60
            Top = 0
            Width = 205
            Height = 11
            Align = faLeft
            AutoSize = False
            Caption = 'Descri'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 306
            Top = 0
            Width = 40
            Height = 11
            Align = faLeft
            AutoSize = False
            Caption = 'N'#186' Doc'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 0
            Top = 0
            Width = 60
            Height = 11
            Align = faLeft
            AutoSize = False
            Caption = 'Venc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 663
            Top = 0
            Width = 54
            Height = 11
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Juros'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel18: TRLLabel
            Left = 499
            Top = 0
            Width = 73
            Height = 11
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel19: TRLLabel
            Left = 572
            Top = 0
            Width = 35
            Height = 11
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel1: TRLLabel
            Left = 376
            Top = 0
            Width = 63
            Height = 11
            Align = faLeft
            AutoSize = False
            Caption = 'Emiss'#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 607
            Top = 0
            Width = 56
            Height = 11
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Diferen'#231'a'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel14: TRLLabel
            Left = 439
            Top = 0
            Width = 79
            Height = 11
            Align = faLeft
            AutoSize = False
            Caption = 'Esp'#233'cie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
          object RLLabel15: TRLLabel
            Left = 265
            Top = 0
            Width = 41
            Height = 11
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'ID Ped.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 8
          Width = 61
          Height = 15
          Caption = 'CLIENTE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 72
          Top = 8
          Width = 449
          Height = 15
          AutoSize = False
          Color = clMenu
          DataField = 'CLIENTE'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 632
          Top = 8
          Width = 80
          Height = 15
          AutoSize = False
          DataField = 'CELULAR'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 544
          Top = 8
          Width = 80
          Height = 15
          AutoSize = False
          DataField = 'FONE_RES'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 43
        Width = 718
        Height = 15
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText9: TRLDBText
          Left = 60
          Top = 0
          Width = 205
          Height = 15
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 306
          Top = 1
          Width = 40
          Height = 20
          AutoSize = False
          DataField = 'N_DOC'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel10
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 0
          Top = 0
          Width = 60
          Height = 20
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel12
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 376
          Top = 0
          Width = 63
          Height = 20
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 499
          Top = 0
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel18
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 346
          Top = 0
          Width = 30
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Color = 14869218
          DataField = 'PARCELA'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel8
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 572
          Top = 0
          Width = 35
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'DIAS'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel19
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 607
          Top = 1
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DIFERENCA'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 663
          Top = 0
          Width = 54
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CORRIGIDO'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel13
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 439
          Top = 0
          Width = 79
          Height = 20
          AutoSize = False
          Color = 14869218
          DataField = 'ESPECIE'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel14
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText17: TRLDBText
          Left = 265
          Top = 1
          Width = 41
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Color = 14869218
          DataField = 'ID_PEDIDO'
          DataSource = Ds_filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Holder = RLLabel15
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 58
        Width = 718
        Height = 19
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand2BeforePrint
        object RLDBText6: TRLDBText
          Left = 499
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Color = clActiveCaption
          DataField = 'VALOR'
          DataSource = DS_Soma_Cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel18
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText15: TRLDBText
          Left = 607
          Top = 1
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Color = clActiveCaption
          DataField = 'DIFERENCA'
          DataSource = DS_Soma_Cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel4
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText16: TRLDBText
          Left = 663
          Top = 1
          Width = 54
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Color = clActiveCaption
          DataField = 'CORRIGIDO'
          DataSource = DS_Soma_Cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel13
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
    end
    object RLBand4: TRLBand
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 151
        Height = 18
        Align = faLeftMost
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itFullDate
        ParentFont = False
        Text = 'Relat'#243'rio emitido '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 151
        Top = 0
        Width = 53
        Height = 18
        Align = faLeftMost
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itHour
        ParentFont = False
        Text = 'as '
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 273
      Width = 718
      Height = 17
      BandType = btFooter
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
        Height = 16
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
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 88
      BandType = btSummary
      BeforePrint = RLBand5BeforePrint
      object RLLabel21: TRLLabel
        Left = 282
        Top = 8
        Width = 105
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = 10930928
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel22: TRLLabel
        Left = 282
        Top = 31
        Width = 105
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel28: TRLLabel
        Left = 284
        Top = 53
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel24: TRLLabel
        Left = 140
        Top = 8
        Width = 136
        Height = 16
        Caption = 'Vencendo / Em Atrazo'
      end
      object RLLabel25: TRLLabel
        Left = 218
        Top = 31
        Width = 58
        Height = 16
        Caption = 'A Vencer'
      end
      object RLLabel26: TRLLabel
        Left = 149
        Top = 53
        Width = 32
        Height = 16
        Caption = 'Total'
      end
      object RLLabel3: TRLLabel
        Left = 530
        Top = 8
        Width = 105
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = 10930928
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 402
        Top = 31
        Width = 105
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object RLLabel6: TRLLabel
        Left = 402
        Top = 53
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object RLLabel7: TRLLabel
        Left = 402
        Top = 8
        Width = 105
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = 10930928
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 128
    Top = 96
  end
  object sqlsoma: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 200
    Top = 112
  end
  object Percentual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 248
    Top = 112
  end
  object SQL_Juros: TSQLDataSet
    CommandText = 'select tipo_juros from config   where id_empresa = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 56
    Top = 112
  end
  object Query_Filtro: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select first 100 * from RELATORIO_TITULOS')
    Left = 376
    Top = 424
    object Query_FiltroEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object Query_FiltroVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object Query_FiltroLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
      Origin = 'LIQUIDACAO'
    end
    object Query_FiltroDC: TSmallintField
      FieldName = 'DC'
      Origin = 'DC'
    end
    object Query_FiltroC_CUSTO: TIntegerField
      FieldName = 'C_CUSTO'
      Origin = 'C_CUSTO'
    end
    object Query_FiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_FiltroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 149
    end
    object Query_FiltroN_DOC: TStringField
      FieldName = 'N_DOC'
      Origin = 'N_DOC'
    end
    object Query_FiltroPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object Query_FiltroVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_FiltroDIAS: TSingleField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object Query_FiltroDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      Origin = 'DIFERENCA'
      currency = True
    end
    object Query_FiltroCORRIGIDO: TFloatField
      FieldName = 'CORRIGIDO'
      Origin = 'CORRIGIDO'
      currency = True
    end
    object Query_FiltroID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
    object Query_FiltroID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
      Origin = 'ID_REGIAO'
    end
    object Query_FiltroID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object Query_FiltroSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object Query_FiltroCLASSIFICACAO: TSmallintField
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
    end
    object Query_FiltroPAGO: TBCDField
      FieldName = 'PAGO'
      Origin = 'PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_FiltroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object Query_FiltroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object Query_FiltroFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Origin = 'FONE_RES'
      Size = 18
    end
    object Query_FiltroCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object Query_FiltroCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 82
    end
    object Query_FiltroID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
    end
    object Query_FiltroESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 50
    end
    object Query_FiltroID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
  end
  object Ds_filtro: TDataSource
    DataSet = Query_Filtro
    Left = 384
    Top = 480
  end
  object Query_Soma_Cliente: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(valor)as valor,'
      '       sum(diferenca)as diferenca,'
      '       sum(corrigido)as corrigido,'
      '       sum(pago)as pago'
      '        from RELATORIO_TITULOS'
      '        where id_conta =:i')
    Left = 464
    Top = 424
    ParamData = <
      item
        Name = 'I'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_Soma_ClienteVALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_Soma_ClienteDIFERENCA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DIFERENCA'
      Origin = 'DIFERENCA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object Query_Soma_ClienteCORRIGIDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CORRIGIDO'
      Origin = 'CORRIGIDO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object Query_Soma_ClientePAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGO'
      Origin = 'PAGO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Soma_Cliente: TDataSource
    DataSet = Query_Soma_Cliente
    Left = 472
    Top = 480
  end
end
