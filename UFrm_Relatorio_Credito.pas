unit UFrm_Relatorio_Credito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit,
  Vcl.ExtCtrls, RzPanel, RzCmboBx, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport;

type
  TFrm_Relatorio_Credito = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand5: TRLBand;
    Query: TFDQuery;
    QueryDATA_PROCESSAMENTO: TDateField;
    QueryID_VENDEDOR: TIntegerField;
    QueryVENDEDOR: TStringField;
    QueryID_PEDIDO: TIntegerField;
    QueryPEDIDO: TStringField;
    QueryCLIENTE: TStringField;
    QueryVALOR: TBCDField;
    Ds_Query: TDataSource;
    Query_soma: TFDQuery;
    DS_Query_Soma: TDataSource;
    Query_somaSUM: TBCDField;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand6: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RzLabel4: TRzLabel;
    RzComboBox2: TRzComboBox;
    RLLabel4: TRLLabel;
    RzLabel3: TRzLabel;
    RzComboBox1: TRzComboBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Relatorio_Credito: TFrm_Relatorio_Credito;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Relatorio_Credito.Button1Click(Sender: TObject);
begin
    query.Close;
    query.SQL.Text:='select * from REL_CREDITO ' +
                    'where ((data_processamento >=:i) and (data_processamento <=:f)) ' +RzComboBox1.Value+' ' +RzComboBox2.Value+' '+
                    'order by vendedor, data_processamento';
     query.params[0].asdate:=RzDateTimeEdit1.Date;
     query.params[1].asdate:=RzDateTimeEdit2.Date;
     query.Open();
     RLLabel8.Caption:='Período de '+RzDateTimeEdit1.Text+' a '+RzDateTimeEdit2.Text;


     RLReport1.PreviewModal;
end;

procedure TFrm_Relatorio_Credito.FormCreate(Sender: TObject);
var
query_func : tfdquery;
begin

            query_func:=TFDQuery.Create(nil);
            query_func.Connection:=DM.FDConnection1;
            query_func.SQL.Text:='select funcionarios.id_funcionario, ' +
                                        'funcionarios.nome ' +
                                        'from funcionarios order by funcionarios.nome';
            query_func.Open();

            RzComboBox1.Items.Add('TODOS');
            RzComboBox1.Values.Add('  ');

            query_func.First;
            while not query_func.Eof do
              begin
                RzComboBox1.Items.Add(query_func.FieldByName('nome').AsString);
                RzComboBox1.Values.Add(' and ID_VENDEDOR ='+IntToStr(query_func.FieldByName('id_funcionario').AsInteger));
                query_func.next;
              end;


            query_func.close;
            query_func.SQL.Text:='select id_cliente, ' +
                                        'nome ' +
                                        'from clientes where classificacao <> 4 order by nome';
            query_func.Open();

            RzComboBox2.Items.Add('TODOS');
            RzComboBox2.Values.Add('  ');

            query_func.First;
            while not query_func.Eof do
              begin
                RzComboBox2.Items.Add(query_func.FieldByName('nome').AsString);
                RzComboBox2.Values.Add(' and ID_cliente ='+IntToStr(query_func.FieldByName('id_cliente').AsInteger));
                query_func.next;
              end;







              query_func.Free;
              RzComboBox1.ItemIndex:=0;
              RzComboBox2.ItemIndex:=0;
              RzDateTimeEdit1.Date:=date-30;
              RzDateTimeEdit2.Date:=date;
end;

procedure TFrm_Relatorio_Credito.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
query_soma.Close;
query_soma.sql.Text:='select sum(valor) from REL_CREDITO' +
                     ' where data_processamento >=:ini and data_processamento <=:fim ' +RzComboBox2.Value+
                     ' AND id_vendedor ='+QueryID_VENDEDOR.AsString;
query_soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
query_soma.Params[1].AsDate:=RzDateTimeEdit2.Date;

query_soma.Open();
//memo1.Lines.Text:=query_soma.SQL.Text;
RLLabel4.Caption:='TOTAL:  '+FloatToStrF(Query_somaSUM.AsFloat,ffCurrency,15,2)
end;

end.
