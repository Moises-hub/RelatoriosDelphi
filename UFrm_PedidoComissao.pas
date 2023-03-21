unit UFrm_PedidoComissao;

interface

uses  math,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, RzPanel, RzRadGrp, Vcl.Mask, RzEdit, RzCmboBx, Vcl.ExtCtrls,
  Data.FMTBcd, Data.SqlExpr, RLReport, Vcl.Buttons, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_PedidoComissao = class(TForm)
    RzPanel1: TRzPanel;
    RzComboBox1: TRzComboBox;
    RzComboBox4: TRzComboBox;
    Label1: TLabel;
    Label6: TLabel;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel17: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLPanel1: TRLPanel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText7: TRLDBText;
    Memo1: TMemo;
    Comissao: TSQLQuery;
    RLBand4: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel28: TRLLabel;
    RLDBText6: TRLDBText;
    Query_Pedido: TSQLDataSet;
    CD_PosPedido: TClientDataSet;
    Prov_Pedido: TDataSetProvider;
    DS_PosPedido: TDataSource;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    CD_PosPedidoCUSTO: TFloatField;
    CD_PosPedidoDESCONTO: TFloatField;
    CD_PosPedidoQNT: TFloatField;
    CD_PosPedidoTOTAL: TFMTBCDField;
    CD_PosPedidoDIFERENCA: TFloatField;
    CD_PosPedidoPERCENTUAL: TFloatField;
    CD_PosPedidoVENDEDOR: TStringField;
    CD_PosPedidoID_PRODUTO: TFMTBCDField;
    CD_PosPedidoPRODUTO: TStringField;
    CD_PosPedidoID_VENDEDOR: TIntegerField;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel8: TRLLabel;
    RLLabel6: TRLLabel;
    RLReport2: TRLReport;
    RLBand8: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand9: TRLBand;
    RLDBText9: TRLDBText;
    RLPanel2: TRLPanel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLBand10: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand11: TRLBand;
    RLBand12: TRLBand;
    RLBand13: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText16: TRLDBText;
    RLSystemInfo4: TRLSystemInfo;
    RLBand14: TRLBand;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel42: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel33: TRLLabel;
    CD_PosPedidoMARGEM: TFMTBCDField;
    Query_ComicaoLucro: TFDQuery;
    Query_ComicaoLucroPEDIDO: TStringField;
    Query_ComicaoLucroFATURAMENTO: TDateField;
    Query_ComicaoLucroVENDEDOR: TStringField;
    Query_ComicaoLucroDESCRICAO: TStringField;
    Query_ComicaoLucroQTDE: TFloatField;
    Query_ComicaoLucroTOTAL: TBCDField;
    Query_ComicaoLucroCUSTO: TFloatField;
    Query_ComicaoLucroPERCENTUAL: TBCDField;
    Query_ComicaoLucroCOMICAO: TBCDField;
    DS_Query_ComicaoLucro: TDataSource;
    RLDBText15: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText19: TRLDBText;
    Query_ComicaoLucroMARGEM: TBCDField;
    Query_ComicaoLucroEMISSAO: TDateField;
    Query_ComicaoLucroID_VENDEDOR: TIntegerField;
    Query_ComicaoLucroID_DEPTO: TIntegerField;
    Query_Soma: TFDQuery;
    Query_SomaQNTD: TFloatField;
    Query_SomaTOTAL_VENDA: TBCDField;
    Query_SomaTOTAL_CUSTO: TFloatField;
    Query_SomaTOTAL_LUCROPREJU: TFloatField;
    Query_SomaPERCENTUAL: TBCDField;
    Query_SomaTOTAL_COMICAO: TBCDField;
    DS_Query_Soma: TDataSource;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    Query_Soma2: TFDQuery;
    FloatField1: TFloatField;
    BCDField1: TBCDField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    DS_Query_Soma2: TDataSource;
    RLDBText30: TRLDBText;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    RzRadioGroup1: TRzRadioGroup;
    CheckBox1: TCheckBox;
    Query_ComicaoLucroLUCRO_PREJUIZO: TFloatField;
    Query_SomaTOTAL_MARGEM: TBCDField;
    RzRadioGroup2: TRzRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
   var
   total,total1, porcentagem,porcentagem1 : real;
  end;

