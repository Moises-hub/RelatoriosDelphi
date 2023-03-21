unit UFrm_RelConsultoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, RzCmboBx,
  Vcl.Mask, RzEdit, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  UDM, RLReport, Vcl.ExtCtrls, RLFilters, RLPDFFilter, RzPanel, UFrmPrincipal,
  RzGroupBar, System.ImageList, Vcl.ImgList, RzButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, RzRadGrp;

type
  TFrm_Consultoria = class(TForm)
    Query_Filtro: TSQLQuery;
    Prov_Filtro: TDataSetProvider;
    CD_Filtro: TClientDataSet;
    DS_Filtro: TDataSource;
    Query: TSQLQuery;
    Panel1: TPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    Label5: TLabel;
    RzComboBox2: TRzComboBox;
    RzBitBtn1: TRzBitBtn;
    ImageList1: TImageList;
    Label6: TLabel;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand10: TRLBand;
    Memo1: TMemo;
    som_fornecedor: TFDQuery;
    RLReport4: TRLReport;
    RLBand16: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLGroup6: TRLGroup;
    RLBand18: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLBand19: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLBand20: TRLBand;
    RLBand22: TRLBand;
    RLDBText24: TRLDBText;
    Label4: TLabel;
    RzComboBox3: TRzComboBox;
    RLDBText20: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel49: TRLLabel;
    RLBand17: TRLBand;
    RLDBText18: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel51: TRLLabel;
    Query_Somar: TFDQuery;
    QueryFiltrar: TFDQuery;
    DSFIltrar: TDataSource;
    RLReport2: TRLReport;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel14: TRLLabel;
    QueryFiltrarDEPARTAMENTO: TStringField;
    RLLabel9: TRLLabel;
    QuerySomar: TFDQuery;
    QuerySomarTOTAL: TBCDField;
    DSSOMAR: TDataSource;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    TAB_FORNECEDOR: TFDTable;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    TAB_FORNECEDORDEPARTAMENTO: TStringField;
    TAB_FORNECEDORFORNECEDOR: TStringField;
    TAB_FORNECEDORDATA: TDateField;
    TAB_FORNECEDORNFE: TStringField;
    TAB_FORNECEDORPRODUTOS: TStringField;
    TAB_FORNECEDORMARCA: TStringField;
    TAB_FORNECEDORCUSTO: TBCDField;
    TAB_FORNECEDORQNT: TBCDField;
    TAB_FORNECEDORTOTAL: TBCDField;
    TAB_FORNECEDORESTOQUE: TBCDField;
    TAB_FORNECEDORTOTAL_DEPTO: TBCDField;
    TAB_FORNECEDORTOTAL_CLI: TBCDField;
    TAB_FORNECEDORTIPO: TIntegerField;
    TAB_FORNECEDORVENCIMENTO: TDateField;
    DS_TAB_FORNECEDOR: TDataSource;
    RLBand14: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText29: TRLDBText;
    RLBand5: TRLBand;
    RLGroup2: TRLGroup;
    RLBand13: TRLBand;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    RLBand8: TRLBand;
    RLLabel15: TRLLabel;
    RLBand9: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText4: TRLDBText;
    Query_filtrar_2: TFDQuery;
    DS_Query_filtrar_2: TDataSource;
    Query_filtrar_2DEPARTAMENTO: TStringField;
    Query_filtrar_2FORNECEDOR: TStringField;
    Query_filtrar_2DATA: TDateField;
    Query_filtrar_2NFE: TStringField;
    Query_filtrar_2PRODUTOS: TStringField;
    Query_filtrar_2MARCA: TStringField;
    Query_filtrar_2CUSTO: TBCDField;
    Query_filtrar_2QNT: TBCDField;
    Query_filtrar_2TOTAL: TBCDField;
    Query_filtrar_2ESTOQUE: TBCDField;
    Query_filtrar_2TOTAL_DEPTO: TBCDField;
    Query_filtrar_2TOTAL_CLI: TBCDField;
    Query_filtrar_2TIPO: TIntegerField;
    Query_filtrar_2VENCIMENTO: TDateField;
    RLLabel5: TRLLabel;
    RLLabel52: TRLLabel;
    RzRadioGroup1: TRzRadioGroup;
    RLLabel50: TRLLabel;
    procedure Filtrar_Compras(sender: TObject);
    procedure Filtrar_Financeiro(sender: TObject);
    procedure Filtrar_Estoque(sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLDetailGrid2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RzGroup1Items4Click(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure RzGroup1Items2Click(Sender: TObject);
    procedure RLGroup3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RLDBText16BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand13AfterPrint(Sender: TObject);
    procedure RLLabel16AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText27BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLGroup6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText19BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure QueryFiltrarAfterOpen(DataSet: TDataSet);
    procedure QueryFiltrarAfterClose(DataSet: TDataSet);
    procedure RLDBText29BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Consultoria: TFrm_Consultoria;
   TOTAL,soma_t,Total_,

  TREAL: REAL;
   rel : integer;
implementation

{$R *.dfm}



procedure TFrm_Consultoria.Filtrar_Compras(sender: TObject);
var
PLANO : string;
q : tfdquery;
begin

  PLANO :=TRIM(StringReplace(RzComboBox2.Value,'AND ID_PLANO =','',[rfReplaceAll]));
  PLANO :=TRIM(StringReplace(PLANO,'AND ID_PLANO >=','',[rfReplaceAll]));



  QueryFiltrar.Close;
  QueryFiltrar.SQL.Text:='execute procedure REL_CONSULTORIA_PROC(:A,:B,:C,:D)';
  QueryFiltrar.ParamByName('A').AsDate:=RzDateTimeEdit1.Date;
  QueryFiltrar.ParamByName('B').AsDate:=RzDateTimeEdit2.Date;
  QueryFiltrar.ParamByName('C').AsInteger:=StrToInt(PLANO);
  QueryFiltrar.ParamByName('D').AsInteger:=StrToInt(RzComboBox1.Value);
  QueryFiltrar.ExecSQL();



  TAB_FORNECEDOR.Close;

QueryFiltrar.Close;
QueryFiltrar.sql.Text:='SELECT distinct(REL_CONSULTORIA_COMPRA.departamento) from REL_CONSULTORIA_COMPRA ORDER BY departamento';




   Memo1.Lines.Text:=QueryFiltrar.sql.Text;
QueryFiltrar.Open;
TAB_FORNECEDOR.OPEN;

QuerySomar.Close;
QuerySomar.Open();
 RLLabel15.Caption:='TOTAL '+FloatToStrF(QuerySomarTOTAL.AsFloat,ffCurrency,15,2);

QuerySomar.REFRESH;

   Memo1.Lines.Text:=QueryFiltrar.sql.Text;


    RLLabel9.Caption:='Período de '+RzDateTimeEdit1.Text+' a '+RzDateTimeEdit2.Text+' - '+RzComboBox1.Text;
   RLReport2.PreviewModal;
{
q:=tfdquery.Create(nil);
q.Connection:=dm.FDConnection1;
q.SQL.Text:='SELECT sum(valor)valor ' +
                         ' from CONSULTORIA_COMPRA ' +
                         'WHERE ((CONSULTORIA_COMPRA.data >=:a) ' +
                         'and (CONSULTORIA_COMPRA.data <=:b)) and (CONSULTORIA_COMPRA.id_centro =:c) ' +
                         RzComboBox2.Value;

 q.Params[0].Asdate:=RzDateTimeEdit1.Date;
 q.Params[1].Asdate:=RzDateTimeEdit2.Date;
 q.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
 q.Open();
 RLLabel23.Caption:=FloatToStrF(q.FieldByName('valor').AsFloat,ffCurrency,15,2);


if CD_Filtro.RecordCount<>0 then
   begin

   RLReport2.PreviewModal;
   end
   else
    ShowMessage('Não foi encontrado nenhum registro!');

                }
end;

procedure TFrm_Consultoria.Filtrar_Estoque(sender: TObject);
VAR
PLANO : STRING;
begin
  PLANO :=TRIM(StringReplace(RzComboBox2.Value,'AND ID_PLANO =','',[rfReplaceAll]));
  PLANO :=TRIM(StringReplace(PLANO,'AND ID_PLANO >=','',[rfReplaceAll]));


  QueryFiltrar.Close;
  QueryFiltrar.SQL.Text:='execute procedure REL_CONSULTORIA_PROC(:A,:B,:C,:D)';
  QueryFiltrar.ParamByName('A').AsDate:=RzDateTimeEdit1.Date;
  QueryFiltrar.ParamByName('B').AsDate:=RzDateTimeEdit2.Date;
  QueryFiltrar.ParamByName('C').AsInteger:=StrToInt(PLANO);
  QueryFiltrar.ParamByName('D').AsInteger:=StrToInt(RzComboBox1.Value);
  QueryFiltrar.ExecSQL();

Query_filtrar_2.Close;
Query_filtrar_2.sql.Text:='SELECT * from REL_CONSULTORIA_COMPRA ORDER BY tipo,fornecedor';

   Memo1.Lines.Text:=Query_filtrar_2.sql.Text;
Query_filtrar_2.Open;

QuerySomar.Close;
QuerySomar.Open();
QuerySomar.REFRESH;

   Memo1.Lines.Text:=QueryFiltrar.sql.Text;



    RLLabel6.Caption:='Período de '+RzDateTimeEdit1.Text+' a '+RzDateTimeEdit2.Text+' - '+RzComboBox1.Text;
    RLReport1.PreviewModal;

end;

procedure TFrm_Consultoria.Filtrar_Financeiro(sender: TObject);
var
datad : string;
q : tfdquery;
begin

  case RzRadioGroup1.ItemIndex of
  1: datad := ' EMISSAO ';
  0: datad := ' DATA ';
  end;



CD_Filtro.Close;
cd_filtro.CommandText:='SELECT  PRODUTO,' +
                            '   DATA,   ' +
                            '   NFE, ' +
                            '   ID_DEPTO, ' +
                            '   ID_PEDIDO, ' +
                            '   ID_CENTRO, ' +
                            '   CENTRO_DE_CUSTO, ' +
                            '   ID_PLANO, ' +
                            '   PLANO, ' +
                            '   ID_CLIENTE, ' +
                            '   FORNECEDOR, ' +
                            '   MARCA, ' +
                            '   DEPARTAMENTO, ' +
                            '   CUSTO, ' +
                            '   QNT *(-1) QNT, ' +
                            '   VALOR *(-1) VALOR, ' +
                            '   ESTOQUE, ' +
                            '  VENCIMENTO from CONSULTORIA_COMPRA ' +
                       ' WHERE (('+datad+' >=:a) and ('+datad+' <=:b)) and (CONSULTORIA_COMPRA.id_centro =:c) ' +
                        RzComboBox3.Value+' '+RzComboBox2.Value+
                       ' order by departamento,CONSULTORIA_COMPRA.fornecedor, CONSULTORIA_COMPRA.produto,data  ';



 cd_filtro.Params[0].Asdate:=RzDateTimeEdit1.Date;
 cd_filtro.Params[1].Asdate:=RzDateTimeEdit2.Date;
 cd_filtro.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);


cd_Filtro.Open;

q:=tfdquery.Create(nil);
q.Connection:=dm.FDConnection1;
q.SQL.Text:='SELECT    sum(CONSULTORIA_COMPRA.valor) VALOR,' +
            '          SUM(CONSULTORIA_COMPRA.qnt) QNT ' +
            '          FROM CONSULTORIA_COMPRA ' +
            'WHERE (('+datad+' >=:a) and ('+datad+' <=:b)) and (CONSULTORIA_COMPRA.id_centro =:c) '+
            RzComboBox3.Value+' '+RzComboBox2.Value;

 q.Params[0].Asdate:=RzDateTimeEdit1.Date;
 q.Params[1].Asdate:=RzDateTimeEdit2.Date;
 q.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
 q.Open();
 RLLabel52.Caption:=FloatToStrF(q.FieldByName('valor').AsFloat * (-1),ffCurrency,15,2);


if CD_Filtro.RecordCount<>0 then
   begin
    RLLabel18.Caption:='Período de '+RzDateTimeEdit1.Text+' a '+RzDateTimeEdit2.Text+' - '+RzComboBox1.Text;
   RLReport4.PreviewModal;
   end
   else
    ShowMessage('Não foi encontrado nenhum registro!');


end;

procedure TFrm_Consultoria.FormShow(Sender: TObject);
begin
Rel := 0;
RzDateTimeEdit1.Date:=date-30;
RzDateTimeEdit2.Date:=date;

RzComboBox1.Items.Clear;
RzComboBox1.Values.clear;
    query.Close;
   if FrmPrincipal.LOGIN = 1 then

        query.SQL.Text:='        SELECT centro_custos.id_centro,centro_custos.descricao' +
                        '        FROM centro_custos '
      ELSE
      BEGIN


        query.Close;
        query.SQL.Text:='        SELECT centro_custos.id_centro,centro_custos.descricao' +
                        '        FROM centro_custos ' +
                        '    INNER JOIN rel_per_empresa ON rel_per_empresa.id_empresa = centro_custos.id_centro ' +
                        '    where rel_per_empresa.id_funcionario =:A';

        query.params[0].AsInteger:=FrmPrincipal.LOGIN;
      END;
        query.Open;
query.First;                                                           //COLOCAR POR CENTRO DE CUSTO
while not query.Eof do
 begin
     RzComboBox1.Items.add(Query.FieldByName('descricao').AsString);
     RzComboBox1.Values.add(Query.FieldByName('ID_CENTRO').AsString);
     query.next;
 end;
   RzComboBox1.ItemIndex:=0;

 RzComboBox2.Items.Clear;
RzComboBox2.Values.clear;

    


query.Close;
query.SQL.Text:='select * from PLANO_CONTAS';
query.Open;
query.First;
 RzComboBox2.Items.add('TODOS');
 RzComboBox2.Values.add(' AND ID_PLANO >= 0');
while not query.Eof do
 begin
     RzComboBox2.Items.add(Query.FieldByName('DESCRICAO').AsString);
     RzComboBox2.Values.add(' AND ID_PLANO ='+Query.FieldByName('ID_PLANO').AsString);
     query.next;
 end;
   RzComboBox2.ItemIndex:=0;

   RzGroup1Items0Click(sender);
end;

procedure TFrm_Consultoria.QueryFiltrarAfterClose(DataSet: TDataSet);
begin
TAB_FORNECEDOR.Close;
end;

procedure TFrm_Consultoria.QueryFiltrarAfterOpen(DataSet: TDataSet);
begin
TAB_FORNECEDOR.Open();
end;

procedure TFrm_Consultoria.RLBand13AfterPrint(Sender: TObject);
begin
soma_t:=0;


end;

procedure TFrm_Consultoria.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  VAR
   Query_Somar : TFDQUERY;
begin

   Query_Somar :=TFDQUERY.Create(NIL);
   Query_Somar.Connection:=DM.FDConnection1;
   Query_Somar.Close;
Query_Somar.SQL.Text:= 'SELECT sum(REL_CONSULTORIA_COMPRA.TOTAL)CUSTO' +
                       ' from REL_CONSULTORIA_COMPRA ' +
                       ' where rel_CONSULTORIA_COMPRA.departamento =:A AND  rel_CONSULTORIA_COMPRA.fornecedor =:B ';



 Query_Somar.Params[0].AsSTRING:=TAB_FORNECEDORDEPARTAMENTO.AsString;
 Query_Somar.Params[1].AsSTRING:=TAB_FORNECEDORFORNECEDOR.AsString;
 Query_Somar.open;


 RLLabel10.Caption:='TOTAL FORNECEDOR '+FloatToStrF(Query_Somar.FieldByName('CUSTO').AsFloat,ffCurrency,15,2);

{
Query_Somar.Close;
Query_Somar.SQL.Text:= 'SELECT sum(CONSULTORIA_COMPRA.valor)valor from CONSULTORIA_COMPRA ' +
                       ' WHERE ((CONSULTORIA_COMPRA.data >=:a) and (CONSULTORIA_COMPRA.data <=:b)) and (CONSULTORIA_COMPRA.id_centro =:c) ' +
                        RzComboBox2.Value+'  and consultoria_compra.id_depto =:d ';




 Query_Somar.Params[0].Asdate:=RzDateTimeEdit1.Date;
 Query_Somar.Params[1].Asdate:=RzDateTimeEdit2.Date;
 Query_Somar.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
 Query_Somar.Params[3].AsInteger:=CD_Filtro.FieldByName('id_depto').AsInteger;
 Query_Somar.open;
                       }
//RLLabel16.Caption:='TOTAL POR DEPARTAMENTO '+FloatToStrF(Query_Somar.FieldByName('valor').AsFloat,ffCurrency,15,2);
end;

procedure TFrm_Consultoria.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel14.Caption:='CENTRO DE CUSTO '+RzComboBox1.Text;
end;

procedure TFrm_Consultoria.RLDBText16BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);


