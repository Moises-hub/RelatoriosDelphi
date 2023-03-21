unit UfrmRel;

interface

uses  Registry,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RzPanel, RzRadGrp,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, IBX.IBCustomDataSet, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, IBX.IBDatabase, IBX.IBQuery, Data.DBXFirebird,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, IBX.IBTable,
  RLReport, RLFilters, RLPDFFilter;

type
  TForm1 = class(TForm)
    Query_Pedidos: TIBQuery;
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    Query_PedidosID_PEDIDO: TIntegerField;
    Query_PedidosNUMERO: TIntegerField;
    Query_PedidosDATA_HORA: TDateTimeField;
    Query_PedidosNOTA_FISCAL_SERV: TIBStringField;
    Query_PedidosNFCE_NUMERO: TIBStringField;
    Query_PedidosNOME: TIBStringField;
    Query_PedidosVALOR_TOTAL: TIBBCDField;
    Query_PedidosNOTA_FISCAL: TIBStringField;
    Query_PedidosDATAEMINF: TDateField;
    RzComboBox1: TRzComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    Label3: TLabel;
    Query_PedidosDESCRICAO: TIBStringField;
    Query_PedidosDESCRICAO1: TIBStringField;
    Button1: TButton;
    Button2: TButton;
    Tab_Especie: TIBTable;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Tab_EspecieID_ESPECIE: TIntegerField;
    Tab_EspecieDESCRICAO: TIBStringField;
    Tab_EspecieTIPO: TSmallintField;
    Tab_EspecieDOCUMENTO: TSmallintField;
    Tab_EspecieDIAS: TSmallintField;
    Tab_EspecieTEF: TSmallintField;
    Tab_EspeciePDV: TSmallintField;
    Tab_EspecieVINCULADO: TSmallintField;
    Tab_EspecieECF: TIBStringField;
    Tab_EspecieNFCE: TIBStringField;
    Label4: TLabel;
    Memo1: TMemo;
    Query_Nat: TIBQuery;
    Query_NatCODIGO_FISCAL: TIBStringField;
    Query_NatDESCRICAO: TIBStringField;
    Memo2: TMemo;
    Query_NatID_NATUREZA: TIntegerField;
    Query_NatDESCRICAO_NOTA: TIBStringField;
    Query_NatES: TSmallintField;
    Query_NatESTOQUE_FISICO: TSmallintField;
    Query_NatESTOQUE_FISCAL: TSmallintField;
    Query_NatFINANCEIRO: TSmallintField;
    Query_NatCALC_ICMS: TSmallintField;
    Query_NatCALC_IPI: TSmallintField;
    Query_NatCALC_ISS: TSmallintField;
    Query_NatREDUCAO_ICMS: TFloatField;
    Query_NatREDUCAO_IPI: TFloatField;
    Query_NatTIPO: TSmallintField;
    Query_NatPROCESSO: TSmallintField;
    Query_NatCALC_COMISSAO: TSmallintField;
    Query_NatICMS_ATIVO: TSmallintField;
    Query_NatICMS: TFloatField;
    Query_NatUF: TIBStringField;
    Query_NatTRIBUTACAO: TSmallintField;
    Query_NatOPERACAO: TSmallintField;
    Query_NatID_TERMO_OBS: TIntegerField;
    Query_NatTIPO_ENTREGA: TSmallintField;
    Query_NatTIPO_DESTINO: TSmallintField;
    Query_NatIPI_CST: TIBStringField;
    Query_NatPIS_CST: TIBStringField;
    Query_NatCOFINS_CST: TIBStringField;
    Query_NatPIS: TFloatField;
    Query_NatIPI: TFloatField;
    Query_NatCOFINS: TFloatField;
    Query_NatCSOSN: TIBStringField;
    Query_NatCFOP_ATIVO: TSmallintField;
    Query_NatICMS_SUB: TFloatField;
    Query_NatORIGEM_MERCADORIA: TSmallintField;
    Query_NatIPI_ENQLEG: TIBStringField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Button3: TButton;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLPDFFilter1: TRLPDFFilter;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RzRadioGroup2: TRzRadioGroup;
    Label5: TLabel;
    RzComboBox2: TRzComboBox;
    RLLabel13: TRLLabel;
    Memo3: TMemo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ord :string;
  v,N : currency;
  ORDENAR : STRING;
