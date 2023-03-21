unit UFrm_Estoque_Gerencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLReport, RzButton;

type
  TFrm_Estoque_Gerencia = class(TForm)
    Label2: TLabel;
    RzComboBox2: TRzComboBox;
    CheckBox2: TCheckBox;
    Query_Estoque: TFDQuery;
    DS_Query_Estoque: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLABEL1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RzBitBtn1: TRzBitBtn;
    Query_EstoqueID_PRODUTO: TIntegerField;
    Query_EstoqueDESCRICAO: TStringField;
    Query_EstoqueMARCA: TStringField;
    Query_EstoqueESTOQUE_MIN: TSingleField;
    Query_EstoqueESTOQUE: TSingleField;
    Query_EstoqueESTOQUEA: TSingleField;
    Query_EstoqueSALDO_D: TFloatField;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    Query_EstoqueSALDOE: TSingleField;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Estoque_Gerencia: TFrm_Estoque_Gerencia;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_Estoque_Gerencia.FormCreate(Sender: TObject);
var
query : TFDQuery;
begin
     query := tfdquery.Create(nil);
     query.Connection:=dm.FDConnection1;



     query.CLOSE;
     query.SQL.Text:='select NOME from LABORATORIOS ';
     query.Open();

     RzComboBox2.Items.Add('TODAS');
     RzComboBox2.values.Add(' ');

     QUERY.First;
     while NOT QUERY.Eof do
     BEGIN

     RzComboBox2.Items.Add(query.FieldByName('NOME').AsString);
     RzComboBox2.values.Add(' and tabelaprodutos.MARCA ='''+query.FieldByName('NOME').AsString+'''');
     QUERY.Next;
     END;

     QUERY.Free;


     RzComboBox2.ItemIndex := 0;
end;

procedure TFrm_Estoque_Gerencia.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLBand4.Color = clWhite then
   RLBand4.Color:=$00EEEEEE
   ELSE
   RLBand4.Color := clWhite
end;

procedure TFrm_Estoque_Gerencia.RzBitBtn1Click(Sender: TObject);
var
estoque : string;
begin

       if CheckBox2.Checked = true then
          estoque :=' AND (tabelaprodutos.estoque - tabelaprodutos.estoqueA)>0'
                    else
                    estoque := ' ';



Query_Estoque.Close;
Query_Estoque.SQL.Text:='select  tabelaprodutos.id_produto,' +
                        '        tabelaprodutos.descricao, ' +
                        '        tabelaprodutos.marca, ' +
                        '        COALESCE(tabelaprodutos.estoque_MIN,0) estoque_MIN, ' +
                        '        tabelaprodutos.estoque, ' +
                        '        tabelaprodutos.estoquea, ' +
                        '        tabelaprodutos.saldoe, '+
                        '        tabelaprodutos.estoque - tabelaprodutos.estoqueA saldo_d ' +
                        '         from   tabelaprodutos where tabelaprodutos.descricao is not null '+RzComboBox2.Value+estoque;


Query_Estoque.open;
RLReport1.PreviewModal;
end;

end.
