unit UFrm_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  RLReport, Vcl.StdCtrls, Datasnap.DBClient, Datasnap.Provider, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxInplaceContainer, cxTLData, cxDBTL, Vcl.ComCtrls,
  dxtree, dxdbtree, cxMaskEdit, dxmdaset, dxtrprds, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxClasses, dxPSCore,
  dxPScxCommon, dxPScxTLLnk, dxPrnDlg;

type
  TFrm_Estoque = class(TForm)
    SQL_Categoria: TSQLDataSet;
    Prov_Categoria: TDataSetProvider;
    DS_Categoria: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    dxComponentPrinter1Link1: TcxDBTreeListReportLink;
    dxPrintDialog1: TdxPrintDialog;
    Button1: TButton;
    Cli_Categoria: TClientDataSet;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Estoque: TFrm_Estoque;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Estoque.Button1Click(Sender: TObject);
begin
dxComponentPrinter1.Preview();
//cxDBTreeList1.StoreToIniFile();

//RLReport1.PreviewModal;
end;

procedure TFrm_Estoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Cli_Categoria.Close;
end;

procedure TFrm_Estoque.FormShow(Sender: TObject);
begin
Cli_Categoria.Open;

end;

procedure TFrm_Estoque.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin     {
if Cli_CategoriaPAI.AsInteger = Cli_CategoriaID_CATEGORIA.AsInteger then
   begin
   RLDBText1.Font.Style:=[fsBold];
   RLDBText2.Font.Style:=[fsBold];
   RLDBText1.Left:=15;
   end
   else
   begin
      RLDBText1.Font.Style:=[];
      RLDBText2.Font.Style:=[];
   RLDBText1.Left:=30;
   end;  }


end;

end.
