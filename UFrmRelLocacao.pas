unit UFrmRelLocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Datasnap.Provider,
  Data.SqlExpr, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ExtCtrls, RzPanel, RzButton, RzCmboBx, Vcl.Grids, Vcl.DBGrids, RzDBGrid,
  RLReport;

type
  TFrmRelLocacao = class(TForm)
    RzPanel1: TRzPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    ClientDataSet1: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    DataSource1: TDataSource;
    RzButton1: TRzButton;
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
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    Label1: TLabel;
    procedure RzButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelLocacao: TFrmRelLocacao;

implementation

{$R *.dfm}

uses UDM;

procedure TFrmRelLocacao.FormShow(Sender: TObject);
begin
       RzDateTimeEdit1.Date:=date - 10;
       RzDateTimeEdit2.date:=date;
end;

procedure TFrmRelLocacao.RzButton1Click(Sender: TObject);
begin

                     ClientDataSet1.Close;
                     clientdataset1.CommandText:='select MOV_LOCACOES.data_hora, MOV_LOCACOES.data_vencimento, '+

                     'case '+
                    'when (MOV_LOCACOES.STATUS = 0) then cast(''EM ABERTO'' as varchar(10)) '+
                    'when (MOV_LOCACOES.STATUS = 1) then cast(''FINALIZADO'' as varchar(10)) '+
                    'when (MOV_LOCACOES.STATUS = 9) then cast(''CANCELADO'' as varchar(10)) '+
                    'end, '+

                    'pedidos.id_pedido, '+
                    'produtos.descricao, '+
                    'clientes.nome '+
                    'from MOV_LOCACOES '+

                    'left join pedidos on (pedidos.id_pedido = mov_locacoes.id_pedido) '+
                    'left join produtos on(produtos.id_produto = mov_locacoes.id_produto) '+
                    'left join clientes on(clientes.id_cliente = mov_locacoes.id_cliente)  ';

                    if RzComboBox1.ItemIndex = 0 then
                       begin
                       clientdataset1.CommandText:=clientdataset1.CommandText+
                       'where cast(MOV_LOCACOES.data_hora as date) >=:i and cast(MOV_LOCACOES.data_hora as date) <=:f and mov_locacoes.status =:s'
                       end
                       else
                       begin
                        clientdataset1.CommandText:=clientdataset1.CommandText+
                        'where cast(MOV_LOCACOES.data_vencimento as date) >=:i and cast(MOV_LOCACOES.data_vencimento as date) <=:f and mov_locacoes.status =:s';
                       end;

                        clientdataset1.CommandText:=clientdataset1.CommandText+' order by MOV_LOCACOES.data_hora';

                     ClientDataSet1.Params[0].DataType :=ftdate;
                     ClientDataSet1.Params[1].DataType :=ftdate;
                     ClientDataSet1.Params[2].DataType :=ftInteger;

                     ClientDataSet1.Params[0].AsDate:=RzDateTimeEdit1.Date;
                     ClientDataSet1.Params[1].AsDate:=RzDateTimeEdit2.Date;
                     ClientDataSet1.Params[2].value:=RzComboBox2.value;
                     ClientDataSet1.Execute;


                     ClientDataSet1.Open;
                     RLReport1.PreviewModal;

end;

end.
