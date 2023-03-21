unit UFrm_PosPed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, RzPanel, RzRadGrp, Vcl.Mask, RzEdit, RzCmboBx, Vcl.ExtCtrls,
  Data.FMTBcd, Data.SqlExpr, RLReport, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, dxGDIPlusClasses,
  DosMove, RzButton;

type
  TFrm_PosPed = class(TForm)
    RzPanel1: TRzPanel;
    RzComboBox1: TRzComboBox;
    RzComboBox4: TRzComboBox;
    RzComboBox5: TRzComboBox;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    Label3: TLabel;
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
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLBand4: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    SpeedButton1: TSpeedButton;
    Query_Clientes: TFDQuery;
    Query_ClientesID_CLIENTE: TIntegerField;
    Query_ClientesNOME: TStringField;
    Query_ClientesFILTRO: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DS_Query_Clientes: TDataSource;
    RzComboBox2: TRzComboBox;
    Label5: TLabel;
    RzBitBtn1: TRzBitBtn;
    DosMove1: TDosMove;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PosPed: TFrm_PosPed;
  qnt, venda, custo, lucro, perc : real;
implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_PosPed.FormCreate(Sender: TObject);
var
Alimenta : TSQLQUERY;
begin
   alimenta:=TSQLQuery.Create(self);

   alimenta.SQLConnection:=dm.SQLConnection1;



    //Vendedor
   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select id_funcionario, nome from funcionarios where status =1');
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
 (*   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select ID_CLIENTE, NOME from CLIENTES WHERE CLASSIFICACAO <>2');
   ALIMENTA.Open;

   ALIMENTA.First;
  RzComboBox2.Items.Add('TODOS');
   RzComboBox2.Values.Add('TODOS');
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox2.Items.Add(alimenta.FieldByName('nome').AsString);
      RzComboBox2.Values.Add(alimenta.FieldByName('ID_CLIENTE').AsString);
      ALIMENTA.next;
    end;     *)

    Query_Clientes.Open();


  //dpto

   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select ID_DEPTO, descricao from DEPARTAMENTOS');
   ALIMENTA.Open;

   ALIMENTA.First;
   RzComboBox4.Items.Add('TODOS');
   RzComboBox4.Values.Add('TODOS');
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox4.Items.Add(alimenta.FieldByName('descricao').AsString);
      RzComboBox4.Values.Add(alimenta.FieldByName('ID_DEPTO').AsString);
      ALIMENTA.next;
    end;



   //Categoria

   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select ID_CATEGORIA, descricao from CATEGORIAS');
   ALIMENTA.Open;

   ALIMENTA.First;
   RzComboBox5.Items.Add('TODOS');
   RzComboBox5.Values.Add('TODOS');
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox5.Items.Add(alimenta.FieldByName('descricao').AsString);
      RzComboBox5.Values.Add(alimenta.FieldByName('ID_CATEGORIA').AsString);
      ALIMENTA.next;
    end;

   Alimenta.Destroy;

end;

procedure TFrm_PosPed.FormShow(Sender: TObject);
begin
RzComboBox1.ItemIndex:=0;
DBLookupComboBox1.KeyValue:=' ';
RzComboBox4.ItemIndex:=0;
RzComboBox5.ItemIndex:=0;
RzComboBox2.ItemIndex:=0;
RzDateTimeEdit1.AsDateTime:=date;
RzDateTimeEdit2.AsDateTime:=date;
end;

procedure TFrm_PosPed.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
VAR
DIF : REAL;
begin

   dif := (dm.CD_PosPedidoTOTAL.AsFloat - dm.CD_PosPedidocusto.asfloat);



             if (dm.CD_PosPedidoTOTAL.AsFloat =0) or (dm.CD_PosPedidocusto.asfloat =0) then
                 RLLabel25.Caption:=FloatToStrF(0,ffNumber,15,2)+'%'
                 else
                 RLLabel25.Caption:=FloatToStrF((dif/dm.CD_PosPedidototal.asfloat)*100,ffNumber,15,2)+'%';

      qnt:=qnt+dm.CD_PosPedidoQNT.AsFloat;
      RLLabel9.Caption:=FloatToStr(qnt);

      venda:=venda+dm.CD_PosPedidoTOTAL.AsFloat;
      RLLabel10.Caption:=FloatToStrF(venda,ffcurrency,15,2);

      custo:=custo+dm.CD_PosPedidoCUSTO.AsFloat;
      RLLabel12.Caption:=FloatToStrF(custo,ffcurrency,15,2);

      lucro:=lucro+(dm.CD_PosPedidoTOTAL.AsFloat-dm.CD_PosPedidoCUSTO.AsFloat);
      RLLabel13.Caption:=FloatToStrF(lucro,ffcurrency,15,2);

      if (custo<=0) or (venda<=0) then
          perc:=0
          else
        perc:=(lucro/venda)*100;
       RLLabel14.Caption:=FloatToStrf(perc,ffnumber,15,2)+'%';

      RLLabel8.Caption:=FloatToStrF(dm.CD_PosPedidoTOTAL.AsFloat-dm.CD_PosPedidoCUSTO.AsFloat,ffCurrency,15,2);

end;

procedure TFrm_PosPed.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
qnt:=0;
venda:=0;
custo:=0;
lucro:=0;
perc:=0;
end;

