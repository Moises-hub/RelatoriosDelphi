unit UFrmNF_Produtor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, Vcl.ExtCtrls, RzPanel, Data.FMTBcd, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, RLReport;

type
  TFrmNF_Produtor = class(TForm)
    RzPanel1: TRzPanel;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF_Produtor: TFrmNF_Produtor;

implementation

{$R *.dfm}

uses UDM;

procedure TFrmNF_Produtor.Button1Click(Sender: TObject);
begin
ClientDataSet1.Close;
ClientDataSet1.CommandText:='SELECT (nota_fiscal.data_emissao)"EMISSÃO",  '+
                            '(nota_fiscal.hora)"HORA", '+
                            '(nota_fiscal.nota_fiscal)"Nº NF", '+
                            '(nota_fiscal.valor_produtos)"VALOR DOS PRODUTOS", '+
                            '(nota_fiscal.valor_total)"VALOR DA NF", '+
                            '(clientes.nome)"CLIENTE" '+
                            'FROM nota_fiscal '+
                            'left JOIN  CLIENTES ON(clientes.id_cliente = nota_fiscal.id_cliente) '+
                            'WHERE nfp_nf is not null and nota_fiscal.data_emissao >=:I and nota_fiscal.data_emissao <=:f AND nota_fiscal.status =1';


ClientDataSet1.Params[0].DataType:=ftDate;
ClientDataSet1.Params[1].DataType:=ftDate;


ClientDataSet1.Params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
ClientDataSet1.Params[1].AsDate:=RzDateTimeEdit2.AsDateTime;





ClientDataSet1.open;
RLReport1.PreviewModal;
end;

procedure TFrmNF_Produtor.FormShow(Sender: TObject);
begin
        RzDateTimeEdit1.AsDateTime:=DATE-8;
      RzDateTimeEdit2.AsDateTime:=DATE;
end;

procedure TFrmNF_Produtor.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    RLLabel5.Caption:=FloatToStrF(ClientDataSet1.FieldByName('VALOR DOS PRODUTOS').Value,FFCURRENCY,15,2);
    RLLabel9.Caption:=FloatToStrF(ClientDataSet1.FieldByName('VALOR DA NF').Value,FFCURRENCY,15,2);
end;

end.