implementation

{$R *.dfm}

uses UFrmNatOperacao, UDM;

procedure TForm1.Button1Click(Sender: TObject);
begin
ClientDataSet1.Close;
if RzRadioGroup1.ItemIndex=1 then
    BEGIN
      ClientDataSet1.CommandText:='select distinct nota_fiscal.nota_fiscal AS Numero, pedidos.NFCE_NUMERO, NATUREZA_OPERACAO.CODIGO_FISCAL,'+
      ' NATUREZA_OPERACAO.Descricao AS NATUREZA, NATUREZA_OPERACAO.OPERACAO, NATUREZA_OPERACAO.es, clientes.nome, nota_fiscal.valor_total,'+
      ' nota_fiscal.data_emissao as dataEmiNF, especie_pgto.descricao from nota_fiscal'+
      ' left join pedidos on (pedidos.nota_fiscal = nota_fiscal.nota_fiscal) left join especie_pgto on(especie_pgto.id_especie = pedidos.id_especie) left join NATUREZA_OPERACAO on (NATUREZA_OPERACAO.id_natureza = NOTA_FISCAL.ID_NATUREZA)' +
      ' left join clientes on(clientes.id_cliente = Nota_fiscal.id_cliente)'+
      ' where NATUREZA_OPERACAO.ES = '+IntToStr(Rzradiogroup2.ItemIndex+1)+' and nota_fiscal.status = '+RzComboBox2.Value+' AND NATUREZA_OPERACAO.PROCESSO = 1';



      if RzComboBox1.Text='Todos' then
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and '+{pedidos.status =2}' NOTA_FISCAL.DATA_EMISSAO >=:ini AND NOTA_FISCAl.DATA_EMISSAO <=:fim'
         else
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and '+{pedidos.status =2}' NOTA_FISCAL.DATA_EMISSAO >=:ini AND NOTA_FISCAL.DATA_EMISSAO <=:fim and especie_pgto.id_especie ='+RzComboBox1.Value;

      ClientDataSet1.Params[0].DataType:=ftDate;
      ClientDataSet1.Params[1].DataType:=ftDate;
       ClientDataSet1.Params[0].AsDateTime:=RzDateTimeEdit1.date;
       ClientDataSet1.Params[1].AsDateTime:=RzDateTimeEdit2.Date;


        if Memo1.Lines.Count<>0 then
       ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and '+Memo2.Text;

    END
    else
    BEGIN
     ClientDataSet1.CommandText:='select distinct NOTA_FISCAL_SERV.NFSE_NUMERO as Numero, pedidos.NFCE_NUMERO, NATUREZA_OPERACAO.CODIGO_FISCAL,'+
      'NATUREZA_OPERACAO.Descricao as natureza, NATUREZA_OPERACAO.OPERACAO, NATUREZA_OPERACAO.es, clientes.nome, NOTA_FISCAL_SERV.valor_total,'+
      'NOTA_FISCAL_SERV.data_emissao as dataEmiNF, especie_pgto.descricao from NOTA_FISCAL_SERV'+
      ' inner join pedidos on (pedidos.id_pedido = NOTA_FISCAL_SERV.id_pedido) inner join especie_pgto on(especie_pgto.id_especie = pedidos.id_especie) inner join NATUREZA_OPERACAO on (NATUREZA_OPERACAO.id_natureza = NOTA_FISCAL_SERV.ID_NATUREZA)' +
      ' inner join clientes on(clientes.id_cliente = NOTA_FISCAL_SERV.id_cliente)'+
      ' where NATUREZA_OPERACAO.ES = '+IntToStr(Rzradiogroup2.ItemIndex+1)+' AND NATUREZA_OPERACAO.PROCESSO = 1';

       if RzComboBox2.Value = '1' then

         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and (NOTA_FISCAL_SERV.status = 1 or NOTA_FISCAL_SERV.status = 0)'
          else
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and NOTA_FISCAL_SERV.status = 9';

      if RzComboBox1.Text='Todos' then
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and NOTA_FISCAL_SERV.DATA_EMISSAO  >=:ini AND NOTA_FISCAL_SERV.DATA_EMISSAO <=:fim'
         else
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' and NOTA_FISCAL_SERV.DATA_EMISSAO  >=:ini AND NOTA_FISCAL_SERV.DATA_EMISSAO <=:fim and especie_pgto.id_especie ='+RzComboBox1.Value;

        ClientDataSet1.Params[0].DataType:=ftDate;
        ClientDataSet1.Params[1].DataType:=ftDate;
         ClientDataSet1.Params[0].AsDateTime:=RzDateTimeEdit1.date;
         ClientDataSet1.Params[1].AsDateTime:=RzDateTimeEdit2.Date;


        Memo1.Clear;
        memo2.Clear;
        memo3.Clear;

    END;











   (* BEGIN
      if RzComboBox1.Text='Todos' then
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+ {and nota_fiscal.status =1}' and (CAST(NOTA_FISCAL_SERV.DATA_EMISSAO AS DATE) >=:ini) AND (CAST(NOTA_FISCAL_SERV.DATA_EMISSAO AS DATE)<=:fim)'
         else
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+{ and nota_fiscal.status =1}' and (CAST(NOTA_FISCAL_SERV.DATA_EMISSAO AS DATE) >=:ini) AND (CAST(NOTA_FISCAL_SERV.DATA_EMISSAO AS DATE) <=:fim) and especie_pgto.id_especie ='+RzComboBox1.Value;
     *)




    