procedure TFrm_PosPed.RzBitBtn1Click(Sender: TObject);
var
data : string;
Total : TSQLQUERY;
porcento : real;
begin
      RLLabel17.Caption:='';
     case RzRadioGroup1.ItemIndex of
         0: data:='DATA_FATURAMENTO';
         1: data:='cast(DATA_HORA as date)';
     end;


        case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=RLLabel17.Caption+' Faturado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=RLLabel17.Caption+' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
        end;




    total:=TSQLQuery.Create(self);

   total.SQLConnection:=dm.SQLConnection1;

   total.sql.Add('select sum(REL_LUCROPREJUIZO.valor_custo)as custo, ' +
                      'sum(REL_LUCROPREJUIZO.valor_desconto)as desconto, ' +
                      'sum(REL_LUCROPREJUIZO.QTDE)as qnt, '+
                      'sum(REL_LUCROPREJUIZO.valor_total)as total, ' +
                      'sum(REL_LUCROPREJUIZO.saldo)as saldo, ' +
                      'sum(REL_LUCROPREJUIZO.diferenca)as diferenca, ' +
                      'sum(REL_LUCROPREJUIZO.percentual)as percentual ' +
                      'from REL_LUCROPREJUIZO ' +
                      'where '+DATA+' >=:INI AND '+DATA+' <=:FIM AND  OPERACAO =1 AND  tipo =1 and status =2 '+DBLookupComboBox1.KeyValue+' '+RzComboBox2.Value);







dm.CD_PosPedido.Close;
dm.CD_PosPedido.CommandText:='select sum(REL_LUCROPREJUIZO.valor_custo)as custo, '+
                             'sum(REL_LUCROPREJUIZO.valor_desconto)as desconto, '+
                             'sum(REL_LUCROPREJUIZO.valor_total)as total, '+
                             'sum(REL_LUCROPREJUIZO.saldo)as saldo, '+
                             'sum(REL_LUCROPREJUIZO.diferenca)as diferenca, '+
                             'sum(REL_LUCROPREJUIZO.percentual)as percentual, '+
                             'sum(REL_LUCROPREJUIZO.QTDE)as qnt, '+
                             'REL_LUCROPREJUIZO.id_vendedor, '+
                             'REL_LUCROPREJUIZO.categoria,'+
                             'REL_LUCROPREJUIZO.vendedor, '+
                             'REL_LUCROPREJUIZO.categoria from REL_LUCROPREJUIZO '+
                             'WHERE '+DATA+' >=:INI AND '+DATA+' <=:FIM AND OPERACAO =1  and tipo =1 and status =2 '+DBLookupComboBox1.KeyValue+
                             ' '+RzComboBox2.Value;

 if RzComboBox1.ItemIndex > 0 then
    begin
    DM.CD_PosPedido.CommandText:=DM.CD_PosPedido.CommandText+' AND id_vendedor ='+RzComboBox1.Value;
    total.SQL.Add('AND id_vendedor ='+RzComboBox1.Value);
    RLLabel17.Caption:=RLLabel17.Caption+' Vendedor '+RzComboBox1.Text;
    end;

 if DBLookupComboBox1.KeyValue <> ' ' then
    RLLabel17.Caption:=RLLabel17.Caption+' Cliente '+RzComboBox1.Text;



  if RzComboBox4.ItemIndex > 0 then
     begin
     DM.CD_PosPedido.CommandText:=DM.CD_PosPedido.CommandText+' AND id_depto ='+RzComboBox4.Value;
     total.SQL.Add(' AND id_depto ='+RzComboBox4.Value);
     RLLabel17.Caption:=RLLabel17.Caption+' Departamento '+RzComboBox4.Text;
     end;

   if RzComboBox5.ItemIndex > 0 then
      begin
      DM.CD_PosPedido.CommandText:=DM.CD_PosPedido.CommandText+' AND id_categoria ='+RzComboBox5.Value;
      total.SQL.add(' AND id_categoria ='+RzComboBox5.Value);
          RLLabel17.Caption:=RLLabel17.Caption+' Categoria '+RzComboBox5.Text;
      end;


      DM.CD_PosPedido.CommandText:=DM.CD_PosPedido.CommandText+' group by REL_LUCROPREJUIZO.categoria,vendedor, id_vendedor ';
      DM.CD_PosPedido.CommandText:=DM.CD_PosPedido.CommandText+' ORDER by vendedor ';

      dm.CD_PosPedido.Params[0].AsDate:=RzDateTimeEdit1.Date;
      dm.CD_PosPedido.Params[1].AsDate:=RzDateTimeEdit2.Date;

      total.Params[0].AsDate:=RzDateTimeEdit1.Date;
      total.Params[1].AsDate:=RzDateTimeEdit2.Date;



      total.Open;

         try
            if (total.FieldByName('diferenca').AsFloat =0) or (total.FieldByName('custo').AsFloat =0) then
                else
                porcento:=(total.FieldByName('diferenca').AsFloat/total.FieldByName('total').AsFloat)*100;

                RLLabel21.Caption:=FloatToStr(total.FieldByName('qnt').AsFloat);
                RLLabel22.Caption:=FloatToStrF(total.FieldByName('custo').AsFloat,ffCurrency,15,2);
                RLLabel23.Caption:=FloatToStrF(total.FieldByName('diferenca').AsFloat,ffCurrency,15,2);
                RLLabel24.Caption:=FloatToStrF(porcento,ffnumber,15,2);
                RLLabel27.Caption:=FloatToStrF(total.FieldByName('total').AsFloat,ffcurrency,15,2);
         except
         end;

    total.Destroy;

    DM.CD_PosPedido.OPEN;
    if dm.CD_PosPedido.RecordCount<>0 then

    RLReport1.PreviewModal
    else
    ShowMessage('Nenhum Registro encontrado!!');


end;

procedure TFrm_PosPed.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Relatório Lucro-Prejuizo/ Agrupado por Vendedor e Categoria/ Quantidade de itens, valor, e lucro prejuizo por categoria! ',mtInformation,[mbOK],0);
end;

end.
