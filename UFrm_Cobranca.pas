unit UFrm_Cobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzPanel, RzRadGrp, Vcl.Mask, RzEdit, RzCmboBx, Vcl.ExtCtrls,
  Data.FMTBcd, Data.SqlExpr, RLReport, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TFrm_Cobranca = class(TForm)
    RzPanel1: TRzPanel;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    Button1: TButton;
    Label4: TLabel;
    RzComboBox3: TRzComboBox;
    Label6: TLabel;
    RzComboBox4: TRzComboBox;
    Label7: TLabel;
    RzComboBox5: TRzComboBox;
    SQLQuery1: TSQLQuery;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    RLDetailGrid1: TRLDetailGrid;
    RLPanel1: TRLPanel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel17: TRLLabel;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand5: TRLBand;
    RLLabel21: TRLLabel;
    RzRadioGroup2: TRzRadioGroup;
    RzComboBox6: TRzComboBox;
    Label8: TLabel;
    RLLabel22: TRLLabel;
    RLLabel28: TRLLabel;
    sqlsoma: TSQLQuery;
    Percentual: TSQLQuery;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    SQL_Juros: TSQLDataSet;
    Label9: TLabel;
    Memo2: TMemo;
    Button2: TButton;
    Memo1: TMemo;
    RzComboBox2: TRzComboBox;
    Label5: TLabel;
    RLDBText8: TRLDBText;
    Query_Filtro: TFDQuery;
    Ds_filtro: TDataSource;
    Query_FiltroEMISSAO: TDateField;
    Query_FiltroVENCIMENTO: TDateField;
    Query_FiltroLIQUIDACAO: TDateField;
    Query_FiltroDC: TSmallintField;
    Query_FiltroC_CUSTO: TIntegerField;
    Query_FiltroID_CLIENTE: TIntegerField;
    Query_FiltroENDERECO: TStringField;
    Query_FiltroN_DOC: TStringField;
    Query_FiltroPARCELA: TStringField;
    Query_FiltroVALOR: TBCDField;
    Query_FiltroDIAS: TSingleField;
    Query_FiltroDIFERENCA: TFloatField;
    Query_FiltroCORRIGIDO: TFloatField;
    Query_FiltroID_ESPECIE: TIntegerField;
    Query_FiltroID_REGIAO: TIntegerField;
    Query_FiltroID_VENDEDOR: TIntegerField;
    Query_FiltroSTATUS: TSmallintField;
    Query_FiltroCLASSIFICACAO: TSmallintField;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    Query_FiltroPAGO: TBCDField;
    RLDBText14: TRLDBText;
    Query_FiltroDESCRICAO: TStringField;
    Query_FiltroNOME: TStringField;
    Query_FiltroFONE_RES: TStringField;
    Query_FiltroCELULAR: TStringField;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    Query_FiltroCLIENTE: TStringField;
    Query_FiltroID_CONTA: TIntegerField;
    RLDBText6: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    Query_Soma_Cliente: TFDQuery;
    DS_Soma_Cliente: TDataSource;
    Query_Soma_ClienteVALOR: TBCDField;
    Query_Soma_ClienteDIFERENCA: TFloatField;
    Query_Soma_ClienteCORRIGIDO: TFloatField;
    Query_Soma_ClientePAGO: TBCDField;
    Memo3: TMemo;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    Memo4: TMemo;
    Query_FiltroESPECIE: TStringField;
    RLLabel14: TRLLabel;
    RLDBText1: TRLDBText;
    Query_FiltroID_PEDIDO: TIntegerField;
    RLLabel15: TRLLabel;
    RLDBText17: TRLDBText;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);

    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cobranca: TFrm_Cobranca;

implementation

{$R *.dfm}

uses UDM, UFrm_ClassificacaoCLI;

