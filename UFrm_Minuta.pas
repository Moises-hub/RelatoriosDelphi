unit UFrm_Minuta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, RLReport, RzCmboBx;

type
  TFrm_Minuta = class(TForm)
    FDQuery1: TFDQuery;
    FDQuery1TRANSPORTADORA: TStringField;
    FDQuery1NFE: TStringField;
    FDQuery1VOLUME: TIntegerField;
    FDQuery1N_PEDIDO: TStringField;
    FDQuery1CLIENTE_F: TStringField;
    FDQuery1CLIENTE: TStringField;
    FDQuery1CIDADE: TStringField;
    FDQuery1BAIRRO: TStringField;
    FDQuery1REPRESENTANTE: TStringField;
    FDQuery1PRAZO: TStringField;
    FDQuery1ESPECIE_PG: TStringField;
    FDQuery1PESO_BRUTO: TSingleField;
    FDQuery1NATUREZA_OP: TStringField;
    FDQuery1DATA: TDateField;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    DataSource1: TDataSource;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand5: TRLBand;
    RLLabel14: TRLLabel;
    FDQuery1UF: TStringField;
    FDQuery2: TFDQuery;
    FDQuery1REGIAO: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    RzComboBox1: TRzComboBox;
    Label3: TLabel;
    REGIAO: TFDQuery;
    DataSource2: TDataSource;
    FDQuery2ESPECIE_PG: TStringField;
    FDQuery2NATUREZA_OP: TStringField;
    RLBand6: TRLBand;
    RLLabel15: TRLLabel;
    RLBand1: TRLBand;
    RLLabel13: TRLLabel;
    RLDBText13: TRLDBText;
    FDQuery3: TFDQuery;
    RLLabel16: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand7: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel17: TRLLabel;
    FDQuery4: TFDQuery;
    FDQuery4RAZAO_SOCIAL: TStringField;
    FDQuery4CNPJ: TStringField;
    DataSource3: TDataSource;
    Label4: TLabel;
    RzComboBox2: TRzComboBox;
    FDQuery1ID_DEPTO: TIntegerField;
    FDQuery1VENDEDOR: TIntegerField;
    FDQuery1VALOR: TBCDField;
    FDQuery2SUM: TBCDField;
    FDQuery3SUM: TBCDField;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    FDQuery5: TFDQuery;
    DataSource4: TDataSource;
    FDQuery5TRANSPORTADORA: TStringField;
    FDQuery5NFE: TStringField;
    FDQuery5VOLUME: TIntegerField;
    FDQuery5N_PEDIDO: TStringField;
    FDQuery5CLIENTE_F: TStringField;
    FDQuery5CLIENTE: TStringField;
    FDQuery5CIDADE: TStringField;
    FDQuery5BAIRRO: TStringField;
    FDQuery5REPRESENTANTE: TStringField;
    FDQuery5PRAZO: TStringField;
    FDQuery5ESPECIE_PG: TStringField;
    FDQuery5PESO_BRUTO: TSingleField;
    FDQuery5VALOR: TBCDField;
    FDQuery5NATUREZA_OP: TStringField;
    FDQuery5DATA: TDateField;
    FDQuery5UF: TStringField;
    FDQuery5REGIAO: TIntegerField;
    FDQuery5ID_DEPTO: TIntegerField;
    FDQuery5VENDEDOR: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Minuta: TFrm_Minuta;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_Minuta.Button1Click(Sender: TObject);
begin



  fdquery1.CLOSE;
  fdquery1.SQL.Text:='SELECT * FROM MIN_DESPACHO ' +
                     'WHERE ((data >=:I) AND (data <=:F)) AND Id_depto =:D '+RzComboBox1.Value+' '+RzComboBox2.Value+
                     'ORDER BY NATUREZA_OP DESC, CIDADE';



  fdquery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
  fdquery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
  fdquery1.Params[2].AsINTEGER:=FrmPrincipal.EMPRESA;
  fdquery1.open;

FDQUERY4.Close;
FDQUERY4.Params[0].AsInteger:=FrmPrincipal.EMPRESA;
FDQUERY4.Open();

 RLReport1.PreviewModal;
end;