begin
{      som_fornecedor.Close;
  som_fornecedor.Params[0].Asdate:=RzDateTimeEdit1.Date;
    som_fornecedor.Params[1].Asdate:=RzDateTimeEdit2.Date;
      som_fornecedor.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);

        som_fornecedor.Params[3].AsInteger:= CD_Filtro.FieldByName('id_cliente').AsInteger;
          som_fornecedor.Open();}

 // soma_t:=soma_t+CD_Filtro.FieldByName('valor').AsFloat;





end;

procedure TFrm_Consultoria.RLDBText19BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin  (*
som_fornecedor.Close;
som_fornecedor.SQL.Text:='SELECT sum(valor)valor ' +
                         ' from CONSULTORIA_COMPRA ' +
                         'WHERE ((CONSULTORIA_COMPRA.data >=:a) ' +
                         'and (CONSULTORIA_COMPRA.data <=:b)) and (CONSULTORIA_COMPRA.id_centro =:c) ' +
                         RzComboBox2.Value+'  and consultoria_compra.id_cliente =:d  and consultoria_compra.id_depto =:e ';

som_fornecedor.Params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
som_fornecedor.Params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
som_fornecedor.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
som_fornecedor.Params[3].AsInteger:=CD_Filtro.FieldByName('ID_CLIENTE').AsInteger;
som_fornecedor.Params[4].AsINTEGER:= CD_Filtro.FieldByName('id_depto').ASINTEGER;

som_fornecedor.Open();                                                              *)
//RLLabel15.Caption:='TOTAL POR FORNECEDOR '+FloatToStrF(som_fornecedor.FieldByName('valor').AsFloat,ffCurrency,15,2);
end;

