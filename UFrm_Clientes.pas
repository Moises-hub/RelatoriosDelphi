unit UFrm_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls, RzLabel,
  RzCmboBx, Vcl.Menus, RzButton, RzRadGrp;

type
  TFrm_Clientes = class(TForm)
    RzPanel1: TRzPanel;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLBand2: TRLBand;
    RLLabel16: TRLLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1CPF_CNPJ: TStringField;
    FDQuery1NOME: TStringField;
    FDQuery1NOME_FANTASIA: TStringField;
    FDQuery1ENDERECO: TStringField;
    FDQuery1CIDADE: TStringField;
    RLLabel2: TRLLabel;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RzComboBox2: TRzComboBox;
    RzLabel3: TRzLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText6: TRLDBText;
    RzLabel5: TRzLabel;
    RzComboBox3: TRzComboBox;
    FDQuery2: TFDQuery;
    Button1: TButton;
    RzRadioGroup1: TRzRadioGroup;
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Clientes: TFrm_Clientes;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Clientes.Button1Click(Sender: TObject);
var
ordem : string;
begin

   case RzRadioGroup1.ItemIndex of
    0 : ordem:='order by clientes.ID_CLIENTE ';
    1 : ordem:='order by clientes.nome ';
    2 : ordem:='order by clientes_dados.endereco ';
    3 : ordem:='order by regioes.cidade ';

   end;




    FDQuery1.Close;
    FDQUERY1.SQL.Text:='SELECT clientes.ID_CLIENTE,' +
                       '       CLIENTES.CPF_CNPJ, ' +
                       '       clientes.nome, ' +
                       '       CLIENTES.nome_fantasia, ' +
                       '       clientes_dados.cep||'', ''|| clientes_dados.endereco||'', ''||clientes_dados.numero||COALESCE('' - ''||clientes_dados.complemento,'' ''||'''') ' +
                       '       ||coalesce('' - ''||CLIENTES_DADOS.bairro,'' ''||'''') as endereco, ' +
                       '       regioes.cidade||''-''||regioes.uf as cidade ' +
                       '       from clientes ' +
                       '       left join clientes_dados on clientes_dados.id_cliente = clientes.id_cliente ' +
                       '       left join regioes on regioes.id_regiao = clientes.id_regiao ' +
                       'where ((clientes.ID_CLIENTE >='+Edit1.Text+') and (clientes.ID_CLIENTE <='+Edit2.Text+')) '+
                       RzComboBox1.Value+' '+RzComboBox2.Value+RzComboBox3.Value+'  '+ordem ;



    FDQUERY1.open;




    RLReport1.PreviewModal;
end;

procedure TFrm_Clientes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if  not ( Key in ['0'..'9', Chr(8)] ) then

          Key := #0
end;

procedure TFrm_Clientes.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if  not ( Key in ['0'..'9', Chr(8)] ) then

          Key := #0
end;

procedure TFrm_Clientes.FormShow(Sender: TObject);
VAR
CLASSE : TFDQuery;
begin
                  CLASSE:=TFDQuery.Create(SELF);
                  CLASSE.Connection:=DM.FDConnection1;
                  CLASSE.SQL.Text:='SELECT * FROM CLASSES';
                  CLASSE.Open();


                      RzComboBox3.ClearItemsValues;
                      RzComboBox3.ClearItems;
                         RzComboBox3.Items.Add('TODOS');
                         RzComboBox3.Values.Add('  ');





                  if CLASSE.RecordCount<>0 then
                    BEGIN
                      CLASSE.First;


                      while NOT CLASSE.Eof do
                         BEGIN
                         RzComboBox3.Items.Add(CLASSE.FieldByName('DESCRICAO').AsString);
                         RzComboBox3.Values.Add(' AND clientes.id_classe ='+IntToStr(CLASSE.FieldByName('ID_CLASSE').AsINTEGER));
                         CLASSE.NEXT;
                         END;



                    END;

                     RzComboBox3.ItemIndex:=0;
                     classe.Free;

end;

procedure TFrm_Clientes.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

RLLabel11.Caption:='LISTAGEM DE CLIENTES / CLASSE: '+RzComboBox3.Text+'  / DO CÓDIGO: '+Edit1.Text+' à '+Edit2.Text+' / TIPO: '+
                   RzComboBox2.Text+' / STATUS: '+RzComboBox1.Text

end;

procedure TFrm_Clientes.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLBand5.Color=clMenu then
   RLBand5.Color:=clWhite
   ELSE
   RLBand5.Color:=clMENU;
end;

end.
