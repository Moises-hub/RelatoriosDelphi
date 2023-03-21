unit UFrm_Rel_Comissao_Item;

interface

uses  Data.SqlExpr,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzPanel,
  RzRadGrp, RLReport, RzCmboBx, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Rel_Comissao_Item = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox4: TRzComboBox;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel17: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLPanel1: TRLPanel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLBand7: TRLBand;
    RLLabel8: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText7: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    Memo1: TMemo;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    CheckBox1: TCheckBox;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1CUSTO: TFloatField;
    FDQuery1DESCONTO: TFloatField;
    FDQuery1QNT: TFloatField;
    FDQuery1TOTAL: TBCDField;
    FDQuery1DIFERENCA: TFloatField;
    FDQuery1PERCENTUAL: TFloatField;
    FDQuery1MARGEM: TBCDField;
    FDQuery1VENDEDOR: TStringField;
    FDQuery1ID_VENDEDOR: TIntegerField;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1PRODUTO: TStringField;
    FDQuery1COMISSAO: TFloatField;
    FDQuery1COMISSAO_POR: TSingleField;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand4: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    FDQuery1id_ped: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Comissao_Item: TFrm_Rel_Comissao_Item;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Comissao_Item.Button1Click(Sender: TObject);
var
data : string;
begin
     case RzRadioGroup1.ItemIndex of
         0: data:='REL_COMICAO_MARGEM.DATA_FATURAMENTO';
         1: data:='cast(REL_COMICAO_MARGEM.DATA_HORA as date)';
     end;


        case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=RLLabel17.Caption+' Faturado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=RLLabel17.Caption+' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
        end;
        FDQuery1.close;
        FDQuery1.SQL.Text:='select distinct(rel_comicao_margem.id_pedido) as id_ped,'+
                           'REL_COMICAO_MARGEM.valor_custo as custo, ' +
                           'REL_COMICAO_MARGEM.valor_desconto as desconto, '+
                           'REL_COMICAO_MARGEM.QTDE as qnt, '+
                           'REL_COMICAO_MARGEM.valor_total as total, '+
                           'REL_COMICAO_MARGEM.diferenca as diferenca, '+
                           'REL_COMICAO_MARGEM.percentual as percentual, '+
                           'cast(REL_COMICAO_MARGEM.MARGEM as decimal(15,2)) as margem, '+
                           'REL_COMICAO_MARGEM.vendedor, '+
                           'REL_COMICAO_MARGEM.id_vendedor, '+
                           'REL_COMICAO_MARGEM.id_produto, '+
                           'REL_COMICAO_MARGEM.produto, '+
                           'estoque.comissao as comissao_por, ' +
                           '(REL_COMICAO_MARGEM.diferenca * (estoque.comissao/100))AS COMISSAO ' +
                           'from '+
                           'REL_COMICAO_MARGEM '+
                           'left join funcionarios on(funcionarios.id_funcionario = REL_COMICAO_MARGEM.id_vendedor) '+
                           'LEFT JOIN estoque ON ESTOQUE.id_pedido = REL_COMICAO_MARGEM.id_pedido and  estoque.id_produto = REL_COMICAO_MARGEM.id_produto AND estoque.id_funcionario = rel_comicao_margem.id_vendedor '+
                           'where  (('+DATA+' >=:INI )AND ('+DATA+' <=:FIM)) and (REL_COMICAO_MARGEM.tipo =1) AND ((funcionarios.TIPO <> 6)) and  (REL_COMICAO_MARGEM.status = 2) '+
                           RzComboBox4.Value+RzComboBox1.Value+' '+
                           'order by REL_COMICAO_MARGEM.VENDEDOR';
                       FDQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       FDQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;

        Memo1.Lines.Text:=FDQuery1.SQL.Text;
        FDQuery1.open;

        if CheckBox1.Checked = false then
           begin
             RLLabel5.Visible:=false;
             RLDBText5.Visible:=false;
             RLLabel21.visible:=false;
             RLLabel12.Visible:=false;
             RLLabel6.Visible:=false;
             RLLabel18.Visible:=false;
           end
           else
           begin
             RLLabel5.Visible:=true;
             RLDBText5.Visible:=true;
             RLLabel21.visible:=true;
             RLLabel12.Visible:=true;
             RLLabel6.Visible:=true;
             RLLabel18.Visible:=true;
           end;

        if FDQuery1.RecordCount<>0 then
        RLReport1.PreviewModal
        else
        ShowMessage('Nenhum Registro encontrado!!');


end;

procedure TFrm_Rel_Comissao_Item.FormShow(Sender: TObject);
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
   RzComboBox1.Values.Add(' ');
          RzComboBox1.ItemIndex :=0;
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox1.Items.Add(alimenta.FieldByName('nome').AsString);
      RzComboBox1.Values.Add(' AND REL_COMICAO_MARGEM.id_vendedor ='+alimenta.FieldByName('id_funcionario').AsString);
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

      RzComboBox4.Items.Add('TODOS');
   RzComboBox4.Values.Add(' ');
   while NOT ALIMENTA.Eof do
    begin
      RzComboBox4.Items.Add(alimenta.FieldByName('descricao').AsString);
      RzComboBox4.Values.Add(' AND REL_COMICAO_MARGEM.id_vendedor ='+alimenta.FieldByName('ID_DEPTO').AsString);
      ALIMENTA.next;
    end;

       RzComboBox4.ItemIndex :=0;
   //Categoria

   Alimenta.Destroy;

   RzDateTimeEdit1.AsDateTime:=date-30;
   RzDateTimeEdit2.AsDateTime:=date;
