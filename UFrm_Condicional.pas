unit UFrm_Condicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, RLReport, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzCmboBx, Vcl.ExtCtrls, RzPanel, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, RLFilters, RLDraftFilter;

type
  TFrm_Condicional = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    RLReport1: TRLReport;
    vendedor: TSQLDataSet;
    RLGroup1: TRLGroup;
    IBQuery1: TIBQuery;
    IBQuery1ID_PRODUTO: TIntegerField;
    IBQuery1VALOR_TOTAL: TIBBCDField;
    IBQuery1DESCRICAO: TIBStringField;
    IBQuery1VENDEDOR: TIBStringField;
    IBQuery1CLIENTE: TIBStringField;
    DataSource1: TDataSource;
    ColorListBox1: TColorListBox;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText5: TRLDBText;
    IBQuery1PEDIDO: TIntegerField;
    RLBand6: TRLBand;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    SpeedButton1: TSpeedButton;
    IBQuery1ID_CLIENTE: TIntegerField;
    RLLabel2: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
 //   soma : real;
  end;

var
  Frm_Condicional: TFrm_Condicional;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_Condicional.Button1Click(Sender: TObject);
begin



          ibquery1.Close;
          ibquery1.Params[0].AsDate :=RzDateTimeEdit1.Date;
          ibquery1.Params[1].AsDate :=RzDateTimeEdit2.Date;
          ibquery1.Params[2].AsInteger :=StrToInt(RzComboBox1.Value);
          ibquery1.Open;
          RLLabel9.Caption:='Período de '+DateToStr(RzDateTimeEdit1.date)+' a '+DateToStr(RzDateTimeEdit2.date);
          RLReport1.PreviewModal;


end;

procedure TFrm_Condicional.Button2Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Params[0].AsDate :=RzDateTimeEdit1.Date;
ibquery1.Params[1].AsDate :=RzDateTimeEdit2.Date;
ibquery1.Params[2].AsInteger :=StrToInt(RzComboBox1.Value);
ibquery1.Open;
end;

procedure TFrm_Condicional.FormShow(Sender: TObject);

begin
RzComboBox1.Items.Clear;
RzComboBox1.Values.Clear;

vendedor.CommandText:='SELECT ID_FUNCIONARIO, NOME FROM FUNCIONARIOS WHERE  status =1 and tipo = 3';
vendedor.Open;
vendedor.First;
while not vendedor.Eof do
  begin
     RzComboBox1.items.Add(vendedor.FieldByName('NOME').AsString);
     RzComboBox1.Values.Add(vendedor.FieldByName('ID_FUNCIONARIO').AsString);
     vendedor.Next;
  end;
vendedor.close;
vendedor.CommandText:='SELECT razao_social, cnpj FROM empresa WHERE  id_empresa ='+IntToStr(FrmPrincipal.EMPRESA);
vendedor.Open;
RLLabel3.Caption:=vendedor.FieldByName('razao_social').AsString;
RLLabel4.Caption:=vendedor.FieldByName('cnpj').AsString;
vendedor.Close;


if FrmPrincipal.RELCOMISSAO = 'R' then
       begin
         RzComboBox1.Value:=IntToStr(FrmPrincipal.LOGIN);
         RzComboBox1.Enabled:=false;
       end;

RzDateTimeEdit1.Date:=date-30;
RzDateTimeEdit2.Date:=date;


end;

procedure TFrm_Condicional.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  begin
{       }



end;

procedure TFrm_Condicional.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//soma:=soma+IBQuery1VALOR_TOTAL.AsFloat;
  //RLLabel2.Caption:=FloatToStrF(soma,ffCurrency,15,2);
end;

procedure TFrm_Condicional.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
 var
  soma : TSQLDataSet;
  begin

   SOMA :=TSQLDATASET.Create(SELF);
   SOMA.SQLConnection:=DM.SQLConnection1;
   SOMA.close;
   SOMA.CommandText:='select ' +
                'SUM(pedido_itens.valor_total) AS VALOR_TOTAL, ' +
                'clientes.nome as cliente ' +
                'from pedido_itens ' +
                'left join pedidos  on (pedidos.id_pedido = pedido_itens.id_pedido)  ' +
                'left join clientes on (clientes.id_cliente = pedidos.id_cliente) ' +
                'left join funcionarios on(funcionarios.id_funcionario = pedidos.id_vendedor) ' +
                'left join produtos on (produtos.id_produto = pedido_itens.id_produto)  ' +
                'left join produto_itens on (produto_itens.codigo_barra = pedido_itens.codigo_barra)  ' +
                'where (cast(pedidos.data_hora as date) >=:ini) and (cast(pedidos.data_hora as date) <=:fim) and  ' +
                '(PEDIDOS.STATUS = 6)   AND (PEDIDOS.ID_VENDEDOR =:V) AND (PEDIDOS.ID_CLIENTE =:c) ' +
                'GROUP BY clientes.nome';


SOMA.Params[0].AsDate :=RzDateTimeEdit1.Date;
SOMA.Params[1].AsDate :=RzDateTimeEdit2.Date;
SOMA.Params[2].AsInteger :=StrToInt(RzComboBox1.Value);
SOMA.Params[3].AsInteger :=ibquery1id_cliente.asinteger;
SOMA.Open;

RLLabel2.Caption:='TOTAL....'+FloatToStrF(SOMA.FieldByName('valor_total').AsFloat,ffCurrency,15,2);

soma:=nil;
//soma:=0;
end;

procedure TFrm_Condicional.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    //RLLabel2.Caption:=
end;

procedure TFrm_Condicional.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Relatório produtos em condicional filtrado por vendedor e data de emissão/ agrupado por cliente / com impressão em impressoras de cupom!',mtInformation,[mbOK],0);
end;

end.