//      ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' ORDER BY pedidos.data_hora descending';


    //  ClientDataSet1.Params[0].DataType:=ftDate;
    //  ClientDataSet1.Params[1].DataType:=ftDate;

      ClientDataSet1.Execute;
      ClientDataSet1.Open;




   //   ShowMessage(ClientDataSet1.CommandText);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Memo1.Clear;
memo2.Clear;
memo3.Clear;
FrmNatOperacao:=TFrmNatOperacao.Create(SELF);
FrmNatOperacao.ShowModal;
FrmNatOperacao:=nil;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   v:=0;
   RLReport1.PreviewModal;
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
begin
        Button1.Click;

        if ORDENAR = ' descending' then
           BEGIN
           ORDENAR :=' ';
           RLLabel12.Caption:='Ordenado por '+Column.FieldName+' Crescente'
           END
           ELSE
           begin
           ORDENAR := ' descending';
           RLLabel12.Caption:='Ordenado por '+Column.FieldName+' Crescente'


           end;


         ClientDataSet1.Close;
         ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' ORDER BY '+Column.FieldName+ORDENAR;
         ClientDataSet1.Open;





          {    Ascendente:= not Ascendente ;
            If Ascendente then
                ClientDataSet1.IndexFieldNames := Column.FieldName+' ASCENDENTE'
                else
                ClientDataSet1.IndexFieldNames:= Column.FieldName+' DESCENDENTE';
           }

         {

          ClientDataSet1.Close;
          ClientDataSet1.CommandText:='select pedidos.id_pedido, pedidos.numero, pedidos.data_hora, pedidos.nota_fiscal_serv, pedidos.nfce_numero, clientes.nome, nota_fiscal.valor_total,'+
          'nota_fiscal.nota_fiscal, nota_fiscal.data_emissao as dataEmiNF, especie_pgto.descricao from pedidos'+
          ' inner join clientes on(clientes.id_cliente = pedidos.id_cliente)'+
          ' inner join nota_fiscal on (nota_fiscal.id_pedido = pedidos.id_pedido) inner join especie_pgto on(especie_pgto.id_especie = pedidos.id_especie)' ;

          if RzRadioGroup1.ItemIndex=0 then
              BEGIN
                ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' where pedidos.status =1 and pedidos.data_hora >=:ini AND pedidos.data_hora <=:fim and especie_pgto.id_especie ='+RzComboBox1.Value;

             // ClientDataSet1.Pa//rams[0].AsDateTime:=StrToDateTime(FormatDateTime('DD"-"MM"-"YYYY" "HH":"MM":"SS',RzDateTimeEdit1.AsDateTime));
            //  Query_Pedidos.Params[1].AsDateTime:=StrToDateTime(FormatDateTime('DD"-"MM"-"YYYY" "HH":"MM":"SS',RzDateTimeEdit2.AsDateTime));
              END
              else
              BEGIN
           //   ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' where nota_fiscal.data_emissao  >='''+DateTimeToStr(RzDateTimeEdit1.AsDateTime)+''' AND nota_fiscal.data_emissao <='''''+DateTimeToStr(RzDateTimeEdit2.AsDateTime)+'';
                ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' where nota_fiscal.status =1 and nota_fiscal.data_emissao >=:ini AND nota_fiscal.data_emissao <=:fim and especie_pgto.id_especie ='+RzComboBox1.Value;


              END;



         if ord = 'descending' then
       begin
              ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' ORDER BY '+Column.FieldName+' descending';
              ord := 'asc'

       end
       else
       begin

       ClientDataSet1.CommandText:=ClientDataSet1.CommandText+' ORDER BY '+Column.FieldName;
       ord := ' '

       end;



                ClientDataSet1.Params[0].DataType:=ftDate;
                ClientDataSet1.Params[1].DataType:=ftDate;
                ClientDataSet1.Params[0].AsDateTime:=RzDateTimeEdit1.AsDateTime;
                ClientDataSet1.Params[1].AsDateTime:=RzDateTimeEdit2.AsDateTime;
                ClientDataSet1.Open;

                             }