procedure TFrm_Consultoria.RLDBText27BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
Total :=Total_+CD_Filtro.FieldByName('valor').AsFloat;

end;

procedure TFrm_Consultoria.RLDBText29BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
VAR
   Query_Somar : TFDQUERY;
begin
   Query_Somar :=TFDQUERY.Create(NIL);
   Query_Somar.Connection:=DM.FDConnection1;
   Query_Somar.Close;
Query_Somar.SQL.Text:= 'SELECT sum(REL_CONSULTORIA_COMPRA.TOTAL)CUSTO' +
                       ' from REL_CONSULTORIA_COMPRA ' +
                       ' where rel_CONSULTORIA_COMPRA.departamento =:A';



 Query_Somar.Params[0].AsSTRING:=TAB_FORNECEDORDEPARTAMENTO.AsString;
// Query_Somar.Params[1].AsSTRING:=TAB_FORNECEDORFORNECEDOR.AsString;
 Query_Somar.open;


 RLLabel13.Caption:='TOTAL DEPARTAMENTO --> '+TAB_FORNECEDORDEPARTAMENTO.AsString+'   '+FloatToStrF(Query_Somar.FieldByName('CUSTO').AsFloat,ffCurrency,15,2);
end;

procedure TFrm_Consultoria.RLDetailGrid2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLLabel16.Caption:=FloatToStrF(CD_Filtro.FieldByName('Valor').AsFloat,ffCurrency,15,2);
TOTAL:=TOTAL+CD_FILTRO.FieldByName('VALOR').ASFLOAT;
//RLLabel16.Caption:=FloatToStrF(TOTAL,ffCurrency,15,2);
TREAL:=Treal+CD_FILTRO.FieldByName('VALOR').ASFLOAT;
//RLLabel23.Caption:='Total Geral '+FloatToStrF(TReal,ffcurrency,15,2);
end;

