unit UFrm_Entrega_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit,
  RLReport, Vcl.ExtCtrls, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzRadGrp, RzButton;

type
  TFrm_Entrega_2 = class(TForm)
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox2: TRzComboBox;
    Label5: TLabel;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel30: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel13: TRLLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    RzComboBox1: TRzComboBox;
    Query_soma: TFDQuery;
    RzRadioGroup1: TRzRadioGroup;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    Memo3: TMemo;
    Memo4: TMemo;
    Button3: TButton;
    Label6: TLabel;
    Memo5: TMemo;
    Memo6: TMemo;
    Label7: TLabel;
    Button4: TButton;
    Button5: TButton;
    Label8: TLabel;
    Memo8: TMemo;
    Memo7: TMemo;
    Memo9: TMemo;
    Label9: TLabel;
    Button6: TButton;
    Memo10: TMemo;
    Memo11: TMemo;
    FDQuery2: TFDQuery;
    RzBitBtn1: TRzBitBtn;
    RLMemo1: TRLMemo;
    RLBand3: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel15: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel14: TRLLabel;
    FDQuery1CAST: TDateField;
    FDQuery1ID_PEDIDO: TIntegerField;
    FDQuery1ID_DPTO: TIntegerField;
    FDQuery1STATUS: TSmallintField;
    FDQuery1UF: TStringField;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1CLIENTE: TStringField;
    FDQuery1CIDADE: TStringField;
    FDQuery1PEDIDO: TStringField;
    FDQuery1PRODUTO: TStringField;
    FDQuery1ENDERECO_OBS: TMemoField;
    FDQuery1DATA_HORA_AGENDA: TDateField;
    FDQuery1QTDE: TBCDField;
    FDQuery1ENTREGUE_R: TBCDField;
    FDQuery1SALDO: TBCDField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    DEP,UF,STAT,data : STRING;
    sald : real;
  end;

var
  Frm_Entrega_2: TFrm_Entrega_2;

implementation

{$R *.dfm}

uses UDM, UFrm_UF, UFrm_Cidades, UFrm_Ent_Pedido, UFrm_Ent_Produtos,
  UFrm_Ent_Vendedor;

procedure TFrm_Entrega_2.Button1Click(Sender: TObject);
begin


    //   Memo3.Lines.Text:=fdquery1.SQL.Text;

end;

procedure TFrm_Entrega_2.Button2Click(Sender: TObject);
begin
FRM_UF:=TFrm_UF.Create(self);
Frm_UF.Memo1.Lines.Text:=Memo1.Lines.Text;
FRM_UF.Show;
end;

procedure TFrm_Entrega_2.Button3Click(Sender: TObject);
begin
frm_cidades:=tfrm_cidades.create(self);
frm_cidades.Memo1.Lines.Text:=Memo4.Lines.Text;
frm_cidades.ShowModal;

end;

procedure TFrm_Entrega_2.Button4Click(Sender: TObject);
begin
Frm_Ent_Pedido:=TFrm_Ent_Pedido.Create(self);
frm_cidades.Memo1.Lines.Text:=Memo6.Lines.Text;
Frm_Ent_Pedido.ShowModal;
end;

procedure TFrm_Entrega_2.Button5Click(Sender: TObject);
begin
 Frm_Ent_PRODUTOS:=TFrm_Ent_PRODUTOS.Create(self);
Frm_Ent_PRODUTOS.Memo1.Lines.Text:=Memo8.Lines.Text;
Frm_Ent_PRODUTOS.ShowModal;
end;

procedure TFrm_Entrega_2.Button6Click(Sender: TObject);
begin
 Frm_Ent_Vendedor:=TFrm_Ent_Vendedor.Create(self);
Frm_Ent_Vendedor.Memo1.Lines.Text:=Memo10.Lines.Text;
Frm_Ent_Vendedor.ShowModal;
end;

procedure TFrm_Entrega_2.FormShow(Sender: TObject);
var
CARREGA : TFDQuery;
begin
                    RzDateTimeEdit1.AsDateTime:=date-30;
                    RzDateTimeEdit2.AsDateTime:=date;

                   CARREGA:=TFDQuery.Create(SELF);
                   CARREGA.Connection:=FDQuery1.Connection;

                   CARREGA.SQL.Text:='SELECT ID_DEPTO,DESCRICAO FROM DEPARTAMENTOS';
                   CARREGA.Open();
                   rzComboBox2.Clear;
                   RzComboBox2.Values.Clear;
                   RzComboBox2.Items.Add('TODOS');
                   RzComboBox2.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox2.Items.Add(carrega.FieldByName('descricao').AsString);
                      RzComboBox2.Values.Add(' and (ID_DPTO ='+carrega.FieldByName('ID_DEPTO').AsString+')');
                      carrega.Next;
                    end;
                    RzComboBox2.ItemIndex := 0;
                    carrega.Close;
                    carrega.Free;
end;

procedure TFrm_Entrega_2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
               Query_soma.close;
                       Query_soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       Query_soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
                       Query_soma.Params[2].asinteger:=FDQuery1ID_CLIENTE.AsInteger;
                       Query_soma.Open();
                    //   Memo3.Lines.Add(Query_soma.SQL.Text);

                       RLLabel12.Caption:=FloatToStrF(query_soma.FieldByName('sum').asfloat,ffNumber,15,2);
end;

