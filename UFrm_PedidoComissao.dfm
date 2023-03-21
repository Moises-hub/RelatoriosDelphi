object Frm_PedidoComissao: TFrm_PedidoComissao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Comissao'
  ClientHeight = 227
  ClientWidth = 635
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
    Width = 635
    Height = 227
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 41
      Top = 95
      Width = 50
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 41
      Top = 118
      Width = 51
      Height = 26
      Caption = 'Empresa / Dpto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 271
      Top = 27
      Width = 48
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 103
      Top = 27
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 101
      Top = 92
      Width = 323
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object RzComboBox4: TRzComboBox
      Left = 102
      Top = 123
      Width = 322
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
    object Button1: TButton
      Left = 317
      Top = 150
      Width = 107
      Height = 35
      Cursor = crHandPoint
      Caption = 'Filtrar / Visualizar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object RLReport1: TRLReport
      Left = 211
      Top = 367
      Width = 794
      Height = 1123
      DataSource = DS_PosPedido
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      BeforePrint = RLReport1BeforePrint
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
          Left = 274
          Top = 1
          Width = 169
          Height = 16
          Align = faCenterTop
          Caption = 'COMISS'#195'O POR MARGEM'
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
        Height = 132
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
            Left = 78
            Top = 7
            Width = 633
            Height = 16
            AutoSize = False
            Color = 10930928
            DataField = 'VENDEDOR'
            DataSource = DS_PosPedido
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
              Left = 63
              Top = 1
              Width = 206
              Height = 17
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel3: TRLLabel
              Left = 268
              Top = 0
              Width = 58
              Height = 17
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
              Left = 325
              Top = 0
              Width = 87
              Height = 13
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
              Left = 411
              Top = 1
              Width = 83
              Height = 17
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
            object RLLabel7: TRLLabel
              Left = 494
              Top = 0
              Width = 76
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Margem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel14: TRLLabel
              Left = 570
              Top = 0
              Width = 65
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel15: TRLLabel
              Left = 635
              Top = 0
              Width = 81
              Height = 17
              Align = faRight
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Comiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel28: TRLLabel
              Left = 3
              Top = 0
              Width = 57
              Height = 17
              AutoSize = False
              Caption = 'ID'
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
            Left = 63
            Top = 0
            Width = 206
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DS_PosPedido
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
            Left = 268
            Top = 0
            Width = 58
            Height = 15
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            DataField = 'QNT'
            DataSource = DS_PosPedido
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
            Left = 325
            Top = 0
            Width = 87
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL'
            DataSource = DS_PosPedido
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
            Left = 411
            Top = 0
            Width = 83
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel5
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 3
            Top = 0
            Width = 57
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'ID_PRODUTO'
            DataSource = DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel28
            ParentFont = False
            Text = ''
          end
          object RLLabel9: TRLLabel
            Left = 570
            Top = 0
            Width = 65
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Holder = RLLabel14
          end
          object RLLabel10: TRLLabel
            Left = 635
            Top = 0
            Width = 81
            Height = 15
            Align = faLeft
            Alignment = taRightJustify
            AutoSize = False
            Holder = RLLabel15
          end
          object RLDBText8: TRLDBText
            Left = 494
            Top = -1
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DIFERENCA'
            DataSource = DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel7
            ParentFont = False
            Text = ''
          end
        end
        object RLBand3: TRLBand
          Left = 1
          Top = 91
          Width = 716
          Height = 16
          BandType = btFooter
        end
        object RLBand7: TRLBand
          Left = 1
          Top = 65
          Width = 716
          Height = 26
          BandType = btSummary
          BeforePrint = RLBand7BeforePrint
          object RLDBResult1: TRLDBResult
            Left = 411
            Top = 3
            Width = 83
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = DS_PosPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel5
            Info = riSum
            ParentFont = False
            Text = ''
          end
          object RLLabel8: TRLLabel
            Left = 325
            Top = 1
            Width = 86
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
          object RLLabel6: TRLLabel
            Left = 583
            Top = 3
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
        object RLSystemInfo1: TRLSystemInfo
          Left = 35
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
      object RLBand4: TRLBand
        Left = 38
        Top = 227
        Width = 718
        Height = 88
        BandType = btSummary
        Borders.Sides = sdAll
        Borders.Width = 2
        Color = clWhite
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand4BeforePrint
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
          Left = 463
          Top = 65
          Width = 114
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total de Comiss'#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel22: TRLLabel
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
        object RLDBResult3: TRLDBResult
          Left = 583
          Top = 6
          Width = 130
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QNT'
          DataSource = DS_PosPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult4: TRLDBResult
          Left = 583
          Top = 45
          Width = 130
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CUSTO'
          DataSource = DS_PosPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object Memo1: TMemo
      Left = 583
      Top = 0
      Width = 52
      Height = 227
      Align = alRight
      TabOrder = 6
      Visible = False
    end
    object RLReport2: TRLReport
      Left = 173
      Top = 510
      Width = 1123
      Height = 794
      DataSource = DS_Query_ComicaoLucro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      ShowExplosion = True
      Visible = False
      BeforePrint = RLReport2BeforePrint
      object RLBand8: TRLBand
        Left = 38
        Top = 57
        Width = 1047
        Height = 38
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel12: TRLLabel
          Left = 439
          Top = 1
          Width = 169
          Height = 16
          Align = faCenterTop
          Caption = 'COMISS'#195'O POR MARGEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 0
          Top = 19
          Width = 1047
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
      object RLGroup2: TRLGroup
        Left = 38
        Top = 95
        Width = 1047
        Height = 106
        Borders.Sides = sdAll
        DataFields = 'ID_VENDEDOR'
        BeforePrint = RLGroup2BeforePrint
        object RLBand9: TRLBand
          Left = 1
          Top = 1
          Width = 1045
          Height = 49
          BandType = btHeader
          object RLDBText9: TRLDBText
            Left = 78
            Top = 7
            Width = 633
            Height = 16
            AutoSize = False
            Color = 10930928
            DataField = 'VENDEDOR'
            DataSource = DS_Query_ComicaoLucro
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
          object RLPanel2: TRLPanel
            Left = 0
            Top = 32
            Width = 1045
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
            object RLLabel20: TRLLabel
              Left = 57
              Top = 0
              Width = 240
              Height = 17
              Align = faLeft
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel21: TRLLabel
              Left = 297
              Top = 0
              Width = 99
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
            object RLLabel24: TRLLabel
              Left = 396
              Top = 0
              Width = 92
              Height = 17
              Align = faLeft
              Alignment = taRightJustify
              Caption = 'V. Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel25: TRLLabel
              Left = 488
              Top = 0
              Width = 104
              Height = 17
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Caption = 'Custo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel30: TRLLabel
              Left = 728
              Top = 0
              Width = 92
              Height = 17
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Margem(%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel31: TRLLabel
              Left = 0
              Top = 0
              Width = 57
              Height = 17
              Align = faLeft
              AutoSize = False
              Caption = 'Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel29: TRLLabel
              Left = 592
              Top = 0
              Width = 136
              Height = 17
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Lucro / Prejuizo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel33: TRLLabel
              Left = 914
              Top = 0
              Width = 125
              Height = 17
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Comiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel27: TRLLabel
              Left = 820
              Top = 0
              Width = 94
              Height = 17
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Caption = 'Comiss'#227'o (%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
          end
          object RLLabel32: TRLLabel
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
        object RLBand10: TRLBand
          Left = 1
          Top = 50
          Width = 1045
          Height = 15
          object RLDBText10: TRLDBText
            Left = 57
            Top = 0
            Width = 240
            Height = 15
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            DataField = 'DESCRICAO'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel20
            ParentFont = False
            Text = ''
          end
          object RLDBText11: TRLDBText
            Left = 297
            Top = 0
            Width = 99
            Height = 15
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTDE'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel21
            ParentFont = False
            Text = ''
          end
          object RLDBText12: TRLDBText
            Left = 396
            Top = 0
            Width = 92
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTAL'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel24
            ParentFont = False
            Text = ''
          end
          object RLDBText13: TRLDBText
            Left = 488
            Top = 0
            Width = 104
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel25
            ParentFont = False
            Text = ''
          end
          object RLDBText14: TRLDBText
            Left = 0
            Top = 0
            Width = 57
            Height = 15
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            DataField = 'PEDIDO'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel31
            ParentFont = False
            Text = ''
          end
          object RLDBText17: TRLDBText
            Left = 592
            Top = -1
            Width = 136
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'LUCRO_PREJUIZO'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel29
            ParentFont = False
            Text = ''
          end
          object RLDBText15: TRLDBText
            Left = 728
            Top = 0
            Width = 92
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'MARGEM'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel30
            ParentFont = False
            Text = ''
          end
          object RLDBText18: TRLDBText
            Left = 914
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'COMICAO'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel33
            ParentFont = False
            Text = ''
          end
          object RLDBText19: TRLDBText
            Left = 820
            Top = 0
            Width = 94
            Height = 15
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            DataField = 'PERCENTUAL'
            DataSource = DS_Query_ComicaoLucro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel27
            ParentFont = False
            Text = ''
            Visible = False
          end
        end
        object RLBand11: TRLBand
          Left = 1
          Top = 91
          Width = 1045
          Height = 16
          BandType = btFooter
        end
        object RLBand12: TRLBand
          Left = 1
          Top = 65
          Width = 1045
          Height = 26
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText20: TRLDBText
            Left = 297
            Top = 4
            Width = 99
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'QNTD'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLDBText11
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText24: TRLDBText
            Left = 396
            Top = 4
            Width = 92
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTAL_VENDA'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLDBText12
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText25: TRLDBText
            Left = 488
            Top = 4
            Width = 104
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTAL_CUSTO'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLDBText13
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText26: TRLDBText
            Left = 592
            Top = 4
            Width = 136
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTAL_LUCROPREJU'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLDBText17
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText27: TRLDBText
            Left = 728
            Top = 4
            Width = 92
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTAL_MARGEM'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLDBText15
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText28: TRLDBText
            Left = 820
            Top = 4
            Width = 94
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'PERCENTUAL'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Holder = RLDBText19
            Layout = tlCenter
            ParentFont = False
            Text = ''
            Visible = False
          end
          object RLDBText29: TRLDBText
            Left = 914
            Top = 1
            Width = 125
            Height = 25
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'TOTAL_COMICAO'
            DataSource = DS_Query_Soma
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Holder = RLDBText18
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLBand13: TRLBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 19
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLSystemInfo2: TRLSystemInfo
          Left = 965
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
        object RLDBText16: TRLDBText
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
        object RLSystemInfo4: TRLSystemInfo
          Left = 35
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
      object RLBand14: TRLBand
        Left = 38
        Top = 201
        Width = 1047
        Height = 98
        BandType = btSummary
        Borders.Sides = sdAll
        Borders.Width = 2
        Color = clWhite
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand4BeforePrint
        object RLLabel37: TRLLabel
          Left = 694
          Top = 9
          Width = 200
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Quantidade de Itens Vendidos   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Transparent = False
        end
        object RLLabel38: TRLLabel
          Left = 694
          Top = 30
          Width = 200
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Valor total de Vendas   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Transparent = False
        end
        object RLLabel39: TRLLabel
          Left = 694
          Top = 66
          Width = 200
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'TOTAL COMI'#199#195'O   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Transparent = False
        end
        object RLLabel42: TRLLabel
          Left = 694
          Top = 52
          Width = 200
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Custo total dos Itens   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Transparent = False
        end
        object RLDBText21: TRLDBText
          Left = 896
          Top = 27
          Width = 147
          Height = 24
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TOTAL_VENDA'
          DataSource = DS_Query_Soma2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlBottom
          ParentFont = False
          Text = ''
        end
        object RLDBText22: TRLDBText
          Left = 896
          Top = 50
          Width = 147
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TOTAL_CUSTO'
          DataSource = DS_Query_Soma2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 896
          Top = 66
          Width = 147
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TOTAL_COMICAO'
          DataSource = DS_Query_Soma2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 895
          Top = 9
          Width = 148
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'QNTD'
          DataSource = DS_Query_Soma2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlBottom
          ParentFont = False
          Text = ''
        end
      end
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 273
      Top = 44
      Width = 151
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 103
      Top = 44
      Width = 155
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 440
      Top = 24
      Width = 126
      Height = 71
      Caption = 'Filtrar por Data de'
      GroupStyle = gsStandard
      ItemIndex = 1
      Items.Strings = (
        'Faturamento'
        'Emiss'#227'o')
      LightTextStyle = True
      TabOrder = 8
      Transparent = True
      VisualStyle = vsGradient
    end
    object CheckBox1: TCheckBox
      Left = 448
      Top = 171
      Width = 118
      Height = 17
      Caption = 'Mostrar Custo'
      TabOrder = 9
    end
    object RzRadioGroup2: TRzRadioGroup
      Left = 440
      Top = 101
      Width = 126
      Height = 64
      Caption = 'Tipo Relat'#243'rio'
      ItemIndex = 0
      Items.Strings = (
        'Margem de Lucro'
        'Lucro/Prejuizo')
      TabOrder = 10
    end
  end
  object Comissao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'vmi'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'vma'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 't'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select rel_cad_comicao.porcentagem from rel_cad_comicao'
      'inner join rel_comicao on(rel_comicao.id = rel_cad_comicao.id)'
      
        'where ((rel_cad_comicao.vmin <=:vmi) and (rel_cad_comicao.vmax >' +
        '=:vma))  and ( rel_comicao.id_funcionario =:t)'
      'and (rel_cad_comicao.tipo =2)')
    SQLConnection = DM.SQLConnection1
    Left = 711
    Top = 208
  end
  object Query_Pedido: TSQLDataSet
    CommandText = 
      'select sum(REL_IC_VENDAS5_DESC_ITEM.valor_custo)as custo,'#13#10'     ' +
      '  sum(REL_IC_VENDAS5_DESC_ITEM.valor_desconto)as desconto,'#13#10'    ' +
      '   sum(REL_IC_VENDAS5_DESC_ITEM.QTDE)as qnt,'#13#10'       sum(REL_IC_' +
      'VENDAS5_DESC_ITEM.valor_total)as total,'#13#10'       sum(REL_IC_VENDA' +
      'S5_DESC_ITEM.diferenca)as diferenca,'#13#10'       sum(REL_IC_VENDAS5_' +
      'DESC_ITEM.percentual)as percentual,'#13#10'       REL_IC_VENDAS5_DESC_' +
      'ITEM.vendedor,'#13#10'      rel_ic_vendas5_desc_item.id_produto,'#13#10'    ' +
      '  rel_ic_vendas5_desc_item.produto,'#13#10'     rel_ic_vendas5_desc_it' +
      'em.id_vendedor'#13#10'              from'#13#10'         REL_IC_VENDAS5_DESC' +
      '_ITEM'#13#10'        group by   rel_ic_vendas5_desc_item.id_vendedor, ' +
      'REL_IC_VENDAS5_DESC_ITEM.vendedor, rel_ic_vendas5_desc_item.prod' +
      'uto,rel_ic_vendas5_desc_item.id_produto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 176
    Top = 361
  end
  object CD_PosPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Pedido'
    Left = 134
    Top = 250
    object CD_PosPedidoCUSTO: TFloatField
      FieldName = 'CUSTO'
      currency = True
    end
    object CD_PosPedidoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object CD_PosPedidoQNT: TFloatField
      FieldName = 'QNT'
    end
    object CD_PosPedidoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 18
      Size = 4
    end
    object CD_PosPedidoDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      currency = True
    end
    object CD_PosPedidoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##.00%'
    end
    object CD_PosPedidoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object CD_PosPedidoID_PRODUTO: TFMTBCDField
      FieldName = 'ID_PRODUTO'
      Precision = 18
      Size = 0
    end
    object CD_PosPedidoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object CD_PosPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object CD_PosPedidoMARGEM: TFMTBCDField
      FieldName = 'MARGEM'
    end
  end
  object Prov_Pedido: TDataSetProvider
    DataSet = Query_Pedido
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 142
    Top = 402
  end
  object DS_PosPedido: TDataSource
    DataSet = CD_PosPedido
    Left = 232
    Top = 313
  end
  object Query_ComicaoLucro: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from rel_comicao_lucroprejuizo')
    Left = 864
    Top = 8
    object Query_ComicaoLucroPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_ComicaoLucroFATURAMENTO: TDateField
      FieldName = 'FATURAMENTO'
      Origin = 'FATURAMENTO'
    end
    object Query_ComicaoLucroVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object Query_ComicaoLucroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 72
    end
    object Query_ComicaoLucroQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object Query_ComicaoLucroTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object Query_ComicaoLucroCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      currency = True
    end
    object Query_ComicaoLucroPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object Query_ComicaoLucroCOMICAO: TBCDField
      FieldName = 'COMICAO'
      Origin = 'COMICAO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_ComicaoLucroMARGEM: TBCDField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Precision = 18
      Size = 2
    end
    object Query_ComicaoLucroEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object Query_ComicaoLucroID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object Query_ComicaoLucroID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object Query_ComicaoLucroLUCRO_PREJUIZO: TFloatField
      FieldName = 'LUCRO_PREJUIZO'
      Origin = 'LUCRO_PREJUIZO'
      currency = True
    end
  end
  object DS_Query_ComicaoLucro: TDataSource
    DataSet = Query_ComicaoLucro
    Left = 968
    Top = 16
  end
  object Query_Soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(QTDE) as qntd,'
      '       sum(total)as total_venda,'
      '       sum(custo)as total_custo,'
      '       sum(lucro_prejuizo)as total_lucropreju,'
      
        '       CAST((100-((sum(custo))*100)/(sum(total)))AS DECIMAL(15,2' +
        ')) as total_margem,'
      '       sum(percentual) as percentual,'
      '       sum(comicao) as total_comicao'
      '       from rel_comicao_lucroprejuizo')
    Left = 864
    Top = 77
    object Query_SomaQNTD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QNTD'
      Origin = 'QNTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_SomaTOTAL_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object Query_SomaTOTAL_CUSTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_CUSTO'
      Origin = 'TOTAL_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object Query_SomaTOTAL_LUCROPREJU: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_LUCROPREJU'
      Origin = 'TOTAL_LUCROPREJU'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object Query_SomaPERCENTUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Query_SomaTOTAL_COMICAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_COMICAO'
      Origin = 'TOTAL_COMICAO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_SomaTOTAL_MARGEM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_MARGEM'
      Origin = 'TOTAL_MARGEM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Query_Soma: TDataSource
    DataSet = Query_Soma
    Left = 944
    Top = 80
  end
  object Query_Soma2: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select sum(QTDE) as qntd,'
      '       sum(total)as total_venda,'
      '       sum(custo)as total_custo,'
      '       sum(lucro_prejuizo)as total_lucropreju,'
      '       sum(margem)as total_margem,'
      '       sum(percentual) as percentual,'
      '       sum(comicao) as total_comicao'
      '       from rel_comicao_lucroprejuizo')
    Left = 984
    Top = 341
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QNTD'
      Origin = 'QNTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object BCDField1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object FloatField2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_CUSTO'
      Origin = 'TOTAL_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object FloatField3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_LUCROPREJU'
      Origin = 'TOTAL_LUCROPREJU'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object BCDField2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_MARGEM'
      Origin = 'TOTAL_MARGEM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_COMICAO'
      Origin = 'TOTAL_COMICAO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Query_Soma2: TDataSource
    DataSet = Query_Soma2
    Left = 1064
    Top = 344
  end
end