procedure TFrm_Cobranca.Button1Click(Sender: TObject);
var
data,dc : string;
soma,qsoma : tfdquery;
begin

        case RzRadioGroup1.ItemIndex of
         0 : data := ' RELATORIO_TITULOS.emissao ';
         1 : data := ' RELATORIO_TITULOS.vencimento ';
         2 : data := ' RELATORIO_TITULOS.liquidacao ';
        end;

         case RzRadioGroup2.ItemIndex of
           0: dc:=' and DC = 1 ';
           1: dc:=' and DC = 2 ';
         end;



                                 Query_Filtro.Close;
                                 Query_Filtro.SQL.Text :=' select * from RELATORIO_TITULOS '+
                                                         ' where (('+data+' >=:ini) and ('+data+'<=:fin)) '+
                                                         dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text+' order by nome';
                                 query_filtro.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 query_filtro.Params[1].AsDate:=RzDateTimeEdit2.Date;





                                 Query_Soma_Cliente.Close;
                                 Query_Soma_Cliente.SQL.Text:='select sum(valor)as valor, ' +
                                                              '       sum(diferenca)as diferenca, ' +
                                                              '       sum(corrigido)as corrigido, ' +
                                                              '       sum(pago)as pago ' +
                                                              '        from RELATORIO_TITULOS '+
                                                              ' where (('+data+' >=:ini) and ('+data+'<=:fin)) '+
                                                         dc+RzComboBox3.Value+RzComboBox1.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text+' and  id_cliente =:id';





                                 soma:=tfdquery.Create(self);
                                 soma.Connection:=DM.FDConnection1;
                                 try
                                 soma.SQL.Text:='select first 1' +
                                                '((select sum(relatorio_titulos.valor) from relatorio_titulos where  RELATORIO_TITULOS.vencimento <= current_date and '+
                                                '(('+data+' >=:ini) and ('+data+'<=:fin))'+dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+RzComboBox6.Value+
                                                ' and status = 0 '+Memo2.Lines.Text+')/'+
                                                '(select sum(relatorio_titulos.valor) from relatorio_titulos where '+
                                                '(('+data+' >=:ini) and ('+data+'<=:fin))'+dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+RzComboBox6.Value+
                                                ' and status = 0 '+Memo2.Lines.Text+')'+
                                                '*100) as total from relatorio_titulos';

                                 soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                                 soma.Open();
                                 RLLabel3.Caption:=FloatToStrF(soma.FieldByName('total').AsFloat,ffnumber,15,2)+'%'
                                 except
                                 RLLabel3.Caption:='0%'
                                 end;

                                 soma.close;
                                 soma.SQL.Text:='select sum(relatorio_titulos.valor) from relatorio_titulos '+
                                                           ' where (('+data+' >=:ini) and ('+data+'<=:fin)) '+
                                                         dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text;
                                 soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                                 soma.Open();
                                 RLLabel21.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);


                                 soma.close;
                                 soma.SQL.Text:='select sum(relatorio_titulos.valor) from relatorio_titulos where RELATORIO_TITULOS.vencimento <= current_date '+
                                                           ' and (('+data+' >=:ini) and ('+data+'<=:fin)) '
                                                         +dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+RzComboBox6.Value+
                                                       ' and status = 0 '+Memo2.Lines.Text;
                                 soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                                 soma.Open();
                                 RLLabel7.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);



                                 soma.close;
                                 soma.SQL.Text:='select sum(corrigido) from relatorio_titulos '+
                                                  ' where ( vencimento > current_date) '+
                                                         dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text;
                                 soma.Open();
                                 RLLabel5.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);



                                 soma.close;
                                 soma.SQL.Text:='select sum(valor) from relatorio_titulos '+
                                                  ' where ( vencimento > current_date) '+
                                                         dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text;
                                 soma.Open();
                                 RLLabel22.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);


                                 soma.close;
                                 soma.SQL.Text:='select sum(corrigido) from relatorio_titulos '+
                                                  ' where (('+data+' >=:ini) and ('+data+'<=:fin)) '+
                                                         dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text;
                                 soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                                 soma.Open();
                                 RLLabel6.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);



                                 soma.close;
                                 soma.SQL.Text:='select sum(valor),sum(pago) from relatorio_titulos '+
                                                 ' where (('+data+' >=:ini) and ('+data+'<=:fin)) '+
                                                         dc+RzComboBox3.Value+RzComboBox5.Value+RzComboBox1.Value+RzComboBox4.Value+
                                                         RzComboBox6.Value+' '+RzComboBox2.Value+Memo2.Lines.Text;
                                 soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                                 soma.Open();






      if RzComboBox2.ItemIndex = 1 then
     begin
      // RLLabel6.Visible:=false;
       RLDBText13.Visible:=false;
       RLLabel4.Visible:=false;
       RLDBText12.Visible:=false;
       RLLabel19.Visible:=false;
       rllabel13.Caption:='Valor Pago';
       RLDBText14.DataField:='pago';
       RLDBText16.DataField:='pago';
       RLLabel28.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);
     end
     else
     begin
      // RLLabel6.Visible:=true;
       RLDBText13.Visible:=true;
       RLLabel4.Visible:=true;
       RLDBText12.Visible:=true;
       RLLabel19.Visible:=true;
       rllabel13.Caption:='Corrigido';
       RLDBText14.DataField:='CORRIGIDO';
       RLDBText16.DataField:='CORRIGIDO';
       RLLabel28.Caption:=FloatToStrF(soma.FieldByName('sum').AsFloat,ffCurrency,15,2);
     end;



                                 soma.close;
                                 soma.Free;


                     Query_Filtro.open;


                   if Query_Filtro.RecordCount<>0 then
                      RLReport1.PreviewModal
                      else
                      ShowMessage('não foi encontrado nenhum registro!');










