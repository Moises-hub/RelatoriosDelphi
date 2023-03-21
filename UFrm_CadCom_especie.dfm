object Frm_CadCom_especie: TFrm_CadCom_especie
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Comiss'#227'o por Esp'#233'cie'
  ClientHeight = 479
  ClientWidth = 576
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
  object RzPanel2: TRzPanel
    Left = 0
    Top = 38
    Width = 576
    Height = 251
    Align = alTop
    BorderOuter = fsNone
    Color = clBtnHighlight
    GradientColorStyle = gcsMSOffice
    TabOrder = 0
    ExplicitWidth = 521
    object Label2: TLabel
      Left = 105
      Top = 113
      Width = 72
      Height = 36
      Caption = 'Esp'#233'cie de'#13'Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 89
      Top = 216
      Width = 87
      Height = 18
      Caption = 'COMISS'#195'O(%):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 128
      Top = 57
      Width = 49
      Height = 18
      Caption = 'Minimo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 125
      Top = 88
      Width = 51
      Height = 18
      Caption = 'M'#225'ximo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 105
      Top = 155
      Width = 72
      Height = 36
      Caption = 'Forma de'#13'Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 144
      Top = 6
      Width = 32
      Height = 18
      Caption = 'Tipo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 336
      Top = 6
      Width = 161
      Height = 97
      Proportional = True
    end
    object DBEdit1: TDBEdit
      Left = 185
      Top = 213
      Width = 101
      Height = 28
      DataField = 'PORCENTAGEM'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 185
      Top = 128
      Width = 233
      Height = 22
      DataField = 'ID_ESPECIE'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Style = csOwnerDrawFixed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 185
      Top = 52
      Width = 121
      Height = 24
      DataField = 'VMIN'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 185
      Top = 86
      Width = 121
      Height = 24
      DataField = 'VMAX'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RzDBComboBox2: TRzDBComboBox
      Left = 185
      Top = 170
      Width = 233
      Height = 22
      DataField = 'ID_FORMAPAGA'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Style = csOwnerDrawFixed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object RzDBComboBox3: TRzDBComboBox
      Left = 185
      Top = 6
      Width = 145
      Height = 22
      DataField = 'TIPO'
      DataSource = DM.DS_CD_CAD_COMISSAO
      Style = csOwnerDrawFixed
      TabOrder = 5
      OnChange = RzDBComboBox3Select
      OnSelect = RzDBComboBox3Select
      Items.Strings = (
        'Comiss'#227'o por Venda'
        'Comiss'#227'o por Margem'
        'Comiss'#227'o por M'#233'todo de Paga.')
      Values.Strings = (
        '1'
        '2'
        '3')
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 38
    Align = alTop
    BorderOuter = fsNone
    BorderShadow = clAppWorkSpace
    Color = clWhite
    GradientColorStyle = gcsMSOffice
    TabOrder = 1
    VisualStyle = vsGradient
    ExplicitLeft = -111
    ExplicitWidth = 503
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Hint = 'Novo Registro'
      Align = alLeft
      ImageIndex = 6
      Images = FrmPrincipal.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 38
      Top = 0
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Hint = 'Alterar Registro'
      Align = alLeft
      ImageIndex = 234
      Images = FrmPrincipal.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 20
    end
    object Button3: TButton
      Left = 76
      Top = 0
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Hint = 'Salvar Altera'#231#245'es'
      Align = alLeft
      ImageIndex = 322
      Images = FrmPrincipal.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = 40
    end
    object Button4: TButton
      Left = 114
      Top = 0
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Hint = 'Cancelar as Altera'#231#245'es'
      Align = alLeft
      ImageIndex = 2
      Images = FrmPrincipal.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button4Click
      ExplicitLeft = 80
    end
    object Button5: TButton
      Left = 152
      Top = 0
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Hint = 'Excluir Registro'
      Align = alLeft
      ImageIndex = 107
      Images = FrmPrincipal.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button5Click
      ExplicitLeft = 196
    end
    object Button7: TButton
      Left = 538
      Top = 0
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Hint = 'Sair'
      Align = alRight
      ImageIndex = 115
      Images = FrmPrincipal.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button7Click
      ExplicitLeft = 503
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 289
    Width = 576
    Height = 167
    Align = alClient
    DataSource = DM.DS_CD_CAD_COMISSAO
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 363
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORCENTAGEM'
        Title.Caption = 'COMISS'#195'O'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = False
      end>
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 456
    Width = 576
    Height = 23
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 430
    object RzPanel4: TRzPanel
      Left = 328
      Top = 2
      Width = 163
      Height = 19
      Align = alLeft
      BorderOuter = fsLowered
      Caption = 'Comiss'#227'o por M'#233'todo de Pag.'
      Color = clMoneyGreen
      TabOrder = 0
      ExplicitLeft = 326
    end
    object RzPanel5: TRzPanel
      Left = 165
      Top = 2
      Width = 163
      Height = 19
      Align = alLeft
      BorderOuter = fsLowered
      Caption = 'Comiss'#227'o por Margem'
      Color = clInactiveCaption
      TabOrder = 1
      ExplicitLeft = 164
    end
    object RzPanel6: TRzPanel
      Left = 2
      Top = 2
      Width = 163
      Height = 19
      Align = alLeft
      BorderOuter = fsLowered
      Caption = 'Comiss'#227'o por Venda'
      Color = clActiveCaption
      TabOrder = 2
    end
  end
end