procedure TFrm_Consultoria.RLDetailGrid3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
TOTAL:=TOTAL+CD_FILTRO.FieldByName('sum').ASFLOAT;

end;

procedure TFrm_Consultoria.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  VAR
QUERY:TFDQUERY;
begin
  QUERY:=TFDQUERY.Create(NIL);
  QUERY.Connection:=DM.FDConnection1;
  QUERY.SQL.Text:='SELECT  sum(REL_CONSULTORIA_COMPRA.total)total' +
                  '         from REL_CONSULTORIA_COMPRA ' +
                  ' where  REL_CONSULTORIA_COMPRA.departamento =:a ';

  QUERY.Params[0].AsString:=Query_filtrar_2DEPARTAMENTO.asstring;
  QUERY.open;
 RLLabel5.Caption:='TOTAL DO DEPARTAMENTO  '+FloatToStrF(Query.FieldByName('total').AsFloat,ffCurrency,15,2);


end;

procedure TFrm_Consultoria.RLGroup3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLLabel10.Caption:='TOTAL DO DEPARTAMENTO  '+FloatToStrF(QueryFiltrar.FieldByName('total_DEPTO').AsFloat,ffCurrency,15,2);

end;

procedure TFrm_Consultoria.RLGroup6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  VAR
QUERY:TFDQUERY;
datad : string;

