unit UFrm_RelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ExtCtrls, RzPanel, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.DB, Data.SqlExpr, RLReport;

type
  TFrm_RelProdutos = class(TForm)
    RzPanel1: TRzPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    DS_Produtos: TSQLDataSet;
    Prov_Produtos: TDataSetProvider;
    CD_Produtos: TClientDataSet;
    DS_CD_Produtos: TDataSource;
    CD_ProdutosID_PRODUTO: TFMTBCDField;
    CD_ProdutosDESCRICAO: TStringField;
    CD_ProdutosUNIDADE: TStringField;
    CD_ProdutosESTOQUE: TSingleField;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    CD_ProdutosDATA_CADASTRO: TDateField;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    procedure Button1Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelProdutos: TFrm_RelProdutos;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelProdutos.Button1Click(Sender: TObject);
begin
CD_Produtos.Close;
DS_Produtos.Params[0].AsDate:=RzDateTimeEdit1.Date;
DS_Produtos.Params[1].AsDate:=RzDateTimeEdit2.Date;
CD_Produtos.Open;
RLLabel12.Caption:='Relatório de Estoque Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
RLReport1.PreviewModal;

end;

procedure TFrm_RelProdutos.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLBand2.Color = clWhite then
   rlband2.Color:=clsilver
   else
   rlband2.Color:=clwhite;
end;

end.
