unit UFrm_Pedidos_formadepaga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzCmboBx, RLReport, Vcl.DBCtrls, RzDBCmbo;

type
  TFrm_Pedidos_formadepaga = class(TForm)
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzButton1: TRzButton;
    Query_Filtro: TFDQuery;
    Query_FiltroID_PEDIDO: TIntegerField;
    Query_FiltroNOME: TStringField;
    Query_FiltroPARCELA: TIntegerField;
    Query_FiltroVALOR: TBCDField;
    Query_FiltroDATA_VENCIMENTO: TDateField;
    DS_Filtro: TDataSource;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLBand2: TRLBand;
    RLLabel16: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    Query_FiltroCAST: TDateField;
    RLLabel7: TRLLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label5: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1NOME: TStringField;
    FDQuery1FILTRO: TStringField;
    procedure RzButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pedidos_formadepaga: TFrm_Pedidos_formadepaga;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Pedidos_formadepaga.FormShow(Sender: TObject);
begin
 RzComboBox1.ItemIndex := 0;
 RzComboBox2.ItemIndex := 1;
 RzDateTimeEdit1.Date := now-10;
 RzDateTimeEdit2.Date := now;
 FDQuery1.Open();
end;

procedure TFrm_Pedidos_formadepaga.RzButton1Click(Sender: TObject);
begin
query_filtro.Close;
query_filtro.SQL.Text:='SELECT PEDIDOS.id_pedido, '+
                              'CLIENTES.nome, '+
                              'pedidos_docs.parcela, ' +
                              'pedidos_docs.valor, '+
                              'pedidos_docs.data_vencimento, '+
                              'CAST(pedidos.data_hora AS DATE) ' +
                              'from pedidos ' +
                              'left join clientes on clientes.id_cliente = pedidos.id_cliente ' +
                              'left join pedidos_docs on pedidos_docs.id_pedido = pedidos.id_pedido ' +
                              'where pedidos_docs.parcela is not null '+RzComboBox1.Value+' '+RzComboBox2.Value+' '+RzDBLookupComboBox1.KeyValue+
                              ' order by CLIENTES.nome ';
query_filtro.params[0].AsDate:=RzDateTimeEdit1.Date;
query_filtro.params[1].AsDate:=RzDateTimeEdit2.Date;
query_filtro.open;
iF QUERY_FILTRO.RecordCount<>0 then
   BEGIN
   RLLabel11.Caption:='STATUS '+RzComboBox2.Text+' / '+RzComboBox1.TEXT+' de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
   RLReport1.PreviewModal

   END
   ELSE
   ShowMessage('NENHUM REGISTRO ENCONTRADO!');


end;

end.