var
  Frm_PedidoComissao: TFrm_PedidoComissao;

implementation

{$R *.dfm}

uses UDM, UFrm_CadComissao, UFrmPrincipal;

procedure TFrm_PedidoComissao.Button1Click(Sender: TObject);
var
data : string;

begin
total1:=0;
porcentagem1:=0;













if RzRadioGroup2.ItemIndex = 0 then
 begin



   RLLabel17.Caption:='';
     case RzRadioGroup1.ItemIndex of
         0: data:='REL_COMICAO_MARGEM.DATA_FATURAMENTO';
         1: data:='cast(REL_COMICAO_MARGEM.DATA_HORA as date)';
     end;


        case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=RLLabel17.Caption+' Faturado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=RLLabel17.Caption+' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
        end;

        CD_PosPedido.close;

  if RzComboBox1.ItemIndex = 0 then
     begin

             CD_PosPedido.CommandText:='select REL_COMICAO_MARGEM.valor_custo as custo, ' +
                           'REL_COMICAO_MARGEM.valor_desconto as desconto, '+
                           'REL_COMICAO_MARGEM.QTDE as qnt, '+
                           'REL_COMICAO_MARGEM.valor_total as total, '+
                           'REL_COMICAO_MARGEM.diferenca as diferenca, '+
                           'REL_COMICAO_MARGEM.percentual as percentual, '+
                           'cast(REL_COMICAO_MARGEM.MARGEM as decimal(15,2)) as margem, '+
                           'REL_COMICAO_MARGEM.vendedor , '+
                           'REL_COMICAO_MARGEM.id_vendedor, '+
                           'REL_COMICAO_MARGEM.id_produto, '+
                           ' REL_COMICAO_MARGEM.produto '+
                           ' from '+
                           '  REL_COMICAO_MARGEM '+
                           ' left join funcionarios on(funcionarios.id_funcionario = REL_COMICAO_MARGEM.id_vendedor) '+
                             'where   REL_COMICAO_MARGEM.id_depto ='+RzComboBox4.Value+' '+
                           'and (('+DATA+' >=:INI )AND ('+DATA+' <=:FIM)) and (REL_COMICAO_MARGEM.tipo =1) AND ((funcionarios.TIPO <> 6))  and (REL_COMICAO_MARGEM.status = 2)  '+
                           'order by REL_COMICAO_MARGEM.ID_VENDEDOR ,REL_COMICAO_MARGEM.ID_PRODUTO';

             CD_PosPedido.Params[0].AsDate:=RzDateTimeEdit1.Date;
             CD_PosPedido.Params[1].AsDate:=RzDateTimeEdit2.Date;
             CD_PosPedido.open;
     end
     else
     begin
       CD_PosPedido.CommandText:='select REL_COMICAO_MARGEM.valor_custo as custo, ' +
                           'REL_COMICAO_MARGEM.valor_desconto as desconto, '+
                           'REL_COMICAO_MARGEM.QTDE as qnt, '+
                           'REL_COMICAO_MARGEM.valor_total as total, '+
                           'REL_COMICAO_MARGEM.diferenca as diferenca, '+
                           'REL_COMICAO_MARGEM.percentual as percentual, '+
                           'cast(REL_COMICAO_MARGEM.MARGEM as decimal(15,2)) as margem, '+
                           'REL_COMICAO_MARGEM.vendedor, '+
                           'REL_COMICAO_MARGEM.id_vendedor, '+
                           'REL_COMICAO_MARGEM.id_produto, '+
                           ' REL_COMICAO_MARGEM.produto '+
                           ' from '+
                           '  REL_COMICAO_MARGEM '+
                           ' left join funcionarios on(funcionarios.id_funcionario = REL_COMICAO_MARGEM.id_vendedor) '+
                           'where  (('+DATA+' >=:INI )AND ('+DATA+' <=:FIM)) and (REL_COMICAO_MARGEM.tipo =1) AND ((funcionarios.TIPO <> 6)) and  (REL_COMICAO_MARGEM.status = 2) '+
                           'and  (REL_COMICAO_MARGEM.id_depto ='+RzComboBox4.Value+') and (REL_COMICAO_MARGEM.id_vendedor =:fun)  '+
                           'order by REL_COMICAO_MARGEM.ID_VENDEDOR';
             CD_PosPedido.Params[0].AsDate:=RzDateTimeEdit1.Date;
             CD_PosPedido.Params[1].AsDate:=RzDateTimeEdit2.Date;
             CD_PosPedido.Params[2].Asstring:=RzComboBox1.Value;
             CD_PosPedido.open;
     end;
    Memo1.Lines.Clear;
    memo1.Lines.Add(Query_Pedido.CommandText);
    if CD_PosPedido.RecordCount<>0 then
        RLReport1.PreviewModal
        else
        ShowMessage('Nenhum Registro encontrado!!');
 end
  else
  begin
     case RzRadioGroup1.ItemIndex of
         0: data:=' where rel_comicao_lucroprejuizo.FATURAMENTO >=:i and rel_comicao_lucroprejuizo.FATURAMENTO <=:f ';
         1: data:=' where rel_comicao_lucroprejuizo.emissao >=:i and rel_comicao_lucroprejuizo.emissao <=:f ';
     end;

      if RzComboBox1.ItemIndex = 0 then
     begin
         Query_ComicaoLucro.close;
         Query_ComicaoLucro.sql.Text:='select  * from rel_comicao_lucroprejuizo '+data+' and rel_comicao_lucroprejuizo.id_depto ='+RzComboBox4.Value;
         Query_ComicaoLucro.Params[0].AsDate:=RzDateTimeEdit1.Date;
         Query_ComicaoLucro.Params[1].AsDate:=RzDateTimeEdit2.Date;
                  Query_Soma2.close;
         Query_Soma2.sql.Text:='select sum(QTDE) as qntd, ' +
                                     'sum(total)as total_venda, ' +
                                     'sum(custo)as total_custo, ' +
                                     'sum(lucro_prejuizo)as total_lucropreju, ' +
                                     'sum(margem)as total_margem, ' +
                                     'sum(percentual) as percentual, ' +
                                     'sum(comicao) as total_comicao ' +
                                     'from rel_comicao_lucroprejuizo '+
                                     data+' and rel_comicao_lucroprejuizo.id_depto ='+RzComboBox4.Value;
         Query_Soma2.Params[0].AsDate:=RzDateTimeEdit1.Date;
         Query_Soma2.Params[1].AsDate:=RzDateTimeEdit2.Date;


     end
     else
     begin
         Query_ComicaoLucro.close;
         Query_ComicaoLucro.sql.Text:='select  * from rel_comicao_lucroprejuizo '+data+' and rel_comicao_lucroprejuizo.id_depto ='+RzComboBox4.Value+' and id_vendedor =:v';
         Query_ComicaoLucro.Params[0].AsDate:=RzDateTimeEdit1.Date;
         Query_ComicaoLucro.Params[1].AsDate:=RzDateTimeEdit2.Date;
         Query_ComicaoLucro.Params[2].Asstring:=RzComboBox1.Value;



         Query_Soma2.close;
         Query_Soma2.sql.Text:='select sum(QTDE) as qntd, ' +
                                     'sum(total)as total_venda, ' +
                                     'sum(custo)as total_custo, ' +
                                     'sum(lucro_prejuizo)as total_lucropreju, ' +
                                     'sum(margem)as total_margem, ' +
                                     'sum(percentual) as percentual, ' +
                                     'sum(comicao) as total_comicao ' +
                                     'from rel_comicao_lucroprejuizo '+
                                     data+' and rel_comicao_lucroprejuizo.id_depto ='+RzComboBox4.Value+' and id_vendedor =:v';
         Query_Soma2.Params[0].AsDate:=RzDateTimeEdit1.Date;
         Query_Soma2.Params[1].AsDate:=RzDateTimeEdit2.Date;
         Query_Soma2.Params[2].Asstring:=RzComboBox1.Value;


     end;


       Query_ComicaoLucro.open;
       Query_Soma2.Open();
    if Query_ComicaoLucro.RecordCount<>0 then
        RLReport2.PreviewModal
        else
        ShowMessage('Nenhum Registro encontrado!!');


  end;


