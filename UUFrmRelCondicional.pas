unit UUFrmRelCondicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, RzCmboBx, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, Vcl.Mask, RzEdit, IBX.IBCustomDataSet,
  IBX.IBQuery, RzDBGrid, RLReport, Vcl.Buttons;

type
  TUFrmRelCondicional = class(TForm)
    RzPanel1: TRzPanel;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    ClientDataSet1: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource2: TDataSource;
    Button1: TButton;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    clientes: TSQLDataSet;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    C: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLDBText6: TRLDBText;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UFrmRelCondicional: TUFrmRelCondicional;

implementation

{$R *.dfm}

uses UDM;

procedure TUFrmRelCondicional.Button1Click(Sender: TObject);
begin

 ClientDataSet1.CLOSE;
ClientDataSet1.CommandText:='select '+
                            'pedido_itens.id_produto,'+
                            'pedido_itens.id_pedido, '+
                            'pedido_itens.codigo_barra, '+
                            'pedido_itens.qtde, '+
                            'pedido_itens.valor_total, '+
                            'pedido_itens.VALOR_UNITARIO, '+
                            'produtos.descricao, '+
                            'produto_itens.tamanho, '+
                            'pedidos.pedido, '+
                            'pedidos.data_hora, '+
                            'pedidos.valor_pedido, '+
                            'pedidos.id_pedido, '+
                            'clientes.nome '+
                            'from pedido_itens '+
                            'left join pedidos  on (pedidos.id_pedido = pedido_itens.id_pedido) '+
                            'left join clientes on (clientes.id_cliente = pedidos.id_cliente) '+
                            'left join produtos on (produtos.id_produto = pedido_itens.id_produto) '+
                            'left join produto_itens on (produto_itens.codigo_barra = pedido_itens.codigo_barra) '+
                            'where (cast(pedidos.data_hora as date) >=:ini) and (cast(pedidos.data_hora as date) <=:fim) and pedidos.status =9 AND '+
                            'PEDIDO_ITENS.CONDICIONAL = 1 and clientes.nome ='''+RzComboBox1.Text+'''';
                            ClientDataSet1.Params[0].AsDate:=RzDateTimeEdit1.Date;
                            ClientDataSet1.Params[1].AsDate:=RzDateTimeEdit2.Date;






ClientDataSet1.open;

    RLReport1.PreviewModal;


end;

procedure TUFrmRelCondicional.FormCreate(Sender: TObject);
begin
        clientes.Open;
        clientes.First;
        while not clientes.Eof do
           begin
             RzComboBox1.Items.Add(clientes.FieldByName('NOME').Text);
             clientes.Next;
           end;

    RzDateTimeEdit1.AsDateTime := date;
    RzDateTimeEdit2.AsDateTime := date;

    RzComboBox1.ItemIndex:= 0;
end;

procedure TUFrmRelCondicional.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     RLLabel12.Caption:='Relatório de Condicionais Cliente '+RzComboBox1.Text+' no Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
end;

procedure TUFrmRelCondicional.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    RLLabel7.Caption:=FloatToStrF(ClientDataSet1.FieldByName('valor_unitario').ASFLOAT,ffCurrency,15,2);
    RLLabel6.Caption:=FloatToStrF(ClientDataSet1.FieldByName('valor_total').ASFLOAT,ffCurrency,15,2);
end;

procedure TUFrmRelCondicional.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Relatório de Condicionais cancelada em determinado período filtrada por data de emissão e cliente / Relatório ordenado por Pedido / Relatório Impresso em folha papel A4',mtInformation,[mbOK],0);
end;

end.