procedure TFrm_Minuta.FormShow(Sender: TObject);
begin
        REGIAO.CLOSE;
        REGIAO.SQL.TEXT:='SELECT DISTINCT(CLIENTES.ID_REGIAO), '+
                         'regioes.cidade||''-''||regioes.uf AS CIDADE FROM CLIENTES ' +
                         'INNER JOIN REGIOES ON REGIOES.id_regiao = CLIENTES.id_regiao ' +
                         'ORDER BY regioes.uf, regioes.cidade';



        RzComboBox1.Items.Add('TODOS');
        RzComboBox1.VALUES.Add(' ');

      Regiao.OPEN;
      REGIAO.First;
      while NOT REGIAO.Eof do
        BEGIN
        RzComboBox1.Items.Add(REGIAO.FieldByName('CIDADE').AsString);
        RzComboBox1.VALUES.Add(' AND min_despacho.regiao = '+IntToStr(REGIAO.FieldByName('ID_REGIAO').AsInteger));
        REGIAO.NEXT;
        END;


           REGIAO.CLOSE;
        REGIAO.SQL.TEXT:='SELECT DISTINCT(PEDIDOS.id_vendedor),funcionarios.nome '+
                         ' FROM PEDIDOS ' +
                         'JOIN FUNCIONARIOS ON FUNCIONARIOS.id_funcionario = PEDIDOS.id_vendedor ' +
                         'WHERE FUNCIONARIOS.TIPO = 3 AND FUNCIONARIOS.STATUS =1';



        RzComboBox2.Items.Add('TODOS');
        RzComboBox2.VALUES.Add(' ');

      Regiao.OPEN;
      REGIAO.First;
      while NOT REGIAO.Eof do
        BEGIN
        RzComboBox2.Items.Add(REGIAO.FieldByName('NOME').AsString);
        RzComboBox2.VALUES.Add(' AND min_despacho.VENDEDOR = '+IntToStr(REGIAO.FieldByName('ID_VENDEDOR').AsInteger));
        REGIAO.NEXT;
        END;



        RzComboBox2.ItemINDEX := 0;
        RzComboBox1.ItemINDEX := 0;
        RzDateTimeEdit1.Date:=DATE-30;
        RzDateTimeEdit2.Date:=DATE;
        DM.Emitente.Open;
        
end;

procedure TFrm_Minuta.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
if FDQuery1NATUREZA_OP.AsString = 'BONIFICACAO' then
   RLLabel14.Caption:='BONIFICAÇÃO / TROCA'
   ELSE
   RLLabel14.Caption:='VENDA'

end;

procedure TFrm_Minuta.RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  fdquery2.Close;
  FDQUERY2.SQL.Text:='SELECT SUM(min_despacho.valor),min_despacho.especie_pg||'':'' '+
                     'AS especie_pg, NATUREZA_OP FROM min_despacho ' +
                     'WHERE ((data >=:I) AND (data <=:F)) '+
                     'AND NATUREZA_OP =:N AND Id_depto =:D  '+RzComboBox1.Value+' '+RzComboBox2.Value+
                     ' GROUP BY min_despacho.especie_pg,NATUREZA_OP '+
                     ' ORDER BY NATUREZA_OP DESC';
  fdquery2.Params[0].AsDate:=RzDateTimeEdit1.Date;
  fdquery2.Params[1].AsDate:=RzDateTimeEdit2.Date;
  fdquery2.Params[2].AsString:=FDQuery1NATUREZA_OP.AsString;
  fdquery2.Params[3].AsINTEGER:=FrmPrincipal.EMPRESA;
  fdquery2.open;
  RLLabel15.Caption:='';
  FDQUERY2.First;
  while NOT FDQUERY2.Eof do
   BEGIN
    RLLabel15.Caption:=RLLabel15.Caption +'       '+FDQuery2ESPECIE_PG.AsString+' '+FloatToStrF(FDQuery2SUM.AsFloat,ffCurrency,15,2);
    FDQUERY2.NEXT;
   END;





  fdquery3.Close;
  fdquery3.SQL.Text:='SELECT SUM(min_despacho.valor) FROM min_despacho ' +
                     'WHERE ((data >=:I) AND (data <=:F)) '+
                     'AND NATUREZA_OP =:N AND Id_depto =:D '+RzComboBox1.Value+' '+RzComboBox2.Value;
  fdquery3.Params[0].AsDate:=RzDateTimeEdit1.Date;
  fdquery3.Params[1].AsDate:=RzDateTimeEdit2.Date;
  fdquery3.Params[2].AsString:= FDQuery1NATUREZA_OP.AsString;
  fdquery3.Params[3].AsINTEGER:=FrmPrincipal.EMPRESA;
  fdquery3.open;
  RLLabel16.Caption:='TOTAL: '+FloatToStrF(FDQuery3SUM.AsFloat,ffCurrency,15,2);
  

end;

end.
