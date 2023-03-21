unit UFrm_Rel_V_Analitico;

interface

uses   comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzButton, Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Vcl.Buttons, Vcl.ExtCtrls,
  RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Rel_V_Analitico = class(TForm)
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox4: TRzComboBox;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    DBGrid: TDBGrid;
    Label1: TLabel;
    RzComboBox1: TRzComboBox;
    Query_V_Analitico: TFDQuery;
    DS_Query_V_Analitico: TDataSource;
    Query_V_AnaliticoFILIAL: TStringField;
    Query_V_AnaliticoPRODUTO: TStringField;
    Query_V_AnaliticoSTATUS: TStringField;
    Query_V_AnaliticoN_VENDA: TStringField;
    Query_V_AnaliticoMARCA: TStringField;
    Query_V_AnaliticoMODELO: TStringField;
    Query_V_AnaliticoVENDEDOR: TStringField;
    Query_V_AnaliticoCLIENTE: TStringField;
    Query_V_AnaliticoCOR: TStringField;
    Query_V_AnaliticoSERIAL: TStringField;
    Query_V_AnaliticoDATA: TDateField;
    Query_V_AnaliticoVALOR_DE_COMPRA: TBCDField;
    Query_V_AnaliticoVALOR_DESCONTO: TSingleField;
    Query_V_AnaliticoVALOR_GARANTIA: TIntegerField;
    Query_V_AnaliticoVALOR_DE_VENDA: TBCDField;
    Query_V_AnaliticoVALOR_COMISSAO: TIntegerField;
    Query_V_AnaliticoID_CATEGORIA: TIntegerField;
    Query_V_AnaliticoID_DEPTO: TIntegerField;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_V_Analitico: TFrm_Rel_V_Analitico;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_V_Analitico.FormShow(Sender: TObject);
var
query : tfdquery;

begin
  query:=TFDQuery.Create(nil);
  query.Connection := DM.FDConnection1;
  query.SQL.Text:='select id_depto, descricao from departamentos';
  query.Open();

  RzComboBox4.ClearItemsValues;
  RzComboBox4.Items.Add('TODOS');
  RzComboBox4.Values.Add(' ');
  query.First;
  while not query.eof do
      begin
        RzComboBox4.AddItemValue(query.FieldByName('descricao').AsString,' and ID_DEPTO ='+query.FieldByName('id_depto').AsString);
        query.Next;
      end;

  RzDateTimeEdit1.Date:=now - 30;
  RzDateTimeEdit2.Date:=now;
  RzComboBox4.ItemIndex:=0;


   query.CLOSE;
  query.SQL.Text:='select id_categoria, descricao from categorias where id_categoria = pai';
  query.Open();

  RzComboBox1.ClearItemsValues;
  RzComboBox1.Items.Add('TODOS');
  RzComboBox1.Values.Add(' ');
  query.First;
  while not query.eof do
      begin
        RzComboBox1.AddItemValue(query.FieldByName('descricao').AsString,' and ID_CATEGORIA ='+query.FieldByName('id_CATEGORIA').AsString);
        query.Next;
      end;


  RzComboBox1.ItemIndex:=0;

   QUERY.Free






end;

procedure TFrm_Rel_V_Analitico.RzBitBtn1Click(Sender: TObject);
begin
      query_v_analitico.Close;
      query_v_analitico.SQL.Text:='SELECT * FROM REL_VENDAS_ANALITICO where DATA >=:i and DATA <=:f '+RzComboBox4.Value+' '+RzComboBox1.Value;
      query_v_analitico.Params[0].AsDate:=RzDateTimeEdit1.Date;
      query_v_analitico.Params[1].AsDate:=RzDateTimeEdit2.Date;
      query_v_analitico.Open();
end;

procedure TFrm_Rel_V_Analitico.RzBitBtn2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;

