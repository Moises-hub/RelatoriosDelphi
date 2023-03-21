unit UFrm_Clientes2;

interface

uses  comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, RLReport, RzCmboBx,
  RzLabel, Vcl.ExtCtrls, RzPanel;

type
  TFrm_Clientes2 = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLLabel16: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    Button1: TButton;
    FDQuery2: TFDQuery;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1CPF_CNPJ: TStringField;
    FDQuery1NOME: TStringField;
    FDQuery1NOME_FANTASIA: TStringField;
    FDQuery1ENDERECO: TStringField;
    FDQuery1CIDADE: TStringField;
    FDQuery1FONE_RES: TStringField;
    FDQuery1CELULAR: TStringField;
    FDQuery1EMAIL: TStringField;
    RLLabel9: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Clientes2: TFrm_Clientes2;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Clientes2.Button1Click(Sender: TObject);
begin
    FDQuery1.Close;
    FDQUERY1.SQL.Text:='SELECT clientes.ID_CLIENTE,' +
                       '       COALESCE(CLIENTES.CPF_CNPJ,''000.000.000-00'') AS CPF_CNPJ, ' +
                       '       clientes.nome, ' +
                       '       CLIENTES.nome_fantasia, ' +
                       '       clientes_dados.cep||'', ''|| clientes_dados.endereco||'', ''||clientes_dados.numero||COALESCE('' - ''||clientes_dados.complemento,'' ''||'''') ' +
                       '       ||coalesce('' - ''||CLIENTES_DADOS.bairro,'' ''||'''') as endereco, ' +
                       '       regioes.cidade||''-''||regioes.uf as cidade, ' +
                       '       clientes_dados.fone_res, ' +
                       '       clientes_dados.celular, ' +
                       '       CLIENTES.EMAIL '+
                       '       from clientes ' +
                       '       left join clientes_dados on clientes_dados.id_cliente = clientes.id_cliente ' +
                       '       left join regioes on regioes.id_regiao = clientes.id_regiao ' +
                       'where ((clientes.ID_CLIENTE >='+Edit1.Text+') and (clientes.ID_CLIENTE <='+Edit2.Text+')) '+
                       RzComboBox1.Value+' '+RzComboBox2.Value+RzComboBox3.Value+'  order by  clientes.ID_CLIENTE, clientes.nome' ;



    FDQUERY1.open;




    RLReport1.PreviewModal;
end;

procedure TFrm_Clientes2.Button2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;
TIPO : STRING;
begin


    FDQuery1.Close;
    FDQUERY1.SQL.Text:='SELECT clientes.ID_CLIENTE,' +
                       '       COALESCE(CLIENTES.CPF_CNPJ,''000.000.000-00'') AS CPF_CNPJ, ' +
                       '       clientes.nome, ' +
                       '       CLIENTES.nome_fantasia, ' +
                       '       clientes_dados.cep||'', ''|| clientes_dados.endereco||'', ''||clientes_dados.numero||COALESCE('' - ''||clientes_dados.complemento,'' ''||'''') ' +
                       '       ||coalesce('' - ''||CLIENTES_DADOS.bairro,'' ''||'''') as endereco, ' +
                       '       regioes.cidade||''-''||regioes.uf as cidade, ' +
                       '       clientes_dados.fone_res, ' +
                       '       clientes_dados.celular, ' +
                       '       CLIENTES.EMAIL '+
                       '       from clientes ' +
                       '       left join clientes_dados on clientes_dados.id_cliente = clientes.id_cliente ' +
                       '       left join regioes on regioes.id_regiao = clientes.id_regiao ' +
                       'where ((clientes.ID_CLIENTE >='+Edit1.Text+') and (clientes.ID_CLIENTE <='+Edit2.Text+')) '+
                       RzComboBox1.Value+' '+RzComboBox2.Value+RzComboBox3.Value+'  order by  clientes.ID_CLIENTE, clientes.nome' ;



    FDQUERY1.open;


   if FDQUERY1.RecordCount<>0 then
      BEGIN

          FDQUERY1.Filtered := False;
          Linha := 2;
          Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
          Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
          Pasta.Caption := 'LISTAGEM DE CLIENTES 2'; // Título da planilha
          Pasta.Visible := False; // Deixa a planilha invisível
          Pasta.Cells[1,1] := 'CÓDIGO';
          Pasta.RANGE['A1','I1'].FONT.BOLD:=TRUE;
          Pasta.Cells[1,2] := 'NOME';
          Pasta.Cells[1,3] := 'CPF'; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[1,4] := 'CNPJ';
          Pasta.Cells[1,5] := 'ENDEREÇO'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[1,6] := 'CIDADE';
          Pasta.Cells[1,7] := 'EMAIL';
          Pasta.Cells[1,8] := 'FONE RESIDENCIAL';
          Pasta.Cells[1,9] := 'CELULAR';


          FDQUERY1.DisableControls; // desabilita os controles de dados
          Try
          While not FDQUERY1.Eof do //executa enquanto não for fim de arquivo de clientes
          begin
          Pasta.Cells[Linha,1] := FDQuery1ID_CLIENTE.AsSTRING;
          Pasta.Cells[Linha,2] := FDQuery1NOME.AsSTRING;

                  if LENGTH(FDQuery1CPF_CNPJ.AsString)=18 then
                      BEGIN
                      Pasta.Cells[Linha,4] :=FDQuery1CPF_CNPJ.AsString;
                      Pasta.Cells[Linha,3] :=''
                      END
                      ELSE
                      BEGIN
                      Pasta.Cells[Linha,3] :=FDQuery1CPF_CNPJ.AsString;
                      Pasta.Cells[Linha,4] :=''
                      END;

          Pasta.Cells[Linha,5] := FDQuery1ENDERECO.AsString;
          Pasta.Cells[Linha,6] := FDQuery1CIDADE.AsString;
          Pasta.Cells[Linha,7] := FDQuery1EMAIL.AsString;
          Pasta.Cells[Linha,8] :=FDQuery1FONE_RES.AsString;
          Pasta.Cells[Linha,9] :=FDQuery1CELULAR.AsString;


          Linha := Linha + 1; // Incrementa a variável Linha em 01



           FDQuery1.Next; //vai para o próximo registro da tabela de clientes
          end;
          Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
          Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True, Scenarios:=True,
          Password:=''); // Coloca Senha de Proteção na Planilha 01
          If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
          Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
          Pasta.Visible := True; //Deixa a planilha visível
          Finally
          FDQuery1.EnableControls; // sempre será executada essa linha
          Pasta := Unassigned;
          end;
      END;


end;

procedure TFrm_Clientes2.FormShow(Sender: TObject);
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

procedure TFrm_Clientes2.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin



       if LENGTH(FDQuery1CPF_CNPJ.AsString)=18 then
          BEGIN
          RLLabeL8.Caption:=FDQuery1CPF_CNPJ.AsString;
          RLLabeL6.Caption:='';
          END
          ELSE
          BEGIN
          RLLabeL6.Caption:=FDQuery1CPF_CNPJ.AsString;
          RLLabeL8.Caption:='';
          END;

end;

end.
