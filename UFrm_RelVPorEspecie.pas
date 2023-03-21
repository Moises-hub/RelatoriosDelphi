unit UFrm_RelVPorEspecie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, RzPanel,
  RzRadGrp, Vcl.Mask, RzEdit, RzCmboBx, Vcl.Buttons, Vcl.ExtCtrls,
  Data.SqlExpr, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_RelVPorEspecie = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    RzComboBox1: TRzComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel17: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText7: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    Rel_ComEspecie: TSQLDataSet;
    Prov_Rel_ComEspecie: TDataSetProvider;
    DS_Rel_ComEspecie: TDataSource;
    Button1: TButton;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RzComboBox2: TRzComboBox;
    Label4: TLabel;
    Cli_Rel_ComEspecie: TClientDataSet;
    RLDBText8: TRLDBText;
    RLDBResult1: TRLDBResult;
    Cli_Rel_ComEspecieID_FUNCIONARIO: TIntegerField;
    Cli_Rel_ComEspecieNOME: TStringField;
    Cli_Rel_ComEspecieEMISSAO: TDateField;
    Cli_Rel_ComEspecieID_FORMA: TIntegerField;
    Cli_Rel_ComEspecieID_ESPECIE: TIntegerField;
    Cli_Rel_ComEspecieFORMA_DE_PAGA: TStringField;
    Cli_Rel_ComEspeciePEDIDO: TStringField;
    Cli_Rel_ComEspecieESPECIE: TStringField;
    Cli_Rel_ComEspecieVALOR: TFMTBCDField;
    Cli_Rel_ComEspecieID_DPTO: TIntegerField;
    Cli_Rel_ComEspecieCOMISSAO: TFloatField;
    Memo1: TMemo;
    Query_Soma: TFDQuery;
    Query_SomaSUM: TBCDField;
    Query_SomaESPECIE: TStringField;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    procedure Button1Click(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Cli_Rel_ComEspecieCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    var
    VENDEDOR : TSQLDataSet;
     TOTAL : REAL;
  end;

var
  Frm_RelVPorEspecie: TFrm_RelVPorEspecie;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelVPorEspecie.Button1Click(Sender: TObject);


begin
 {
      RLLabel17.Caption:='';
     case RzRadioGroup1.ItemIndex of
         0: data:='listavendas_simples.data_faturamento';
         1: data:='listavendas_simples.data_emissao';
     end;


        case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=RLLabel17.Caption+' Faturado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=RLLabel17.Caption+' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
        end;



   if RzComboBox1.ItemIndex=0 then
   BEGIN
   Cli_Rel_ComEspecie.close;
   Cli_Rel_ComEspecie.CommandText:='select sum(listavendas_simples.valor_total)as valor, '+
                                   'listavendas_simples.vendedor, ' +
                                   'listavendas_simples.data_emissao, '+
                                   'listavendas_simples.pedido, '+
                                   'Listavendas_simples.especie, ' +
                                   'Listavendas_simples.forma, ' +
                                   'rel_cad_comicao.porcentagem ' +
                                   'from listavendas_simples ' +
                                   'INNER join rel_cad_comicao on(rel_cad_comicao.id_especie = listavendas_simples.id_especie) ' +
                                   'INNER join rel_comicao on(rel_comicao.id = rel_cad_comicao.id) ' +
                                   'where (rel_cad_comicao.id_formapaga = listavendas_simples.id_forma) and (rel_cad_comicao.ID_ESPECIE = listavendas_simples.ID_ESPECIE) and '+
                                   '(rel_comicao.id_funcionario = listavendas_simples.id_vendedor) AND ' +
                                   '(('+DATA+' >=:INI) AND ('+DATA+' <=:FIM)) AND  (listavendas_simples.operacao =1) and (listavendas_simples.ID_DEPTO ='+RzComboBox2.Value+')'+
                                   ' AND (rel_cad_comicao.tipo =3) and (listavendas_simples.tipo =1) and (listavendas_simples.status = 2) ' +
                                   'group by   listavendas_simples.vendedor, listavendas_simples.data_emissao, listavendas_simples.pedido, listavendas_simples.especie, ' +
                                   'listavendas_simples.forma, rel_cad_comicao.porcentagem';



      Cli_Rel_ComEspecie.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
      Cli_Rel_ComEspecie.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
     Cli_Rel_ComEspecie.open;
   END
   ELSE
   BEGIN
   Cli_Rel_ComEspecie.close;
   Cli_Rel_ComEspecie.CommandText:='select sum(listavendas_simples.valor_total)as valor, '+
                                   'listavendas_simples.vendedor, ' +
                                   'listavendas_simples.data_emissao, '+
                                   'listavendas_simples.pedido, '+
                                   'Listavendas_simples.especie, ' +
                                   'Listavendas_simples.forma, ' +
                                   'rel_cad_comicao.porcentagem ' +
                                   'from listavendas_simples ' +
                                   'INNER join rel_cad_comicao on(rel_cad_comicao.id_especie = listavendas_simples.id_especie) ' +
                                   'INNER join rel_comicao on(rel_comicao.id = rel_cad_comicao.id) ' +
                                   'where (rel_cad_comicao.id_formapaga = listavendas_simples.id_forma) and (rel_cad_comicao.ID_ESPECIE = listavendas_simples.ID_ESPECIE) and '+
                                   '(rel_comicao.id_funcionario = listavendas_simples.id_vendedor)  AND' +
                                   '(('+DATA+' >=:INI) AND ('+DATA+' <=:FIM)) AND  (listavendas_simples.operacao =1) AND (rel_cad_comicao.tipo =3) and (listavendas_simples.tipo =1) and (listavendas_simples.status = 2) ' +
                                   'AND (listavendas_simples.id_vendedor =:V) and (listavendas_simples.ID_DEPTO ='+RzComboBox2.Value+') '+
                                   'group by   listavendas_simples.vendedor, listavendas_simples.data_emissao, listavendas_simples.pedido, listavendas_simples.especie, ' +
                                   'listavendas_simples.forma, rel_cad_comicao.porcentagem';



      Cli_Rel_ComEspecie.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
      Cli_Rel_ComEspecie.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
      Cli_Rel_ComEspecie.params[2].ASSTRING:=RzComboBox1.Value;
     Cli_Rel_ComEspecie.open;
   END;


      }

     if RzComboBox1.ItemIndex=0 then
   BEGIN
     Cli_Rel_ComEspecie.close;

     Cli_Rel_ComEspecie.CommandText:='select * from rel_com_paga where ((emissao >=:i) and (emissao <=:f)) AND ID_DPTO =:DP  ORDER BY ID_FUNCIONARIO';
     Cli_Rel_ComEspecie.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
     Cli_Rel_ComEspecie.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
     Cli_Rel_ComEspecie.params[2].AsInteger:=StrToInt(RzComboBox2.Value);
     Cli_Rel_ComEspecie.open;
   END
   else

   BEGIN
     Cli_Rel_ComEspecie.close;
     Cli_Rel_ComEspecie.CommandText:='select * from rel_com_paga where ((emissao >=:i) and (emissao <=:f)) and (id_funcionario ='+RzComboBox1.value+') AND ID_DPTO =:DP ORDER BY ID_FUNCIONARIO';
     Cli_Rel_ComEspecie.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
     Cli_Rel_ComEspecie.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
     Cli_Rel_ComEspecie.params[2].AsInteger:=StrToInt(RzComboBox2.Value);
     Cli_Rel_ComEspecie.open;



   END;
          query_soma.close;
     query_soma.sql.Text:='select sum(rel_com_paga.valor), rel_com_paga.especie from rel_com_paga' +
                          ' where ((emissao >=:i) and (emissao <=:f)) and (id_funcionario =:func) AND ID_DPTO =:DP'+
                          ' group by rel_com_paga.especie';
     query_soma.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
     query_soma.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
     query_soma.params[3].AsInteger:=StrToInt(RzComboBox2.Value);



      Memo1.Lines.Text:=Cli_Rel_ComEspecie.CommandText;

        RLReport1.PreviewModal;

end;


procedure TFrm_RelVPorEspecie.Cli_Rel_ComEspecieCalcFields(DataSet: TDataSet);
var
com : TSQLDataSet;
begin
  com := TSQLDataSet.Create(self);
  com.SQLConnection:=dm.SQLConnection1;
  com.CommandText:='select rel_cad_comicao.porcentagem from rel_cad_comicao left join rel_COMICAO on'+
                   '(rel_comicao.id = rel_cad_comicao.id) where ((rel_cad_comicao.id_especie =:esp) and (rel_cad_comicao.id_formapaga =:f)) and (rel_comicao.tipo =3) AND (REL_COMICAO.ID_FUNCIONARIO ='+Cli_Rel_ComEspecieID_FUNCIONARIO.AsString+')';
  com.Params[0].AsInteger:=Cli_Rel_ComEspecieID_ESPECIE.Asinteger;
  com.Params[1].AsInteger:=Cli_Rel_ComEspecieID_FORMA.Asinteger;
  com.Open;

TRY

   Cli_Rel_ComEspecieCOMISSAO.Value:= Cli_Rel_ComEspecieVALOR.AsCurrency *(com.FieldByName('porcentagem').Value/100);
EXCEPT
   Cli_Rel_ComEspecieComissao.Value:=0;
END;

;
end;

procedure TFrm_RelVPorEspecie.FormShow(Sender: TObject);
begin
     VENDEDOR := TSQLDataSet.Create(SELF);
     VENDEDOR.SQLConnection:=DM.SQLConnection1;
     VENDEDOR.CommandText:='SELECT ID_FUNCIONARIO, NOME FROM FUNCIONARIOS WHERE status =1 and tipo = 3';
     VENDEDOR.Open;

     RzComboBox1.Items.Clear;
     RzComboBox1.Values.Clear;
     RzComboBox1.Items.Add('TODOS');
     RzComboBox1.VALUES.Add('0');
     VENDEDOR.First;
     while NOT VENDEDOR.Eof do
      BEGIN
      RzComboBox1.Items.Add(VENDEDOR.FieldByName('NOME').AsString);
      RzComboBox1.VALUES.Add(VENDEDOR.FieldByName('ID_FUNCIONARIO').AsString);
      VENDEDOR.NEXT;
      END;

      RzComboBox1.ItemIndex:=0;


     VENDEDOR.close;
     VENDEDOR.SQLConnection:=DM.SQLConnection1;
     VENDEDOR.CommandText:='SELECT ID_DEPTO, DESCRICAO FROM DEPARTAMENTOS ';
     VENDEDOR.Open;

     RzComboBox2.Items.Clear;
     RzComboBox2.Values.Clear;
     VENDEDOR.First;
     while NOT VENDEDOR.Eof do
      BEGIN
      RzComboBox2.Items.Add(VENDEDOR.FieldByName('DESCRICAO').AsString);
      RzComboBox2.VALUES.Add(VENDEDOR.FieldByName('ID_DEPTO').AsString);
      VENDEDOR.NEXT;
      END;

      RzComboBox2.ItemIndex:=0;


    vendedor.Free;
      RzDateTimeEdit1.Date:=date-30;
      RzDateTimeEdit2.Date:=now;







end;

procedure TFrm_RelVPorEspecie.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
 begin
{

 if Cli_Rel_ComEspecie.FieldByName('Porcentagem').AsFloat <>0 then
     begin
     if Cli_Rel_ComEspecieVALOR.AsFloat<>0 then
     BEGIN
     TOTAL:=TOTAL+(Cli_Rel_ComEspecieVALOR.AsFloat/100)*Cli_Rel_ComEspecie.FieldByName('Porcentagem').AsFloat;
     RLLabel5.Caption:=FloatToStrF((Cli_Rel_ComEspecieVALOR.AsFloat/100)*Cli_Rel_ComEspecie.FieldByName('Porcentagem').AsFloat,ffCurrency,15,2)
     END
     else
     RLLabel5.Caption:='R$0,00';
     end;

     RLLabel7.Caption:=FloatToStrF(TOTAL,ffCurrency,15,2);     }
end;

procedure TFrm_RelVPorEspecie.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

     query_soma.close;
        query_soma.params[2].AsInteger:=Cli_Rel_ComEspecieID_FUNCIONARIO.AsInteger;
  query_soma.open;
  RLMemo1.Lines.clear;
  RLMemo2.Lines.clear;
  query_soma.First;
  while not query_soma.Eof do
    begin
      RLMemo1.Lines.Add(Query_SomaESPECIE.AsString);
      RLMemo2.Lines.Add(FloatToStrF(Query_SomaSUM.AsFloat,ffCurrency,15,2));
      query_soma.next;
    end;


TOTAL:=0;
end;

end.