(*tot:=0;

sql_juros.Close;
sql_juros.Open;

  Memo2.Lines.Clear;

if RzComboBox2.ItemIndex = 1 then
     begin
       RLLabel6.Visible:=false;
       RLLabel5.Visible:=false;
       RLLabel4.Visible:=false;
       RLLabel20.Visible:=false;
       RLLabel19.Visible:=false;
       rllabel13.Caption:='Valor Pago';
     end
     else
     begin
       RLLabel6.Visible:=true;
       RLLabel5.Visible:=true;
       RLLabel4.Visible:=true;
       RLLabel20.Visible:=true;
       RLLabel19.Visible:=true;
       rllabel13.Caption:='Corrigido';
     end;


      case RzRadioGroup1.ItemIndex of
           0: data:=' CONTAS.DATA_EMISSAO ';
           1: data:=' CONTAS.DATA_VENCIMENTO ';
           2: data:=' CONTAS.DATA_PAGAMENTO ';
      end;


           case RzRadioGroup2.ItemIndex of
           0: dc:='1';
           1: dc:='2';

      end;

            case RzRadioGroup2.ItemIndex of
             0: RLLabel17.Caption:='Contas á Receber '+RzComboBox2.Text;
             1: RLLabel17.Caption:='Contas á Pagar '+RzComboBox2.Text;
            end;



       case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=RLLabel17.Caption+' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=RLLabel17.Caption+' Vencido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           2: RLLabel17.Caption:=RLLabel17.Caption+' Liquidado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
      end;



                 percentual.Close;
                 percentual.SQL.Clear;
                 percentual.sql.add('select sum(contas.valor)as soma from contas LEFT JOIN CLIENTES ON(CLIENTES.ID_CLIENTE = CONTAS.ID_CLIENTE) where contas.data_vencimento<=current_date and '+RzComboBox2.Value+' '+
                                         ' and contas.dc ='+dc+' and (('+data+' >=:ini)  and ('+data+' <=:fim ))');
                                          percentual.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                          percentual.Params[1].AsDate:=RzDateTimeEdit2.Date;

                   sqlsoma.Close;
                   sqlsoma.SQL.Clear;
                   sqlsoma.sql.add('select sum(contas.valor_pago)as soma from contas LEFT JOIN CLIENTES ON(CLIENTES.ID_CLIENTE = CONTAS.ID_CLIENTE) where  '+RzComboBox2.Value+' '+
                                         ' and contas.dc ='+dc+' and (('+data+' >=:ini  and '+data+' <=:fim))');
                  //   Memo2.Text:=sqlsoma.SQL.Text;



    dm.CD_Cobranca.Close;
    dm.CD_Cobranca.CommandText:='select  contas.*, ' +
                                'clientes.nome, ' +
                                'clientes.id_cliente, ' +
                                'clientes_dados.endereco, '+
                                'clientes_dados.numero, '+
                                'clientes_dados.complemento, '+
                                'clientes_dados.bairro , '+
                                'regioes.cidade, '+
                                'regioes.uf, '+
                                'clientes_dados.fone_res, ' +
                                'clientes_dados.celular, ' +
                                'clientes_dados.cep  ' +
                                'from contas ' +
                                'left join clientes on(clientes.id_cliente = contas.id_cliente) ' +
                                'left join clientes_dados on(clientes_dados.id_cliente = clientes.id_cliente) ' +
                                'left join regioes on(regioes.id_regiao = clientes.id_regiao) ' +
                                'where (('+data+' >=:ini  and '+data+' <=:fim)) and contas.DC ='+dc+' AND '+RzComboBox2.Value;


                                       if RzComboBox5.ItemIndex = 0 then
                                      else
                                      begin
                                      dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' and CONTAS.ID_CLIENTE ='+RzComboBox5.Value;
                                       percentual.sql.add(' and CONTAS.ID_CLIENTE ='+RzComboBox5.Value);
                                      sqlsoma.sql.add(' and CONTAS.ID_CLIENTE ='+RzComboBox5.Value);
                                      RLLabel17.Caption:=RLLabel17.Caption+' Cliente '+RzComboBox5.Text;
                                      end;


                                      if RzComboBox3.ItemIndex = 0 then
                                      else
                                      begin
                                      dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' and CONTAS.ID_DEPTO ='+RzComboBox3.Value;
                                       percentual.sql.add(' and CONTAS.ID_DEPTO ='+RzComboBox3.Value);
                                      sqlsoma.sql.add(' and CONTAS.ID_DEPTO ='+RzComboBox3.Value);
                                      RLLabel17.Caption:=RLLabel17.Caption+' centro de Custo '+RzComboBox3.Text;
                                      end;

                                     if Memo2.lines.Count = 0 then
                                      else
                                      begin
                                      dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' and ('+Memo2.Text+')';
                                      percentual.sql.add(' and ('+Memo2.Text+')');
                                      sqlsoma.sql.add('  and ('+Memo2.Text+')');
                                      end;

                                      if RzComboBox4.ItemIndex=0 then
                                      ELSE
                                      begin
                                      dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' and regioes.id_regiao ='+RzComboBox4.Value;
                                       percentual.sql.add(' and regioes.id_regiao ='+RzComboBox4.Value);
                                      sqlsoma.sql.add(' and regioes.id_regiao ='+RzComboBox4.Value);
                                      RLLabel17.Caption:=RLLabel17.Caption+' da região '+RzComboBox4.Text;
                                      end;

                                      if RzComboBox1.ItemIndex=0 then
                                      ELSE
                                      begin
                                      dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' and CONTAS.ID_ESPECIE ='+RzComboBox1.Value;
                                       percentual.sql.add(' and CONTAS.ID_ESPECIE ='+RzComboBox1.Value);
                                      sqlsoma.sql.add(' and CONTAS.ID_ESPECIE ='+RzComboBox1.Value);
                                      RLLabel17.Caption:=RLLabel17.Caption+' espécie '+RzComboBox1.Text;
                                      end;

                                       if RzComboBox6.ItemIndex=0 then
                                      ELSE
                                      begin
                                      dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' and CONTAS.ID_vendedor ='+RzComboBox6.Value;
                                       percentual.sql.add(' and CONTAS.ID_vendedor ='+RzComboBox1.Value);
                                      sqlsoma.sql.add('and CONTAS.ID_vendedor ='+RzComboBox1.Value);
                                       RLLabel17.Caption:=RLLabel17.Caption+' vendedor '+RzComboBox6.Text;

                                      end;

                              Dm.CD_Cobranca.CommandText:=dm.CD_Cobranca.CommandText+' order by clientes.nome ';
                              DM.CD_Cobranca.Params[0].AsDate:=RzDateTimeEdit1.Date;
                              DM.CD_Cobranca.Params[1].AsDate:=RzDateTimeEdit2.Date;
                              Memo2.lines.Text:=dm.CD_Cobranca.CommandText;
                              DM.CD_Cobranca.open;


                           sqlsoma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                          sqlsoma.Params[1].AsDate:=RzDateTimeEdit2.Date;

                         sqlsoma.Open;

                          Memo2.Lines.Text:=Dm.CD_Cobranca.CommandText;

                   percentual.Open;

                  RLLabel21.Caption:=FloatToStr(percentual.FieldByName('soma').AsFloat);

                     Memo3.Lines.Add(Percentual.SQL.Text);
                     Memo4.Lines.Add(dm.CD_Cobranca.CommandText);

                   if dm.CD_Cobranca.RecordCount<>0 then
                      RLReport1.PreviewModal
                      else
                      ShowMessage('não foi encontrado nenhum registro!');


                 RLReport1.Refresh;
                               {
            SQLQuery1.Close;
            SQLQuery1.SQL.Clear;
            SQLQuery1.SQL.Add('select * from rel_ic_listacontas WHERE ID_CONTA ='+DM.CD_CobrancaID_CONTA.AsString);
            SQLQuery1.Open;  *)
end;

procedure TFrm_Cobranca.Button2Click(Sender: TObject);
begin
frm_classificacaoCLI:=tfrm_classificacaoCLI.create(self);
Frm_ClassificacaoCLI.showmodal;
end;

procedure TFrm_Cobranca.Button3Click(Sender: TObject);
//var
//data  : string;
begin
          {
      case RzRadioGroup1.ItemIndex of
           0: rllabel1.Caption:='Relatório de Cobrança por data de Emissão período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
           1: rllabel1.Caption:='Relatório de Cobrança por data de Vencimento período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
           2: rllabel1.Caption:='Relatório de Cobrança por data de Pagamento período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
      end; }

RLReport1.PreviewModal;
end;

procedure TFrm_Cobranca.FormCreate(Sender: TObject);
begin
       //ALIMENTAR DPTO
          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_CENTRO, descricao from CENTRO_CUSTOS');
          SQLQUERY1.Open;
          RzComboBox3.Items.Clear;
          RzComboBox3.Values.Clear;
          RzComboBox3.Items.Add('<TODOS>');
          RzComboBox3.Values.Add(' ');

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox3.Items.Add(SQLQuery1.FieldByName('DESCRICAO').AsString);
             RzComboBox3.Values.Add(' and c_custo ='+SQLQuery1.FieldByName('ID_CENTRO').AsString);
             SQLQuery1.Next;
             END;




            //ALIMENTAR CLIENTES
          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_CLIENTE, NOME from CLIENTES WHERE CLASSIFICACAO <>2 order by NOME');
          SQLQUERY1.Open;
          RzComboBox5.Items.Clear;
          RzComboBox5.Values.Clear;
          RzComboBox5.Items.Add('<TODOS>');
          RzComboBox5.Values.Add(' ');

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox5.Items.Add(SQLQuery1.FieldByName('NOME').AsString);
             RzComboBox5.Values.Add(' and (id_cliente ='+SQLQuery1.FieldByName('ID_CLIENTE').AsString+')');
             SQLQuery1.Next;
             END;



                         //ALIMENTAR REGIAO
          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_REGIAO, CIDADE from REGIOES order by cidade');
          SQLQUERY1.Open;
          RzComboBox4.Items.Clear;
          RzComboBox4.Values.Clear;
          RzComboBox4.Items.Add('<TODOS>');
          RzComboBox4.Values.Add(' ');

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox4.Items.Add(SQLQuery1.FieldByName('CIDADE').AsString);
             RzComboBox4.Values.Add(' and (id_regiao ='+SQLQuery1.FieldByName('ID_REGIAO').AsString+')');
             SQLQuery1.Next;
             END;




                              //ALIMENTAR ESPECIE
          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_ESPECIE, DESCRICAO from ESPECIE_PGTO');
          SQLQUERY1.Open;
          RzComboBox1.Items.Clear;
          RzComboBox1.Values.Clear;
          RzComboBox1.Items.Add('<TODOS>');
          RzComboBox1.Values.Add(' ');

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox1.Items.Add(SQLQuery1.FieldByName('DESCRICAO').AsString);
             RzComboBox1.Values.Add(' and (id_especie ='+SQLQuery1.FieldByName('ID_ESPECIE').AsString+')');
             SQLQuery1.Next;
             END;


          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_FUNCIONARIO, NOME from FUNCIONARIOS order by nome');
          SQLQUERY1.Open;
          RzComboBox6.Items.Clear;
          RzComboBox6.Values.Clear;
          RzComboBox6.Items.Add('<TODOS>');
          RzComboBox6.Values.Add(' ');

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox6.Items.Add(SQLQuery1.FieldByName('NOME').AsString);
             RzComboBox6.Values.Add(' and (id_vendedor = '+SQLQuery1.FieldByName('ID_FUNCIONARIO').AsString+')');
             SQLQuery1.Next;
             END;

           rzComboBox6.ItemIndex:=0;


end;

procedure TFrm_Cobranca.FormShow(Sender: TObject);
begin
RzComboBox1.ItemIndex:=0;
RzComboBox2.ItemIndex:=0;
RzComboBox3.ItemIndex:=0;
RzComboBox4.ItemIndex:=0;
RzComboBox5.ItemIndex:=0;
RzDateTimeEdit1.AsDateTime:=date;
RzDateTimeEdit2.AsDateTime:=date;
end;

procedure TFrm_Cobranca.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLLabel14.Caption:=dm.CD_CobrancaENDERECO.asstring+', '+dm.CD_Cobrancanumero.AsString+' '+
  //                 copy(dm.CD_CobrancaCOMPLEMENTO.asstring,1,10)+' '+
    //               dm.CD_CobrancaBAIRRO.asstring+' '+
      //             dm.CD_CobrancaCIDADE.asstring+' - '+dm.CD_CobrancaUF.asstring;
end;

procedure TFrm_Cobranca.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

//rllabel22.Caption:='Total '+ FloatToStrF(total,ffcurrency,15,2);

end;

procedure TFrm_Cobranca.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin  {
rllabel28.Caption:=FloatToStrF(sqlsoma.FieldByName('soma').AsFloat,ffNumber,15,2);
RLLabel23.Caption:=FloatToStrF(Percentual.FieldByName('soma').AsFloat,ffNumber,15,2);
RLLabel22.Caption:=FloatToStrF((Percentual.FieldByName('soma').AsFloat)-(sqlsoma.FieldByName('soma').AsFloat),ffNumber,15,2);
try

rllabel21.Caption:=FloatToStrF((Percentual.FieldByName('soma').AsFloat /sqlsoma.FieldByName('soma').AsFloat)*100,ffNumber,15,2)+'%';

except
 rllabel21.Caption:=FloatToStrF(0,ffNumber,15,2)+'%';

end;                                            }
end;


procedure TFrm_Cobranca.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
                                 Query_Soma_Cliente.close;
                                 Query_Soma_Cliente.Params[0].AsDate:=RzDateTimeEdit1.Date;
                                 Query_Soma_Cliente.Params[1].AsDate:=RzDateTimeEdit2.Date;
                                 Query_Soma_Cliente.params[2].AsInteger:=Query_FiltroID_CLIENTE.AsInteger;
                                 Query_Soma_Cliente.OPEN;

                                 Memo3.Lines.Text:=Query_Soma_Cliente.SQL.Text;
end;

end.