procedure TFrm_Entrega_2.RzBitBtn1Click(Sender: TObject);
begin

    case RzRadioGroup1.ItemIndex of
    0: data := ' RELATORIO_CARGAS_PEDIDOS.data_hora ';
    1: data := ' RELATORIO_CARGAS_PEDIDOS.data_hora_agenda ';
    end;



    fdquery1.close;
    fdquery1.SQL.Text:=' SELECT CAST(RELATORIO_CARGAS_PEDIDOS.data_hora AS DATE), ' +
                       '            relatorio_cargas_pedidos.id_pedido, '+
                       '            relatorio_cargas_pedidos.id_dpto, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.status, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.uf,' +
                       '            RELATORIO_CARGAS_PEDIDOS.id_cliente, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.cliente, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.cidade, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.pedido, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.produto, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.ENDERECO_OBS, '+
                       '       cast(RELATORIO_CARGAS_PEDIDOS.qtde as decimal (15,2))as qtde,' +
                       '       cast(RELATORIO_CARGAS_PEDIDOS.entregue_r as decimal  (15,2))as entregue_r, ' +
                       '       cast(RELATORIO_CARGAS_PEDIDOS.saldo as decimal  (15,2))as saldo, ' +
                       '            RELATORIO_CARGAS_PEDIDOS.data_hora_agenda ' +
                       '            from RELATORIO_CARGAS_PEDIDOS  ' +
                       ' where  ((CAST('+data+' AS DATE)) >=:i and (CAST('+data+' AS DATE)) <=:f ) ' +
                       RzComboBox2.value+Memo2.Lines.Text+Memo5.Lines.Text+' '+Memo7.Lines.Text+' '+
                       Memo9.Lines.Text+' '+Memo11.Lines.Text+' '+RzComboBox1.Value+
                       ' ORDER BY Cliente ';
                       FDQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       FDQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
     fdquery1.Open();







                   Query_soma.SQL.Text:=' SELECT    sum(RELATORIO_CARGAS_PEDIDOS.saldo)from RELATORIO_CARGAS_PEDIDOS '+
                                    ' where  ((CAST('+data+' AS DATE)) >=:i and (CAST('+data+' AS DATE)) <=:f ) ' +
                       RzComboBox2.value+Memo2.Lines.Text+Memo5.Lines.Text+' '+Memo7.Lines.Text+' '+
                       Memo9.Lines.Text+' '+Memo11.Lines.Text+' '+RzComboBox1.Value+' and id_cliente =:c';



     if RzComboBox2.Text<>'TODOS' then
        DEP :=' - Departamento '+RzComboBox2.Text
        else
        DEP :='';


   if RzComboBox1.Text<>'TODOS' then
        STAT :=' - STATUS '+RzComboBox1.Text+';'
        else
        STAT :=';';

         RLLabel13.Caption:='Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text+DEP+UF+STAT;




   fdquery2.close;
    fdquery2.SQL.Text:=' SELECT SUM(RELATORIO_CARGAS_PEDIDOS.saldo)as saldo ' +
                       '            from RELATORIO_CARGAS_PEDIDOS  ' +
                       ' where  ((CAST('+data+' AS DATE)) >=:i and (CAST('+data+' AS DATE)) <=:f ) ' +
                       RzComboBox2.value+Memo2.Lines.Text+Memo5.Lines.Text+' '+Memo7.Lines.Text+' '+
                       Memo9.Lines.Text+' '+Memo11.Lines.Text+' '+RzComboBox1.Value;

                       FDQuery2.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       FDQuery2.Params[1].AsDate:=RzDateTimeEdit2.Date;
     fdquery2.Open();

     RLLabel15.Caption:='TOTAL DE PRODUTOS A ENTREGAR: '+FloatToStrF(FDQuery2.FieldBYNAME('SALDO').AsFloat,ffNumber,15,2);


   fdquery2.close;
    fdquery2.SQL.Text:='SELECT ' +
                       'RELATORIO_CARGAS_PEDIDOS.produto, ' +
                       'sum(RELATORIO_CARGAS_PEDIDOS.saldo)as saldo ' +
                       'from RELATORIO_CARGAS_PEDIDOS ' +
                        ' where  ((CAST('+data+' AS DATE)) >=:i and (CAST('+data+' AS DATE)) <=:f ) ' +
                       RzComboBox2.value+Memo2.Lines.Text+Memo5.Lines.Text+' '+Memo7.Lines.Text+' '+
                       Memo9.Lines.Text+' '+Memo11.Lines.Text+' '+RzComboBox1.Value+' '+
                       'group by RELATORIO_CARGAS_PEDIDOS.produto ';

                         FDQuery2.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       FDQuery2.Params[1].AsDate:=RzDateTimeEdit2.Date;
      fdquery2.open;
      RLMemo1.Lines.clear;
      RLMemo2.Lines.clear;
      fdquery2.first;
      while not fdquery2.eof do
         begin
           RLMemo1.Lines.Add(copy(fdquery2.FieldByName('produto').AsString,1,50));
           RLMemo2.Lines.Add(FloatToStrF(FDQuery2.FieldBYNAME('SALDO').AsFloat,ffNumber,15,2));
           fdquery2.Next;
         end;




        if FDQuery1.RecordCount > 0 then

        RLReport1.PreviewModal
        else
        ShowMessage('nenhum registro encontrado!');

end;

end.