end;

procedure TForm1.FormShow(Sender: TObject);
var
i, n :integer;
begin
    RzDateTimeEdit1.AsDateTime:=DATE;
    RzDateTimeEdit2.AsDateTime:=DATE;

   n:=0;
    Tab_Especie.Open;
    Tab_Especie.First;
while NOT Tab_Especie.Eof do
     BEGIN
     n:=n+1;
     RzComboBox1.Items.Add(Tab_EspecieDESCRICAO.Value);
     RzComboBox1.Values.Add(IntToStr(Tab_EspecieID_ESPECIE.AsInteger));
     i:=Tab_EspecieID_ESPECIE.AsInteger;
     Tab_Especie.Next;
     END;

     RzComboBox1.Items.Add('Todos');
     RzComboBox1.Values.Add(IntToStr(i+1));
     RzComboBox1.ItemIndex:=n;




end;

procedure TForm1.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
t : string;
begin
  t:='Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit1.Text+' Especie de Pagamento '+RzComboBox1.Text;
  if Memo1.Lines.Count<>0 then
     t:=t+' Natureza de Operação'+Memo3.Text;


     RLLabel9.Caption:=t;





end;

procedure TForm1.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
    RLLabel10.Caption:=FloatToStrf(v,ffNUMBER,15,2);
end;

procedure TForm1.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);

begin




      if RLDetailGrid1.Color=clWhite then
         RLDetailGrid1.Color:=clSilver
         else
         RLDetailGrid1.Color:=clwhite;


        RLLabel2.Caption:=FloatToStrF(ClientDataSet1.FieldByName('VALOR_TOTAL').ASFLOAT,ffNumber,15,2);
        v:=v+ClientDataSet1.FieldByName('VALOR_TOTAL').ASFLOAT;



end;

end.