end;

procedure TFrm_PedidoComissao.FormCreate(Sender: TObject);
var
Alimenta : TSQLQUERY;
begin
   alimenta:=TSQLQuery.Create(self);

   alimenta.SQLConnection:=dm.SQLConnection1;



    //Vendedor
   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select id_funcionario, nome from funcionarios where status =1 and tipo = 3 order by nome');
   ALIMENTA.Open;

   ALIMENTA.First;
   RzComboBox1.Items.Add('TODOS');
   RzComboBox1.Values.Add('TODOS');
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox1.Items.Add(alimenta.FieldByName('nome').AsString);
      RzComboBox1.Values.Add(alimenta.FieldByName('id_funcionario').AsString);
      ALIMENTA.next;
    end;


   //Cliente


{   ALIMENTA.First;
   RzComboBox2.Items.Add('TODOS');
      RzComboBox2.Values.Add('TODOS');
         while NOT ALIMENTA.Eof do
             begin
                   RzComboBox2.Items.Add(alimenta.FieldByName('nome').AsString);
                         RzComboBox2.Values.Add(alimenta.FieldByName('ID_CLIENTE').AsString);
                               ALIMENTA.next;
                                   end;}


  //dpto

   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select ID_DEPTO, descricao from DEPARTAMENTOS');
   ALIMENTA.Open;

   ALIMENTA.First;
   RzComboBox4.Items.clear;
   RzComboBox4.Values.clear;
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox4.Items.Add(alimenta.FieldByName('descricao').AsString);
      RzComboBox4.Values.Add(alimenta.FieldByName('ID_DEPTO').AsString);
      ALIMENTA.next;
    end;



   //Categoria

   Alimenta.Destroy;

