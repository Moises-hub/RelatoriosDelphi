unit UFrm_Relatorio_V_Cartoes;

interface

uses  comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Buttons,
  Vcl.Mask, RzEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzButton, Vcl.ExtCtrls, RzPanel, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList;

type
  TFrm_Relatorio_V_Cartoes = class(TForm)
    Query_Relatorio: TFDQuery;
    Query_RelatorioDEPTO: TStringField;
    Query_RelatorioPEDIDO: TStringField;
    Query_RelatorioNFE_NFCE: TStringField;
    Query_RelatorioDATA: TDateField;
    Query_RelatorioVENDEDOR: TStringField;
    Query_RelatorioID_DEPTO: TIntegerField;
    Query_RelatorioQTD_PARCELAS: TIntegerField;
    Query_RelatorioFORMA_DE_PAGA: TStringField;
    Query_RelatorioVALOR_PARCELA: TBCDField;
    Query_RelatorioTOTAL: TBCDField;
    DBGrid: TDBGrid;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    SpeedButton1: TSpeedButton;
    RzComboBox4: TRzComboBox;
    Label6: TLabel;
    RzBitBtn1: TRzBitBtn;
    DS_query_Relatorio: TDataSource;
    RzBitBtn2: TRzBitBtn;
    ActionList1: TActionList;
    Act_Print: TAction;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Act_PrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Relatorio_V_Cartoes: TFrm_Relatorio_V_Cartoes;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Relatorio_V_Cartoes.Act_PrintExecute(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;

begin




   if Query_Relatorio.RecordCount<>0 then
      BEGIN

          Query_Relatorio.Filtered := False;
          Linha := 8;
          Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
          Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
          Pasta.Caption := 'VENDAS COM CARTÕES'; // Título da planilha
          Pasta.Visible := False; // Deixa a planilha invisível


          Pasta.Cells[1,1] :='Relatório de Forma de Pagamento';

          Pasta.Cells[3,1] :='Data inicial:'+RzDateTimeEdit1.Text;
          Pasta.Cells[4,1] :='Data Final:'+RzDateTimeEdit2.Text;

          Pasta.Cells[7,1] := 'Filial';
          Pasta.Cells[7,2] := 'Nº da compra'; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[7,3] := 'Nº da nota';
          Pasta.Cells[7,4] := 'Data'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[7,5] := 'Usuário Responsável';
          Pasta.Cells[7,6] := 'Qtd de parcelas';
          Pasta.Cells[7,7] := 'Usuário';
          Pasta.Cells[7,8] := 'Forma de Pagamento';
          Pasta.Cells[7,9] := 'Tipo de Pagamento';
          Pasta.Cells[7,10] := 'Valor da Parcela';
          Pasta.Cells[7,11] := 'Valor Total';


          Query_Relatorio.DisableControls; // desabilita os controles de dados
          Try
          While not Query_Relatorio.Eof do //executa enquanto não for fim de arquivo de clientes
          begin
          Pasta.Cells[Linha,1] := Query_RelatorioDEPTO.AsString;
          Pasta.Cells[Linha,2] := Query_RelatorioPEDIDO.ASSTRING;
          Pasta.Cells[Linha,3] := Query_RelatorioNFE_NFCE.AsString;
          Pasta.Cells[Linha,4] := Query_RelatorioDATA.AsDateTime;
          Pasta.Cells[Linha,5] := Query_RelatorioVENDEDOR.AsString;
          Pasta.Cells[Linha,6] := Query_RelatorioQTD_PARCELAS.AsInteger;
          Pasta.Cells[Linha,7] := Query_RelatorioVENDEDOR.AsString;
          Pasta.Cells[Linha,8] := Query_RelatorioFORMA_DE_PAGA.AsString;
          Pasta.Cells[Linha,9] := 'Produto';
          Pasta.Cells[Linha,10]:=  Query_RelatorioVALOR_PARCELA.AsCurrency;
          Pasta.Cells[Linha,11]:= Query_RelatorioTOTAL.AsCurrency;

          Linha := Linha + 1; // Incrementa a variável Linha em 01



           Query_Relatorio.Next; //vai para o próximo registro da tabela de clientes
          end;
          Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel

          // Coloca Senha de Proteção na Planilha 01
          If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
          Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
          Pasta.Visible := True; //Deixa a planilha visível
          Finally
          Query_Relatorio.EnableControls; // sempre será executada essa linha
          Pasta := Unassigned;
          end;
      END;


end;

procedure TFrm_Relatorio_V_Cartoes.FormShow(Sender: TObject);
var
depto : tfdquery;

begin
  depto:=TFDQuery.Create(nil);
  depto.Connection := DM.FDConnection1;
  depto.SQL.Text:='select id_depto, descricao from departamentos';
  depto.Open();

  RzComboBox4.ClearItemsValues;
  RzComboBox4.Items.Add('TODOS');
  RzComboBox4.Values.Add(' ');
  depto.First;
  while not depto.eof do
      begin
        RzComboBox4.AddItemValue(depto.FieldByName('descricao').AsString,' and ID_DEPTO ='+depto.FieldByName('id_depto').AsString);
        depto.Next;
      end;

  RzDateTimeEdit1.Date:=now - 30;
  RzDateTimeEdit2.Date:=now;
  RzComboBox4.ItemIndex:=0;

end;

procedure TFrm_Relatorio_V_Cartoes.RzBitBtn1Click(Sender: TObject);
begin
      Query_Relatorio.Close;
      Query_Relatorio.SQL.Text:=' select * from RELATORIO_V_CARTOES where DATA >=:i and DATA <=:f '+RzComboBox4.Value;
      Query_Relatorio.Params[0].AsDate:=RzDateTimeEdit1.Date;
      Query_Relatorio.Params[1].AsDate:=RzDateTimeEdit2.Date;
      Query_Relatorio.Open();
end;

end.
