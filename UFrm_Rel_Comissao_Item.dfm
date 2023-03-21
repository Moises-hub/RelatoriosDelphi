object Frm_Rel_Comissao_Item: TFrm_Rel_Comissao_Item
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Comiss'#227'o por item Margem'
  ClientHeight = 219
  ClientWidth = 591
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 219
    Align = alClient
    BorderOuter = fsNone
    Color = clGradientActiveCaption
    GradientColorStart = 16776176
    GradientColorStop = clWhite
    TabOrder = 0
    VisualStyle = vsClassic
    ExplicitWidth = 592
    ExplicitHeight = 230
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
      Top = 37
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
      Top = 37
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
      Left = 327
      Top = 150
      Width = 107
      Height = 35
      Cursor = crHandPoint
      Caption = 'Filtrar / Visualizar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object RLReport1: TRLReport
      Left = 121
      Top = 228
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand6: TRLBand
        Left = 39
        Top = 58
        Width = 716
        Height = 38
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel11: TRLLabel
          Left = 273
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
          Width = 716
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
        Left = 39
        Top = 96
        Width = 716
        Height = 113
        Borders.Sides = sdAll
        DataFields = 'VENDEDOR'
        BeforePrint = RLGroup1BeforePrint
        object RLBand1: TRLBand
          Left = 1
          Top = 1
          Width = 714
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
            DataSource = DataSource1
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
            Width = 714
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
              Left = 633
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
          Width = 714
          Height = 15
          object RLDBText2: TRLDBText
            Left = 63
            Top = 0
            Width = 206
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'PRODUTO'
            DataSource = DataSource1
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
            DataSource = DataSource1
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
            DataSource = DataSource1
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
            DataSource = DataSource1
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
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel28
            ParentFont = False
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 494
            Top = -1
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DIFERENCA'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel7
            ParentFont = False
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 570
            Top = -1
            Width = 65
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'COMISSAO_POR'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel14
            ParentFont = False
            Text = ''
          end
          object RLDBText10: TRLDBText
            Left = 633
            Top = -1
            Width = 81
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'COMISSAO'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Holder = RLLabel15
            ParentFont = False
            Text = ''
          end
        end
        object RLBand3: TRLBand
          Left = 1
          Top = 94
          Width = 714
          Height = 16
          BandType = btFooter
        end
        object RLBand7: TRLBand
          Left = 1
          Top = 65
          Width = 714
          Height = 29
          BandType = btSummary
          object RLLabel8: TRLLabel
            Left = 136
            Top = 7
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL VENDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 326
            Top = 6
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL CUSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 512
            Top = 7
            Width = 98
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL COMISS'#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 224
            Top = 7
            Width = 58
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 418
            Top = 7
            Width = 58
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 616
            Top = 7
            Width = 76
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand5: TRLBand
        Left = 39
        Top = 39
        Width = 716
        Height = 19
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLSystemInfo3: TRLSystemInfo
          Left = 634
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
        Left = 39
        Top = 209
        Width = 716
        Height = 91
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand4BeforePrint
        object RLLabel16: TRLLabel
          Left = 515
          Top = 22
          Width = 86
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL VENDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 515
          Top = 42
          Width = 86
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL CUSTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 452
          Top = 64
          Width = 149
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL COMISS'#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 606
          Top = 19
          Width = 111
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Color = clHotLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel21: TRLLabel
          Left = 606
          Top = 40
          Width = 111
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Color = clHotLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel22: TRLLabel
          Left = 606
          Top = 62
          Width = 111
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Color = clGradientActiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
    end
    object Memo1: TMemo
      Left = 585
      Top = 0
      Width = 6
      Height = 219
      Align = alRight
      TabOrder = 6
      Visible = False
      ExplicitLeft = 586
      ExplicitHeight = 230
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 272
      Top = 54
      Width = 151
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 103
      Top = 54
      Width = 155
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 440
      Top = 42
      Width = 126
      Height = 71
      Caption = 'Filtrar por Data de'
      GroupStyle = gsStandard
      ItemIndex = 1
      Items.Strings = (
        'Faturamento'
        'Emiss'#227'o')
      LightTextStyle = True
      TabOrder = 7
      Transparent = True
      VisualStyle = vsGradient
    end
    object CheckBox1: TCheckBox
      Left = 440
      Top = 127
      Width = 118
      Height = 17
      Caption = 'Mostrar Custo'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        '                           select REL_COMICAO_MARGEM.valor_custo' +
        ' as custo,'
      
        '                            REL_COMICAO_MARGEM.valor_desconto as' +
        ' desconto,'
      '                           REL_COMICAO_MARGEM.QTDE as qnt, '
      
        '                           REL_COMICAO_MARGEM.valor_total as tot' +
        'al, '
      
        '                           REL_COMICAO_MARGEM.diferenca as difer' +
        'enca, '
      
        '                           REL_COMICAO_MARGEM.percentual as perc' +
        'entual, '
      
        '                           cast(REL_COMICAO_MARGEM.MARGEM as dec' +
        'imal(15,2)) as margem, '
      '                           REL_COMICAO_MARGEM.vendedor, '
      '                           REL_COMICAO_MARGEM.id_vendedor, '
      '                           REL_COMICAO_MARGEM.id_produto, '
      '                           REL_COMICAO_MARGEM.produto,'
      '                           estoque.comissao as comissao_por,'
      
        '                            (REL_COMICAO_MARGEM.diferenca * (est' +
        'oque.comissao/100))AS COMISSAO'
      '                            from '
      '                             REL_COMICAO_MARGEM '
      
        '                            left join funcionarios on(funcionari' +
        'os.id_funcionario = REL_COMICAO_MARGEM.id_vendedor) '
      
        '                            LEFT JOIN estoque ON ESTOQUE.id_pedi' +
        'do = REL_COMICAO_MARGEM.id_pedido and  estoque.id_produto = REL_' +
        'COMICAO_MARGEM.id_produto AND estoque.id_funcionario = rel_comic' +
        'ao_margem.id_vendedor')
    Left = 104
    Top = 160
    object FDQuery1CUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'VALOR_CUSTO'
      currency = True
    end
    object FDQuery1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'VALOR_DESCONTO'
    end
    object FDQuery1QNT: TFloatField
      FieldName = 'QNT'
      Origin = 'QTDE'
    end
    object FDQuery1TOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
    end
    object FDQuery1DIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      Origin = 'DIFERENCA'
      currency = True
    end
    object FDQuery1PERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
    end
    object FDQuery1MARGEM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery1VENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object FDQuery1ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object FDQuery1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDQuery1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object FDQuery1COMISSAO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object FDQuery1COMISSAO_POR: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_POR'
      Origin = 'COMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1id_ped: TIntegerField
      FieldName = 'id_ped'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 104
    Top = 216
  end
end