end;

procedure TFrm_PedidoComissao.FormShow(Sender: TObject);
begin
       if FrmPrincipal.RELCOMISSAO = 'R' then
          begin
          RzComboBox1.Value:=IntToStr(FrmPrincipal.LOGIN);
          RzComboBox1.Enabled:=false;
          RLLabel5.Visible:=false;
          RLLabel7.Visible:=false;
          RLDBResult1.Visible:=false;
          RLDBText5.Visible:=false;
          RLLabel22.Visible:=false;
          RLDBResult1.Visible:=false;
          RLLabel26.Visible:=false;
          RzRadioGroup2.Visible:=false;
             RLLabel7.Visible:=false;
            RLDBText8.Visible:=false;

          end
          else
          if FrmPrincipal.RELCOMISSAO = 'D' then
             RzComboBox1.ItemIndex:=0;
          RzComboBox4.ItemIndex:=0;
          RzDateTimeEdit1.AsDateTime:=date;
          RzDateTimeEdit2.AsDateTime:=date;
end;

procedure TFrm_PedidoComissao.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
VAR
comis : REAL;
begin




comissao.Close;
comissao.Params[0].Value:=RoundTo(CD_PosPedidoPERCENTUAL.Value,-2);
Comissao.Params[1].VALUE:=RoundTo(CD_PosPedidoPERCENTUAL.Value,-2);
comissao.Params[2].AsInteger:=CD_PosPedidoid_vendedor.AsInteger;
Comissao.Open;

 RLLabel9.Caption:=FloatToStrF(Comissao.FieldByName('PORCENTAGEM').AsFloat,ffnumber,15,2)+'%';
 comis := (CD_PosPedidoTOTAL.AsFloat)*(Comissao.FieldByName('PORCENTAGEM').AsFloat/100);

 RLLabel10.Caption:=FloatToStrF(comis,ffCurrency,15,2);

  total:=total+CD_PosPedidoTOTAL.AsFloat;
  porcentagem :=porcentagem+comis;

  RLLabel8.Caption:=FloatToStrF(total,ffCurrency,15,2);
  RLLabel6.Caption:=FloatToStrF(porcentagem,ffCurrency,15,2);