begin

  case RzRadioGroup1.ItemIndex of
  1: datad := ' EMISSAO ';
  0: datad := ' DATA ';
  end;
  QUERY:=TFDQUERY.Create(NIL);
  QUERY.Connection:=DM.FDConnection1;
  QUERY.SQL.Text:='SELECT    sum(CONSULTORIA_COMPRA.valor) VALOR,' +
            '          SUM(CONSULTORIA_COMPRA.qnt) QNT ' +
            '          FROM CONSULTORIA_COMPRA ' +
            'WHERE (('+datad+' >=:a) and ('+datad+' <=:b)) and (CONSULTORIA_COMPRA.id_CENTRO =:c) and (CONSULTORIA_COMPRA.id_DEPTO =:D) '+
            RzComboBox3.Value+' '+RzComboBox2.Value;

 QUERY.Params[0].Asdate:=RzDateTimeEdit1.Date;
 QUERY.Params[1].Asdate:=RzDateTimeEdit2.Date;
 QUERY.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
 QUERY.Params[3].AsInteger:=CD_Filtro.FieldByName('ID_DEPTO').AsInteger;

 QUERY.Open();
RLLabel50.Caption:=FloatToStrF(QUERY.FieldByName('VALOR').AsFloat * (-1),ffCurrency,15,2);
end;

