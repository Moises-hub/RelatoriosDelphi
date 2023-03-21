unit UFrm_RelComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Buttons,
  Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RLReport, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, Data.SqlExpr;

type
  TFrm_RelComissao = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    RzComboBox1: TRzComboBox;
    Label3: TLabel;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLLabel15: TRLLabel;
    SQLQuery1: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    Comissao: TSQLQuery;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    ClientDataSet1VENDEDOR: TStringField;
    ClientDataSet1SOMA: TFloatField;
    ClientDataSet1ID_VENDEDOR: TIntegerField;
    ClientDataSet1PORCENTAGEM: TFMTBCDField;
    ClientDataSet1MULTIPLY: TFloatField;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    var
    soma : real;
  end;

var
  Frm_RelComissao: TFrm_RelComissao;

implementation

{$R *.dfm}

uses UFrm_CadComissao, UDM, UFrmPrincipal;

procedure TFrm_RelComissao.Button1Click(Sender: TObject);
begin      ClientDataSet1.close;
         if RzComboBox1.ItemIndex=0 then
             BEGIN
                       SQLQuery1.close;
                       sqlquery1.SQL.Clear;
                       sqlquery1.SQL.Add( 'select listavendas_simples.vendedor, ' +
                                          'sum(listavendas_simples.valor_total)as soma, ' +
                                          'listavendas_simples.id_vendedor, ' +
                                          'rel_cad_comicao.porcentagem, ' +
                                          '(sum(listavendas_simples.valor_total)/100)*rel_cad_comicao.porcentagem ' +
                                          'from listavendas_simples ' +
                                          'left join rel_comicao on(rel_comicao.id_funcionario = listavendas_simples.id_vendedor) ' +
                                          'left join rel_cad_comicao on(rel_cad_comicao.id = rel_comicao.id) ' +
                                          'where ((listavendas_simples.data_faturamento >=:i) and (listavendas_simples.data_faturamento <=:f))and '+
                                          '((rel_cad_comicao.vmin <=listavendas_simples.valor_total) and (rel_cad_comicao.vmax >=listavendas_simples.valor_total)) and '+
                                          '(listavendas_simples.operacao =1) AND (rel_cad_comicao.tipo =1) and (listavendas_simples.tipo =1) and (listavendas_simples.status = 2)' +
                                          'group by  listavendas_simples.vendedor,listavendas_simples.id_vendedor,rel_cad_comicao.porcentagem');

                       SQLQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       SQLQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
                       SQLQuery1.open;


             END
             else
             begin
                       SQLQuery1.close;
                       sqlquery1.SQL.Clear;
                       sqlquery1.SQL.Add( 'select listavendas_simples.vendedor, ' +
                                          'sum(listavendas_simples.valor_total)as soma, ' +
                                          'listavendas_simples.id_vendedor, ' +
                                          'rel_cad_comicao.porcentagem, ' +
                                          '(sum(listavendas_simples.valor_total)/100)*rel_cad_comicao.porcentagem ' +
                                          'from listavendas_simples ' +
                                          'left join rel_comicao on(rel_comicao.id_funcionario = listavendas_simples.id_vendedor) ' +
                                          'left join rel_cad_comicao on(rel_cad_comicao.id = rel_comicao.id) ' +
                                          'where ((listavendas_simples.data_faturamento >=:i) and (listavendas_simples.data_faturamento <=:f))and (listavendas_simples.id_vendedor =:ven) and'+
                                          '((rel_cad_comicao.vmin <=listavendas_simples.valor_total) and (rel_cad_comicao.vmax >=listavendas_simples.valor_total)) and '+
                                          '(listavendas_simples.operacao =1) AND (rel_cad_comicao.tipo =1) and (listavendas_simples.tipo =1) and (listavendas_simples.status = 2)' +
                                          'group by  listavendas_simples.vendedor,listavendas_simples.id_vendedor,rel_cad_comicao.porcentagem');

                       SQLQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
                       SQLQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
                       SQLQuery1.Params[2].Asstring:=RzComboBox1.Value;
                       SQLQuery1.open;

             end;
                  ClientDataSet1.open;
             RLReport1.PreviewModal;

         {    SQLQuery1.close;
             SQLQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
             SQLQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;

             if RzComboBox1.ItemIndex=0 then
             begin
                RLLabel12.Caption:='Período de '+RzDateTimeEdit1.Text+' á '+RzDateTimeEdit2.Text;
                            SQLQuery1.Params[2].TEXT:='%'+'%'

             end
                                            else
             begin
                SQLQuery1.Params[2].TEXT:='%'+RzComboBox1.TEXT+'%';
                                RLLabel12.Caption:='Período de '+RzDateTimeEdit1.Text+' á '+RzDateTimeEdit2.Text +' Vendedor: '+RzComboBox1.Text;
             end;

                 ClientDataSet1.Open;

                RLReport1.PreviewModal;
                ClientDataSet1.close;
                SQLQuery1.close; }

end;

procedure TFrm_RelComissao.FormShow(Sender: TObject);
begin
   RzComboBox1.items.clear;
   RzComboBox1.values.clear;
  dm.CD_Funcionarios.Open;
  dm.CD_Funcionarios.First;
  RzComboBox1.Items.Add('TODOS');
  RzComboBox1.values.add('0');
  while NOT dm.CD_Funcionarios.Eof do
  begin
  RzComboBox1.Items.Add(dm.CD_Funcionarios.FieldByName('NOME').Text);
  RzComboBox1.values.Add(dm.CD_Funcionarios.FieldByName('id_funcionario').asstring);
  dm.CD_Funcionarios.next;
  end;

  RzComboBox1.ItemIndex:=0;
  RzDateTimeEdit1.AsDateTime:=now-30;
  RzDateTimeEdit2.AsDateTime:=now;
end;

procedure TFrm_RelComissao.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
   valor:real;
begin    {
comissao.Close;
comissao.Params[0].Asfloat:=(ClientDataSet1SOMA.AsFloat);
Comissao.Params[1].AsFloat:=(ClientDataSet1SOMA.AsFloat);
comissao.Params[2].AsInteger:=ClientDataSet1ID_VENDEDOR.AsInteger;
Comissao.Open;

RLLabel14.Caption:=FloatToStrF(Comissao.FieldByName('PORCENTAGEM').AsFloat,ffnumber,15,2)+'%';

valor:=(ClientDataSet1SOMA.AsFloat)/100;
RLLabel4.Caption:=FloatToStrF(valor*Comissao.FieldByName('PORCENTAGEM').AsFloat,ffCurrency,15,2);
soma:=soma+(valor*Comissao.FieldByName('PORCENTAGEM').AsFloat);
RLLabel15.Caption:=FloatToStrF(soma,ffCurrency,15,2);   }
                                                                  if RLDetailGrid1.Color = clGradientActiveCaption then
                                                                     RLDetailGrid1.Color := clWhite
                                                                     else
                                                                     RLDetailGrid1.Color := clGradientActiveCaption;

end;

procedure TFrm_RelComissao.SpeedButton1Click(Sender: TObject);
begin        {
Frm_CadComissao:=TFrm_CadComissao.Create(self);
dm.CD_CAD_COMISSAO.close;
dm.CD_CAD_COMISSAO.CommandText:='select * from rel_cad_comicao where rel_cad_comicao.tipo =1';
dm.CD_CAD_COMISSAO.Open;
dm.CD_Comissao.Open;
FrmPrincipal.tipo:=1;
Frm_CadComissao.ShowModal;
Frm_CadComissao.destroy;  }
end;

end.
