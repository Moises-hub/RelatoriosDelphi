unit UFrm_RelRankinProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinsDefaultPainters, System.ImageList, Vcl.ImgList, RzButton,
  Vcl.StdCtrls, RzLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.ExtCtrls, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.TeeProcs,
  dxGDIPlusClasses, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFrm_RelRankinProd = class(TForm)
    RzPanel1: TRzPanel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    FDQuery1: TFDQuery;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1PRODUTO: TStringField;
    FDQuery1QTDE: TFloatField;
    FDQuery1VALOR_TOTAL: TBCDField;
    FDQuery1ESTOQUE: TSingleField;
    DataSource1: TDataSource;
    RLBand6: TRLBand;
    RLImage2: TRLImage;
    RLLabel11: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelRankinProd: TFrm_RelRankinProd;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelRankinProd.RzBitBtn1Click(Sender: TObject);
begin
  FDQuery1.Close;
  fdquery1.Params[0].AsDate:=cxDateEdit1.Date;
  fdquery1.Params[1].AsDate:=cxDateEdit2.Date;
  fdquery1.Open;
  RLReport1.PreviewModal;
end;

procedure TFrm_RelRankinProd.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

end.
