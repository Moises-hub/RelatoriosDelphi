object Frm_Estoque: TFrm_Estoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Frm_Estoque'
  ClientHeight = 441
  ClientWidth = 527
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBTreeList1: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 657
    Height = 401
    Align = alCustom
    Bands = <
      item
        Expandable = tlbeExpandable
      end>
    DataController.DataSource = DS_Categoria
    DataController.ParentField = 'PAI'
    DataController.KeyField = 'ID_CATEGORIA'
    LookAndFeel.Kind = lfFlat
    Navigator.Buttons.CustomButtons = <>
    Navigator.Buttons.Append.Visible = False
    OptionsData.MultiThreadedSorting = bTrue
    OptionsView.Headers = False
    RootValue = -1
    TabOrder = 0
    object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
      Caption.MultiLine = True
      Caption.ShowEndEllipsis = False
      DataBinding.FieldName = 'SOMA'
      Width = 500
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object Button1: TButton
    Left = 392
    Top = 407
    Width = 107
    Height = 29
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SQL_Categoria: TSQLDataSet
    CommandText = 
      'select categorias.descricao||'#39'..................................' +
      '...'#39'|| cast(sum(produtos.estoque) as decimal(14,2)) as soma,cate' +
      'gorias.pai,categorias.id_categoria from categorias'#13#10'left join pr' +
      'odutos on(produtos.id_categoria = categorias.id_categoria)'#13#10'grou' +
      'p by categorias.pai,categorias.id_categoria,categorias.descricao' +
      #13#10'order by categorias.pai'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 40
    Top = 120
  end
  object Prov_Categoria: TDataSetProvider
    DataSet = SQL_Categoria
    Left = 48
    Top = 56
  end
  object DS_Categoria: TDataSource
    DataSet = Cli_Categoria
    Left = 40
    Top = 248
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Relat'#243'rio de Estoque por Categoria'
    PreviewOptions.VisibleOptions = [pvoPageBackground, pvoPageSetup, pvoPreferences, pvoPrint, pvoReportDesign, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = 'Relat'#243'rio de Estoque por Categoria'
    Version = 0
    Left = 136
    Top = 136
    object dxComponentPrinter1Link1: TcxDBTreeListReportLink
      Active = True
      Component = cxDBTreeList1
      PageNumberFormat = pnfNumeral
      PDFExportOptions.Author = 'Mois'#233's Nogueira'
      PDFExportOptions.DefaultFileName = 'Relat'#243'rio de Estoque por Categoria'
      PDFExportOptions.DefaultFileNameAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.CenterTitle.Strings = (
        'Coliseu Sistemas')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -12
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page #]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        '')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clGray
      PrinterPage.PageHeader.Font.Height = -12
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44893.702323854170000000
      ReportTitle.Text = 'Relat'#243'rio de Estoque por Categoria'
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsExpanding.AutoExpandNodes = True
      OptionsExpanding.ExplicitlyExpandNodes = True
      OptionsFormatting.NodeSeparatorColor = clBtnHighlight
      OptionsRefinements.FlatCheckMarks = False
      OptionsRefinements.TransparentGraphics = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Headers = False
      OptionsView.BandHeaders = False
      OptionsView.Borders = False
      OptionsView.ExpandButtons = False
      SupportedCustomDraw = True
      BuiltInReportLink = True
    end
  end
  object dxPrintDialog1: TdxPrintDialog
    Left = 136
    Top = 64
  end
  object Cli_Categoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Categoria'
    Left = 40
    Top = 184
  end
end
