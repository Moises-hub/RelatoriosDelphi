unit UFrm_Rel_ContasPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzCmboBx, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, RzPanel, RzRadGrp;

type
  TFrm_Rel_ContasPlanoContas = class(TForm)
    RLReport2: TRLReport;
    RLGroup2: TRLGroup;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand6: TRLBand;
    RLDBText20: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand8: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLBand10: TRLBand;
    RLDBResult1: TRLDBResult;
    Button1: TButton;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label3: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzComboBox2: TRzComboBox;
    Label4: TLabel;
    RzRadioGroup1: TRzRadioGroup;
    RzRadioGroup2: TRzRadioGroup;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand1: TRLBand;
    RLLabel5: TRLLabel;
    FDQuery1DATA_EMISSAO: TDateField;
    FDQuery1DATA_PAGAMENTO: TDateField;
    FDQuery1ID_PLANO: TIntegerField;
    FDQuery1CLASSE: TStringField;
    FDQuery1PLANO: TStringField;
    FDQuery1PLANO_CO: TStringField;
    FDQuery1N_DOC: TStringField;
    FDQuery1NOME: TStringField;
    FDQuery1VALOR: TBCDField;
    FDQuery1CENTRO_CUSTO: TStringField;
    FDQuery1CAIXA: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_ContasPlanoContas: TFrm_Rel_ContasPlanoContas;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_ContasPlanoContas.Button1Click(Sender: TObject);
var
data, tipo : string;
begin
        FDQuery1.Close;
          Fdquery1.SQL.Text:='SELECT CONTAS.data_emissao,' +
                             '       CONTAS.data_pagamento, ' +
                             '       CONTAS.id_plano, ' +
                             '       plano_contas.classe, ' +
                             '       plano_contas.descricao AS PLANO, ' +
                             '       plano_contas.classe||''-''|| plano_contas.descricao AS plano_co, ' +
                             '       CONTAS.n_doc, ' +
                             '       CLIENTES.NOME, ' +
                             '       contas.valor, ' +
                             '       centro_custos.descricao AS CENTRO_CUSTO, ' +
                             '       caixas.descricao AS CAIXA ' +
                             '       from contas ' +
                             '       left join plano_contas on(plano_contas.id_plano = contas.id_plano) ' +
                             '       left join centro_custos on(centro_custos.id_centro = contas.id_depto) ' +
                             '       left join clientes on(clientes.id_cliente = contas.id_cliente) ' +
                             '       left join caixas on(caixas.id_caixa = contas.id_caixa) ' +
                             'where contas.baixa = 1 and contas.dc=:D '+RzComboBox1.Value+'  '+RzComboBox2.Value;
                             case RzRadioGroup2.ItemIndex of
                                0 : FDQUERY1.SQL.Add(' AND ((CAST(CONTAS.data_emissao AS DATE) >=:I) AND (CAST(CONTAS.data_emissao AS DATE) <=:F)) ');
                                1 : FDQUERY1.SQL.Add(' AND ((CONTAS.data_pagamento >=:I) AND (CONTAS.data_emissao <=:F)) ');
                             end;

                              case RzRadioGroup1.ItemIndex of
                                0 : Fdquery1.params[0].AsInteger:=2;
                                1 : Fdquery1.params[0].AsInteger:=1;
                             end;

         Fdquery1.params[1].AsDate:=RzDateTimeEdit1.AsDateTime;
         Fdquery1.params[2].AsDate:=RzDateTimeEdit2.AsDateTime;


         Fdquery1.SQL.Add(' order by plano_contas.classe, plano_contas.descricao, CONTAS.data_emissao');
         Fdquery1.open;


               case RzRadioGroup1.ItemIndex of
                    0 : tipo := ' Pagar ' ;
                    1 : tipo := ' Receber ' ;
               end;

                case RzRadioGroup2.ItemIndex of
                    0 : data := ' data de Emissão ' ;
                    1 : data := ' data de Liquidação ' ;
               end;

         RLLabel31.Caption:=data+'Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text+' Centro de Custo: '+RzComboBox1.Text+' Contas a:'+tipo;
         RLReport2.PreviewModal;
end;

procedure TFrm_Rel_ContasPlanoContas.FormShow(Sender: TObject);
var
CARREGA : TFDQuery;
begin
                   CARREGA:=TFDQuery.Create(SELF);
                   CARREGA.Connection:=FDQuery1.Connection;
                   CARREGA.SQL.Text:='select centro_custos.id_centro,centro_custos.descricao from centro_custos';
                   CARREGA.Open();
                   RzComboBox1.Clear;
                   RzComboBox1.Values.Clear;
                   RzComboBox1.Items.Add('TODOS');
                   RzComboBox1.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox1.Items.Add(carrega.FieldByName('descricao').AsString);
                      RzComboBox1.Values.Add(' and contas.id_depto ='+carrega.FieldByName('id_centro').AsString);
                      carrega.Next;
                    end;
                    RzComboBox1.ItemIndex := 0;
                    carrega.Close;
                   CARREGA.SQL.Text:='select plano_contas.id_plano,plano_contas.classe||''-''|| plano_contas.descricao as descricao from plano_contas' +
                                                                                          ' order by classe';
                   CARREGA.Open();
                   RzComboBox2.Clear;
                   RzComboBox2.Values.Clear;
                   RzComboBox2.Items.Add('TODOS');
                   RzComboBox2.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox2.Items.Add(carrega.FieldByName('descricao').AsString);
                      RzComboBox2.Values.Add(' and contas.id_plano ='+carrega.FieldByName('id_plano').AsString);
                      carrega.Next;
                    end;
                    RzComboBox2.ItemIndex := 0;
                    carrega.Close;

end;

end.
