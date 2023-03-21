unit UFrm_Rel_Vendas2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  RzCmboBx, Vcl.Mask, RzEdit, Vcl.Buttons, RzPanel, RzRadGrp, RLReport,
  Vcl.Grids, Vcl.DBGrids, RzButton, Vcl.DBCtrls;

type
  TFrm_Rel_Vendas2 = class(TForm)
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox1: TRzComboBox;
    CheckBox1: TCheckBox;
    Query_Venda: TFDQuery;
    Query_VendaDATA_HORA: TDateField;
    Query_VendaPROCESSAMENTO: TDateField;
    Query_VendaID_VENDEDOR: TIntegerField;
    Query_VendaVENDEDOR: TStringField;
    Query_VendaID_CLIENTE: TIntegerField;
    Query_VendaNOTA_FISCAL: TStringField;
    Query_VendaPRODUTO: TStringField;
    Query_VendaQTD: TSingleField;
    Query_VendaVALOR_UNT: TBCDField;
    Query_VendaPRECO_TABELA: TBCDField;
    Query_VendaDIFERENCA_UNT: TBCDField;
    Query_VendaDIFERENCA: TFloatField;
    Query_VendaVAOR_TOTAL: TFloatField;
    Query_VendaCLIENTE: TStringField;
    Query_VendaCIDADE: TStringField;
    RzRadioGroup1: TRzRadioGroup;
    CheckBox2: TCheckBox;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLLabel16: TRLLabel;
    DS_Query_Venda: TDataSource;
    RLDBText16: TRLDBText;
    RLLabel1: TRLLabel;
    Query_Soma: TFDQuery;
    RLBand6: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand7: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    Query_Soma2: TFDQuery;
    Query_Soma2TOTAL: TFloatField;
    Query_Soma2VENDEDOR: TStringField;
    Query_Soma_Final: TFDQuery;
    RLDBText8: TRLDBText;
    DS_Query_Soma_Final: TDataSource;
    Query_Soma_FinalTOTAL: TFloatField;
    Query_VendaPEDIDO: TStringField;
    RadioGroup1: TRadioGroup;
    Query_VendaDESCONTO: TFloatField;
    RzBitBtn1: TRzBitBtn;
    RLReport2: TRLReport;
    RLGroup2: TRLGroup;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand8: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel24: TRLLabel;
    RLBand9: TRLBand;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLBand10: TRLBand;
    RLLabel27: TRLLabel;
    RLDBText21: TRLDBText;
    RLBand11: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand12: TRLBand;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLBand13: TRLBand;
    RLLabel30: TRLLabel;
    RLBand14: TRLBand;
    RLLabel23: TRLLabel;
    RLDBText19: TRLDBText;
    Query_VendaTOTAL: TBCDField;
    RLLabel22: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText23: TRLDBText;
    Query_Soma3: TFDQuery;
    Query_Soma3TOTAL_P: TBCDField;
    Query_Soma3TOTAL_DESC: TFloatField;
    Query_Soma3TOTAL_F: TFloatField;
    RLDBText22: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Query_Clientes: TFDQuery;
    Query_ClientesNOME: TStringField;
    Query_ClientesID: TStringField;
    DS_CLIENTES: TDataSource;
    DataSource1: TDataSource;
    RLDraw1: TRLDraw;
    procedure FormShow(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Vendas2: TFrm_Rel_Vendas2;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Vendas2.FormShow(Sender: TObject);
var
carrega : tfdquery;
begin

  carrega:=TFDQuery.Create(nil);
  carrega.Connection:=dm.FDConnection1;
  carrega.SQL.Text:='select  nome,id_funcionario from funcionarios where TIPO = 3';
  carrega.Open();
  RzComboBox1.Items.Add('TODOS');
  RzComboBox1.Values.Add(' ');
      while NOT carrega.Eof do
          begin
          RzComboBox1.Items.Add(carrega.FieldByName('NOME').asstring);
          RzComboBox1.Values.Add(' and id_vendedor ='+IntToStr(carrega.FieldByName('id_funcionario').asinteger));
          carrega.next;
          end;
   RzComboBox1.ItemIndex := 0;
   carrega.Free;


   RzDateTimeEdit1.AsDateTime:=date-30;
   RzDateTimeEdit2.AsDateTime:=date;

   Query_Clientes.Open();
   DBLookupComboBox1.KeyValue:=' ';
end;

procedure TFrm_Rel_Vendas2.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
          query_soma.Close;
          query_soma.Params[0].AsInteger:=Query_VendaPEDIDO.AsInteger;
          query_soma.Params[1].AsDate:=RzDateTimeEdit1.Date;
          query_soma.Params[2].AsDate:=RzDateTimeEdit2.Date;
          query_soma.Open();

          RLLabel9.Caption:=FloatToStrF(Query_Soma.FieldByName('total').AsFloat,ffCurrency,15,2);
end;

procedure TFrm_Rel_Vendas2.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
          query_soma.Close;
          query_soma.Params[0].AsInteger:=Query_VendaPEDIDO.AsInteger;
          query_soma.Params[1].AsDate:=RzDateTimeEdit1.Date;
          query_soma.Params[2].AsDate:=RzDateTimeEdit2.Date;
          query_soma.Open();

          RLLabel25.Caption:=FloatToStrF(Query_Soma.FieldByName('total').AsFloat,ffCurrency,15,2);
end;

procedure TFrm_Rel_Vendas2.RzBitBtn1Click(Sender: TObject);
var
d,N : string;
begin
    if RzRadioGroup1.ItemIndex = 0 then
      begin
       d := ' DATA_HORA ';
       RLDBText1.DataField:='DATA_HORA';
       RLDBText11.DataField:='DATA_HORA';
      end
        ELSE
      if RzRadioGroup1.ItemIndex = 1 then
       BEGIN
         d := ' PROCESSAMENTO ';
          RLDBText1.DataField:='PROCESSAMENTO';
          RLDBText11.DataField:='DATA_HORA';
       END;


       if CheckBox1.Checked = TRUE then
         N:=' AND NOTA_FISCAL IS NOT NULL  and  NOTA_FISCAL<> ''0'''
         ELSE
         N:=' ';


      query_venda.Close;
      query_venda.sql.text:='select * from rel_vendas WHERE '+D+' >=:I AND '+D+' <=:F '+N+
                            RzComboBox1.Value+' '+DBLookupComboBox1.KeyValue+' ORDER BY  PEDIDO,'+D+',VENDEDOR';

      query_venda.params[0].AsDate:=RzDateTimeEdit1.Date;
      query_venda.params[1].AsDate:=RzDateTimeEdit2.Date;
      query_venda.OPEN;


       query_soma.Close;
       Query_Soma.SQL.Text:='select sum(rel_vendas.vaor_total)as total from rel_vendas where pedido =:f and '+D+' >=:I AND '+D+' <=:Fi '+N+' '+DBLookupComboBox1.KeyValue;



   //   Memo1.Lines.Text:=Query_Venda.SQL.Text;



       RLLabel12.Caption:='Período de '+d+' '+RzDateTimeEdit1.Text+'  a '+RzDateTimeEdit2.Text;

       if CheckBox2.Checked = true then
          begin
            RLLabel1.Visible:=true;
            RLdbtext16.Visible:=true;
          end
          else
          begin
            RLLabel1.Visible:=false;
            RLdbtext16.Visible:=false;
          end;


   Query_Soma2.close;
   Query_Soma2.SQL.Text:='select sum(rel_vendas.vaor_total)as total,vendedor from rel_vendas '+
                        'WHERE '+D+' >=:I AND '+D+' <=:F '+N+RzComboBox1.Value+' '+DBLookupComboBox1.KeyValue+' '+
                        'group by vendedor';

    Query_Soma2.params[0].AsDate:=RzDateTimeEdit1.Date;
    Query_Soma2.params[1].AsDate:=RzDateTimeEdit2.Date;
    Query_Soma2.open;



    RLMemo1.Lines.Clear;
    RLMemo2.Lines.Clear;


    query_soma2.First;
    while not query_soma2.Eof do
      begin
        RLMemo1.Lines.Add(Query_Soma2.FieldByName('vendedor').AsString);
        RLMemo2.Lines.Add(FloatToStrF(Query_Soma2.FieldByName('total').AsFloat,ffCurrency,15,2));
        Query_Soma2.Next;
      end;



   Query_Soma_Final.close;
   Query_Soma_Final.SQL.Text:='select sum(rel_vendas.vaor_total)as total from rel_vendas '+
                        'WHERE '+D+' >=:I AND '+D+' <=:F '+N+RzComboBox1.Value+' '+DBLookupComboBox1.KeyValue;

    Query_Soma_Final.params[0].AsDate:=RzDateTimeEdit1.Date;
    Query_Soma_Final.params[1].AsDate:=RzDateTimeEdit2.Date;
    Query_Soma_Final.open;






      case  RadioGroup1.ItemIndex of
      0 : RLReport1.PreviewModal;
      1 :  begin
          Query_Soma3.Close;
          query_soma3.SQL.Text:='SELECT sum(REL_VENDAS.total)TOTAL_P,' +
                                '       sum(REL_VENDAS.desconto)TOTAL_DESC, ' +
                                '       sum(REL_VENDAS.vaor_total)TOTAL_F FROM REL_VENDAS ' +
                                'WHERE '+D+' >=:I AND '+D+' <=:F '+N+RzComboBox1.Value+' '+DBLookupComboBox1.KeyValue;

          Query_Soma3.params[0].AsDate:=RzDateTimeEdit1.Date;
          Query_Soma3.params[1].AsDate:=RzDateTimeEdit2.Date;
          Query_Soma3.Open();
         RLReport2.PreviewModal;
      end;




      end;





end;

end.