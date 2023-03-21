object Frm_Rel_Forma_Pagamento: TFrm_Rel_Forma_Pagamento
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Pagamento'
  ClientHeight = 529
  ClientWidth = 1213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1213
    529)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1213
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      1213
      129)
    object Label1: TLabel
      Left = 43
      Top = 27
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
      Left = 236
      Top = 27
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
    object Label3: TLabel
      Left = 434
      Top = 22
      Width = 65
      Height = 26
      Alignment = taRightJustify
      Caption = 'Esp'#233'cie de '#13'Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 688
      Top = 21
      Width = 65
      Height = 26
      Alignment = taRightJustify
      Caption = 'Forma de '#13'Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 420
      Top = 65
      Width = 83
      Height = 13
      Caption = 'Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 113
      Top = 24
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 294
      Top = 24
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzComboBox1: TRzComboBox
      Left = 505
      Top = 24
      Width = 176
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
    end
    object RzComboBox2: TRzComboBox
      Left = 753
      Top = 22
      Width = 208
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
    end
    object RzComboBox3: TRzComboBox
      Left = 505
      Top = 62
      Width = 456
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 113
      Top = 51
      Width = 302
      Height = 41
      Caption = 'Filtrar por'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Data de Emiss'#227'o'
        'Data de Vencimento')
      TabOrder = 5
    end
    object RzBitBtn1: TRzBitBtn
      Left = 976
      Top = 44
      Cursor = crHandPoint
      Caption = 'Filtrar'
      HotTrack = True
      TabOrder = 6
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 974
      Top = 92
      Width = 107
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Enviar para Excel'
      HotTrack = True
      TabOrder = 7
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
    object RzBitBtn3: TRzBitBtn
      Left = 1087
      Top = 92
      Width = 107
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      HotTrack = True
      TabOrder = 8
      ThemeAware = False
      OnClick = RzBitBtn3Click
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 132
    Width = 1207
    Height = 394
    Align = alClient
    BorderStyle = bsNone
    DataSource = DS_Query_Forma
    DrawingStyle = gdsClassic
    FixedColor = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clHighlightText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FILIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONSAVEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPECIE_DE_PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_DE_PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_DOCUMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V_PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 304
    Width = 1205
    Height = 33
    Anchors = [akLeft, akTop, akRight]
    BarColor = clGreen
    BackgroundColor = clWhite
    TabOrder = 2
    Visible = False
  end
  object Query_Forma_Paga: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM REL_FORMA_PAGAMENTO')
    Left = 744
    Top = 184
    object Query_Forma_PagaFILIAL: TStringField
      FieldName = 'FILIAL'
      Origin = 'FILIAL'
      Size = 50
    end
    object Query_Forma_PagaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object Query_Forma_PagaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_Forma_PagaNFE: TStringField
      FieldName = 'NFE'
      Origin = 'NFE'
      Size = 18
    end
    object Query_Forma_PagaEMISSAO: TDateField
      DisplayLabel = 'EMISS'#195'O'
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object Query_Forma_PagaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object Query_Forma_PagaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_Forma_PagaUSUARIO: TStringField
      DisplayLabel = 'USU'#193'RIO'
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object Query_Forma_PagaN_PARCELA: TIntegerField
      DisplayLabel = 'N'#186' PARCELA'
      FieldName = 'N_PARCELA'
      Origin = 'N_PARCELA'
    end
    object Query_Forma_PagaESPECIE_DE_PAGAMENTO: TStringField
      DisplayLabel = 'ESP'#201'CIE_DE_PAGAMENTO'
      FieldName = 'ESPECIE_DE_PAGAMENTO'
      Origin = 'ESPECIE_DE_PAGAMENTO'
      Size = 50
    end
    object Query_Forma_PagaFORMA_DE_PAGAMENTO: TStringField
      FieldName = 'FORMA_DE_PAGAMENTO'
      Origin = 'FORMA_DE_PAGAMENTO'
      Size = 50
    end
    object Query_Forma_PagaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Origin = 'N_DOCUMENTO'
    end
    object Query_Forma_PagaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 7
    end
    object Query_Forma_PagaV_PARCELA: TBCDField
      DisplayLabel = 'VALOR DA PARCELA'
      FieldName = 'V_PARCELA'
      Origin = 'V_PARCELA'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_Forma_PagaVALOR_TOTAL: TBCDField
      DisplayLabel = 'VALOR TOTAL'
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Query_Forma: TDataSource
    DataSet = Query_Forma_Paga
    Left = 520
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    Filter = 'xlsx|*.xlsx|xls|*.xls'
    Left = 748
    Top = 27
  end
end