begin





   if Query_V_Analitico.RecordCount<>0 then
      BEGIN

          Query_V_Analitico.Filtered := False;
          Linha := 5;
          Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
          Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
          Pasta.Caption := 'Relatório vendas produtos analitico'; // Título da planilha
          Pasta.Visible := False; // Deixa a planilha invisível


          Pasta.cells[1,1] :='RELATÓRIO VENDAS DE ';
          Pasta.cells[1,2] :='PRODUTOS ANALÍTICO';
          Pasta.Cells[2,1] :='PERÍODO ';
          Pasta.Cells[2,2] :=RzDateTimeEdit1.Text+' a '+RzDateTimeEdit2.Text;
          Pasta.Cells[4,1] := 'FILIAL';
          Pasta.Cells[4,2] := 'PRODUTO'; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[4,3] := 'STATUS';
          Pasta.Cells[4,4] := 'Nº VENDA'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[4,5] := 'MARCA';
          Pasta.Cells[4,6] := 'MODELO';
          Pasta.Cells[4,7] := 'VENDEDOR';
          Pasta.Cells[4,8] := 'CLIENTE';
          Pasta.Cells[4,9] := 'COR';
          Pasta.Cells[4,10] := 'SERIAL'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[4,11] := 'DATA';
          Pasta.Cells[4,12] := 'VALOR DA COMPRA';
          Pasta.Cells[4,13] := 'VALOR DESCONTO';
          Pasta.Cells[4,14] := 'VALOR GARANTIA';
          Pasta.Cells[4,15] := 'VALOR DE VENDA';
          Pasta.Cells[4,16] := 'VALOR COMISSÃO';

          Query_V_Analitico.DisableControls; // desabilita os controles de dados
          Try
          While not Query_V_Analitico.Eof do //executa enquanto não for fim de arquivo de clientes
          begin
          Pasta.Cells[Linha,1] := Query_V_AnaliticoFILIAL.AsString;
          Pasta.Cells[Linha,2] := Query_V_AnaliticoPRODUTO.ASSTRING;
          Pasta.Cells[Linha,3] := Query_V_AnaliticoSTATUS.AsString;
          Pasta.Cells[Linha,4] := Query_V_AnaliticoN_VENDA.AsString;
          Pasta.Cells[Linha,5] := Query_V_AnaliticoMARCA.AsString;
          Pasta.Cells[Linha,6] := Query_V_AnaliticoMODELO.AsString;
          Pasta.Cells[Linha,7] := Query_V_AnaliticoVENDEDOR.AsString;
          Pasta.Cells[Linha,8]:=  Query_V_AnaliticoCLIENTE.AsString;
          Pasta.Cells[Linha,9]:= Query_V_AnaliticoCOR.AsString;
          Pasta.Cells[Linha,10] := Query_V_AnaliticoSERIAL.AsString;
          Pasta.Cells[Linha,11] := Query_V_AnaliticoDATA.AsDateTime;
          Pasta.Cells[Linha,12] := Query_V_AnaliticoVALOR_DE_COMPRA.ASCURRENCY;
          Pasta.Cells[Linha,13] := Query_V_AnaliticoVALOR_DESCONTO.AsCurrency;
          Pasta.Cells[Linha,14]:=  Query_V_AnaliticoVALOR_GARANTIA.AsCurrency;
          Pasta.Cells[Linha,15]:= Query_V_AnaliticoVALOR_DE_VENDA.AsCurrency;
          Pasta.Cells[linha,16]:= Query_V_AnaliticoVALOR_COMISSAO.AsCurrency;

          Linha := Linha + 1; // Incrementa a variável Linha em 01



           Query_V_Analitico.Next; //vai para o próximo registro da tabela de clientes
          end;
          Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel

          // Coloca Senha de Proteção na Planilha 01
          If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
          Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
          Pasta.Visible := True; //Deixa a planilha visível
          Finally
          Query_V_Analitico.EnableControls; // sempre será executada essa linha
          Pasta := Unassigned;
          end;
      END;

end;

end.