procedure TFrm_Consultoria.RLLabel16AfterPrint(Sender: TObject);
begin
total_:=0;




end;

procedure TFrm_Consultoria.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLSubDetail1.Color=clWhite then
   RLSubDetail1.Color:=$00F4F4F4
   ELSE
   RLSubDetail1.Color:=clWhite;
end;

procedure TFrm_Consultoria.RzBitBtn1Click(Sender: TObject);
begin



 Total_:=0;
TReal:=0;

    if rel=0 then
       begin

        Filtrar_Compras(SENDER)
       end
       else
       if rel=1 then
              begin
     
                Filtrar_Financeiro(SENDER)
              end
        else
        if rel=2 then
           Filtrar_Estoque(SENDER)
end;

procedure TFrm_Consultoria.RzGroup1Items0Click(Sender: TObject);
begin
Rel:=0;






 Label4.Visible:=false;
        RzComboBox3.Visible:=false;
        RzRadioGroup1.Visible:=FALSE;

        RzGroup1.Items[0].FontColor:=clBlue;
        RzGroup1.Items[2].FontColor:=clBlack;
        RzGroup1.Items[4].FontColor:=clBlack;
        Label6.Caption:='COMPRAS';

 Panel1.Color:=clSkyBlue;


end;

procedure TFrm_Consultoria.RzGroup1Items1Click(Sender: TObject);
begin
Rel:=1;




Label5.Visible:=TRUE;
RzComboBox2.Visible:=TRUE;
Label4.Visible:=TRUE;

RzComboBox3.Visible:=TRUE;
                RzGroup1.Items[2].FontColor:=clBlue;
                RzGroup1.Items[0].FontColor:=clBlack;
                RzGroup1.Items[4].FontColor:=clBlack;
                RzRadioGroup1.Visible:=TRUE;
                Label6.Caption:='FINANCEIRO';

 Panel1.Color:=clMoneyGreen;
end;

procedure TFrm_Consultoria.RzGroup1Items2Click(Sender: TObject);
begin
Rel:=2;



RzComboBox2.Visible:=true;
Label5.Visible:=true;

                RzGroup1.Items[4].FontColor:=clBlue;
                RzGroup1.Items[2].FontColor:=clBlack;
                RzGroup1.Items[0].FontColor:=clBlack;
                RzRadioGroup1.Visible:=FALSE;
                Label6.Caption:='ESTOQUE';
                 Panel1.Color:=clWhite;
end;

procedure TFrm_Consultoria.RzGroup1Items4Click(Sender: TObject);
begin
 close;
end;

end.