end;

procedure TFrm_Rel_Comissao_Item.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
 VAR
 QUERYSOMA : TFDQUERY;
data : string;
begin
     case RzRadioGroup1.ItemIndex of
         0: data:='REL_COMICAO_MARGEM.DATA_FATURAMENTO';
         1: data:='cast(REL_COMICAO_MARGEM.DATA_HORA as date)';
     end;


        case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=RLLabel17.Caption+' Faturado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=RLLabel17.Caption+' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
        end;
         QUERYSOMA:=TFDQuery.Create(SELF);
         QUERYSOMA.Connection:=dm.FDConnection1;
       QUERYSOMA.SQL.Text:='select SUM(REL_COMICAO_MARGEM.valor_custo) as custo, ' +
                           'SUM(REL_COMICAO_MARGEM.valor_total) as total, '+
                           'SUM((REL_COMICAO_MARGEM.diferenca * (estoque.comissao/100)))AS COMISSAO ' +
                           'from '+
                           'REL_COMICAO_MARGEM '+
                           'left join funcionarios on(funcionarios.id_funcionario = REL_COMICAO_MARGEM.id_vendedor) '+
                           'LEFT JOIN estoque ON ESTOQUE.id_pedido = REL_COMICAO_MARGEM.id_pedido and  estoque.id_produto = REL_COMICAO_MARGEM.id_produto AND estoque.id_funcionario = rel_comicao_margem.id_vendedor '+
                           'where  (('+DATA+' >=:INI )AND ('+DATA+' <=:FIM)) and (REL_COMICAO_MARGEM.tipo =1) AND ((funcionarios.TIPO <> 6)) and  (REL_COMICAO_MARGEM.status = 2) '+
                           RzComboBox4.Value+RzComboBox1.Value;
                           QUERYSOMA.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       QUERYSOMA.Params[1].AsDate:=RzDateTimeEdit2.Date;

        QUERYSOMA.open;
        RLLabel20.Caption:=FloatToStrF(QUERYSOMA.FieldByName('TOTAL').AsFloat,ffCurrency,15,2);
        RLLabel21.Caption:=FloatToStrF(QUERYSOMA.FieldByName('custo').AsFloat,ffCurrency,15,2);
        RLLabel22.Caption:=FloatToStrF(QUERYSOMA.FieldByName('comissao').AsFloat,ffCurrency,15,2);

        QUERYSOMA.free;
end;

procedure TFrm_Rel_Comissao_Item.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  VAR
 QUERYSOMA : TFDQUERY;
data : string;
begin
     case RzRadioGroup1.ItemIndex of
         0: data:='REL_COMICAO_MARGEM.DATA_FATURAMENTO';
         1: data:='cast(REL_COMICAO_MARGEM.DATA_HORA as date)';
     end;


        case RzRadioGroup1.ItemIndex of
           0: RLLabel17.Caption:=' Faturado no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
           1: RLLabel17.Caption:=' Emitido no Período de '+RzDateTimeEdit1.text+' à '+RzDateTimeEdit2.Text;
        end;
         QUERYSOMA:=TFDQuery.Create(SELF);
         QUERYSOMA.Connection:=dm.FDConnection1;
       QUERYSOMA.SQL.Text:='select SUM(REL_COMICAO_MARGEM.valor_custo) as custo, ' +
                           'SUM(REL_COMICAO_MARGEM.valor_total) as total, '+
                           'SUM((REL_COMICAO_MARGEM.diferenca * (estoque.comissao/100)))AS COMISSAO ' +
                           'from '+
                           'REL_COMICAO_MARGEM '+
                           'left join funcionarios on(funcionarios.id_funcionario = REL_COMICAO_MARGEM.id_vendedor) '+
                           'LEFT JOIN estoque ON ESTOQUE.id_pedido = REL_COMICAO_MARGEM.id_pedido and  estoque.id_produto = REL_COMICAO_MARGEM.id_produto AND estoque.id_funcionario = rel_comicao_margem.id_vendedor '+
                           'where  (('+DATA+' >=:INI )AND ('+DATA+' <=:FIM)) and (REL_COMICAO_MARGEM.tipo =1) AND ((funcionarios.TIPO <> 6)) and  (REL_COMICAO_MARGEM.status = 2) and estoque.status = 1 '+
                           RzComboBox4.Value+' and REL_COMICAO_MARGEM.id_vendedor ='+FDQuery1ID_VENDEDOR.AsString;
                           QUERYSOMA.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       QUERYSOMA.Params[1].AsDate:=RzDateTimeEdit2.Date;

        QUERYSOMA.open;
        RLLabel10.Caption:=FloatToStrF(QUERYSOMA.FieldByName('TOTAL').AsFloat,ffCurrency,15,2);
        RLLabel12.Caption:=FloatToStrF(QUERYSOMA.FieldByName('custo').AsFloat,ffCurrency,15,2);
        RLLabel13.Caption:=FloatToStrF(QUERYSOMA.FieldByName('comissao').AsFloat,ffCurrency,15,2);

        QUERYSOMA.free;
end;

end.