end;

procedure TFrm_PedidoComissao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel22.Caption:=FloatToStrF(total1,ffCurrency,15,2);
RLLabel23.Caption:=FloatToStrF(porcentagem1,ffCurrency,15,2);
end;

procedure TFrm_PedidoComissao.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
total1:=total1+total;
porcentagem1:=porcentagem1+porcentagem;
end;

procedure TFrm_PedidoComissao.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
total:=0;
porcentagem:=0;

end;

procedure TFrm_PedidoComissao.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  data : string;
begin

          case RzRadioGroup1.ItemIndex of
                   0: data:=' where rel_comicao_lucroprejuizo.FATURAMENTO >=:i and rel_comicao_lucroprejuizo.FATURAMENTO <=:f ';
                   1: data:=' where rel_comicao_lucroprejuizo.emissao >=:i and rel_comicao_lucroprejuizo.emissao <=:f ';
          end;




                           Query_Soma.close;
                           Query_Soma.sql.Text:='select sum(QTDE) as qntd, ' +
                                                       'sum(total)as total_venda, ' +
                                                       'sum(custo)as total_custo, ' +
                                                       'sum(lucro_prejuizo)as total_lucropreju, ' +
                                                       'CAST((100-((sum(custo))*100)/(sum(total)))AS DECIMAL(15,2)) as total_margem, ' +
                                                       'sum(percentual) as percentual, ' +
                                                       'sum(comicao) as total_comicao ' +
                                                       'from rel_comicao_lucroprejuizo '+
                                                       data+' and rel_comicao_lucroprejuizo.id_depto ='+RzComboBox4.Value+' and id_vendedor =:v';
                           Query_Soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                           Query_Soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                           Query_Soma.Params[2].AsInteger:=Query_ComicaoLucroID_VENDEDOR.AsInteger;

                       Query_Soma.open;
end;

procedure TFrm_PedidoComissao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if CheckBox1.Checked = false then
   begin
     RLLabel5.Visible:=false;
     RLDBText5.Visible:=false;
     RLDBResult1.Visible:=false;
     rldbresult4.Visible:=false;
     RLLabel25.Visible:=false;
   end
   else
   begin
     RLLabel5.Visible:=true;
     RLDBText5.Visible:=true;
     RLDBResult1.Visible:=true;
     rldbresult4.Visible:=true;
     RLLabel26.Visible:=true;
   end;
end;

procedure TFrm_PedidoComissao.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if CheckBox1.Checked = false then
   begin
     RLLabel25.Visible:=false;
     RLDBText13.Visible:=false;
     RLDBText25.Visible:=false;
     RLLabel42.Visible:=false;
     RLLabel2.Visible:=false;
   end
   else
   begin
     RLLabel25.Visible:=true;
     RLDBText13.Visible:=true;
     RLDBText25.Visible:=true;
     RLLabel42.Visible:=true;
     RLLabel2.Visible:=true;
   end;
end;

end.
