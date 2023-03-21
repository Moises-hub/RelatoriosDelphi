unit UFrm_Cond_Marca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.SqlExpr, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, RLReport, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, RzEdit, RzCmboBx, Vcl.Buttons, RzPanel;

type
  TFrm_Cond_Marca = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    RzComboBox1: TRzComboBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    IBQuery1: TIBQuery;
    Marca: TSQLDataSet;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLB: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    IBQuery1PEDIDO: TIntegerField;
    IBQuery1MARCA: TIBStringField;
    IBQuery1VALOR_TOTAL: TIBBCDField;
    IBQuery1DESCRICAO: TIBStringField;
    IBQuery1VENDEDOR: TIBStringField;
    IBQuery1CLIENTE: TIBStringField;
    RLDBText1: TRLDBText;
    DataSource1: TDataSource;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    MarcaCOALESCE: TStringField;
    RLBand5: TRLBand;
    RLLabel8: TRLLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLBBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    procedure todas;
    procedure selecionada;
    var
    soma : real;
  end;

var
  Frm_Cond_Marca: TFrm_Cond_Marca;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Cond_Marca.Button1Click(Sender: TObject);
begin
if RzComboBox1.ItemIndex = 0 then
   todas
   else
   selecionada;


 RLReport1.PreviewModal;


end;

procedure TFrm_Cond_Marca.FormShow(Sender: TObject);
begin
   Marca.Open;
   RzComboBox1.Items.Clear;

   RzComboBox1.Items.Add('TODAS');

   MARCA.First;
   while NOT MARCA.Eof do
      BEGIN
        RzComboBox1.Items.Add(MARCA.FieldByName('COALESCE').AsString);
        MARCA.NEXT;
      END;

      RzComboBox1.ItemIndex := 0;
      RzDateTimeEdit1.Date:=date-30;
      RzDateTimeEdit2.Date:=date;
end;

procedure TFrm_Cond_Marca.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
soma:=soma + IBQuery1VALOR_TOTAL.AsFloat;
RLLabel8.Caption:='TOTAL.....'+FloatToStrF(soma,ffCurrency,15,2);
end;

procedure TFrm_Cond_Marca.RLBBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
soma := 0;
end;

procedure TFrm_Cond_Marca.selecionada;
begin
     ibquery1.close;
     ibquery1.SQL.Text:='select ' +
                        'PEDIDOS.id_pedido as pedido, ' +
                        'COALESCE(produtos.marca, ''SEM MARCA'') AS MARCA,' +
                        'pedido_itens.valor_total, ' +
                        'produtos.descricao, ' +
                        'funcionarios.nome as vendedor, ' +
                        'clientes.nome as cliente  ' +
                        'from pedido_itens ' +
                        'left join pedidos  on (pedidos.id_pedido = pedido_itens.id_pedido)  ' +
                        'left join clientes on (clientes.id_cliente = pedidos.id_cliente) ' +
                        'left join funcionarios on(funcionarios.id_funcionario = pedidos.id_vendedor)  ' +
                        'left join produtos on (produtos.id_produto = pedido_itens.id_produto) ' +
                        'left join produto_itens on (produto_itens.codigo_barra = pedido_itens.codigo_barra) ' +
                        'where (cast(pedidos.data_hora as date) >=:ini) and (cast(pedidos.data_hora as date) <=:fim) and  ' +
                        '(PEDIDOS.status= 6) and (produtos.marca =:p)  ' +
                        'order by produtos.Marca,  PEDIDOS.id_pedido, produtos.descricao, funcionarios.nome,clientes.nome';

     ibquery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
     ibquery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
     ibquery1.Params[2].AsString:=RzComboBox1.Text;
     ibquery1.open;




end;

procedure TFrm_Cond_Marca.todas;
begin
         ibquery1.close;
     ibquery1.SQL.Text:='select ' +
                        'PEDIDOS.id_pedido as pedido, ' +
                        'COALESCE(produtos.marca, ''SEM MARCA'')AS MARCA, ' +
                        'pedido_itens.valor_total, ' +
                        'produtos.descricao, ' +
                        'funcionarios.nome as vendedor, ' +
                        'clientes.nome as cliente  ' +
                        'from pedido_itens ' +
                        'left join pedidos  on (pedidos.id_pedido = pedido_itens.id_pedido)  ' +
                        'left join clientes on (clientes.id_cliente = pedidos.id_cliente) ' +
                        'left join funcionarios on(funcionarios.id_funcionario = pedidos.id_vendedor)  ' +
                        'left join produtos on (produtos.id_produto = pedido_itens.id_produto) ' +
                        'left join produto_itens on (produto_itens.codigo_barra = pedido_itens.codigo_barra) ' +
                        'where (cast(pedidos.data_hora as date) >=:ini) and (cast(pedidos.data_hora as date) <=:fim) and  ' +
                        '(PEDIDOS.status= 6)  ' +
                        'order by produtos.Marca,  PEDIDOS.id_pedido, produtos.descricao, funcionarios.nome,clientes.nome';

     ibquery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
     ibquery1.Params[1].AsDate:=RzDateTimeEdit2.Date;

     ibquery1.open;
end;

end.
