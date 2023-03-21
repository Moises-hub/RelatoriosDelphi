unit UFrm_Rel_Forma_Pagamento;

interface

uses comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzPanel, RzRadGrp, RzCmboBx, Vcl.Mask, RzEdit, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzButton, RLReport, Vcl.ComCtrls;

type
  TFrm_Rel_Forma_Pagamento = class(TForm)
    Panel1: TPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    RzRadioGroup1: TRzRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Query_Forma_Paga: TFDQuery;
    Query_Forma_PagaFILIAL: TStringField;
    Query_Forma_PagaID_PEDIDO: TIntegerField;
    Query_Forma_PagaPEDIDO: TStringField;
    Query_Forma_PagaNFE: TStringField;
    Query_Forma_PagaEMISSAO: TDateField;
    Query_Forma_PagaVENCIMENTO: TDateField;
    Query_Forma_PagaRESPONSAVEL: TStringField;
    Query_Forma_PagaUSUARIO: TStringField;
    Query_Forma_PagaN_PARCELA: TIntegerField;
    Query_Forma_PagaESPECIE_DE_PAGAMENTO: TStringField;
    Query_Forma_PagaFORMA_DE_PAGAMENTO: TStringField;
    Query_Forma_PagaN_DOCUMENTO: TStringField;
    Query_Forma_PagaTIPO: TStringField;
    Query_Forma_PagaV_PARCELA: TBCDField;
    Query_Forma_PagaVALOR_TOTAL: TBCDField;
    DS_Query_Forma: TDataSource;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    SaveDialog1: TSaveDialog;
    ProgressBar1: TProgressBar;
    RzBitBtn3: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Forma_Pagamento: TFrm_Rel_Forma_Pagamento;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Forma_Pagamento.FormShow(Sender: TObject);
VAR
CARREGACOMBO : TFDQUERY;
begin
        CARREGACOMBO := TFDQuery.Create(NIL);
        CARREGACOMBO.Connection:=DM.FDConnection1;
        CARREGACOMBO.SQL.TEXT:='select ESPECIE_PGTO.descricao from ESPECIE_PGTO';
        CARREGACOMBO.Open();

        RzComboBox1.Items.Add('TODOS');
        RzComboBox1.VALUES.Add(' ');

        CARREGACOMBO.First;
        while NOT CARREGACOMBO.Eof do
          BEGIN
            RzComboBox1.Items.Add(CARREGACOMBO.FieldByName('DESCRICAO').ASSTRING);
            RzComboBox1.VALUES.Add(' AND REL_FORMA_PAGAMENTO.ESPECIE_DE_PAGAMENTO ='''+CARREGACOMBO.FieldByName('DESCRICAO').ASSTRING+'''');
            CARREGACOMBO.NEXT;
          END;
          RzComboBox1.ItemIndex := 0;

        CARREGACOMBO.CLOSE;
        CARREGACOMBO.SQL.TEXT:='select descricao from fin_operadoras';
        CARREGACOMBO.Open();

        RzComboBox2.Items.Add('TODOS');
        RzComboBox2.VALUES.Add(' ');

        CARREGACOMBO.First;
        while NOT CARREGACOMBO.Eof do
          BEGIN
            RzComboBox2.Items.Add(CARREGACOMBO.FieldByName('DESCRICAO').ASSTRING);
            RzComboBox2.VALUES.Add(' AND REL_FORMA_PAGAMENTO.FORMA_DE_PAGAMENTO ='''+CARREGACOMBO.FieldByName('DESCRICAO').ASSTRING+'''');
            CARREGACOMBO.NEXT;
          END;
          RzComboBox2.ItemIndex := 0;


        CARREGACOMBO.CLOSE;
        CARREGACOMBO.SQL.TEXT:='select descricao from departamentos';
        CARREGACOMBO.Open();

        RzComboBox3.Items.Add('TODOS');
        RzComboBox3.VALUES.Add(' ');

        CARREGACOMBO.First;
        while NOT CARREGACOMBO.Eof do
          BEGIN
            RzComboBox3.Items.Add(CARREGACOMBO.FieldByName('DESCRICAO').ASSTRING);
            RzComboBox3.VALUES.Add(' AND REL_FORMA_PAGAMENTO.FILIAL ='''+CARREGACOMBO.FieldByName('DESCRICAO').ASSTRING+'''');
            CARREGACOMBO.NEXT;
          END;
          RzComboBox3.ItemIndex := 0;

          RzDateTimeEdit1.Date:=Date-1;
          RzDateTimeEdit2.Date:=Date;
end;

procedure TFrm_Rel_Forma_Pagamento.RzBitBtn1Click(Sender: TObject);
begin
  Query_Forma_Paga.Close;
  Query_Forma_Paga.SQL.Text:='SELECT * FROM REL_FORMA_PAGAMENTO ';

  case RzRadioGroup1.ItemIndex of
  0 :  Query_Forma_Paga.SQL.Text:=Query_Forma_Paga.SQL.Text+' WHERE emissao >=:I AND emissao <=:F  '+RzComboBox1.Value+' '+RzComboBox2.Value+' '+RzComboBox3.Value;
  1 :  Query_Forma_Paga.SQL.Text:=Query_Forma_Paga.SQL.Text+' WHERE VENCIMENTO >=:I AND VENCIMENTO  <=:F  '+RzComboBox1.Value+' '+RzComboBox2.Value+' '+RzComboBox3.Value;
  end;
   Query_Forma_Paga.SQL.Add(' ORDER BY EMISSAO,id_pedido,FORMA_DE_PAGAMENTO ' );

   Query_Forma_Paga.PARAMS[0].AsDate:=RzDateTimeEdit1.Date;
   Query_Forma_Paga.PARAMS[1].AsDate:=RzDateTimeEdit2.Date;
   Query_Forma_Paga.Open();
end;

procedure TFrm_Rel_Forma_Pagamento.RzBitBtn2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;

begin
SaveDialog1.FileName:='rel_forma_de_pagameno_'+StringReplace(RzDateTimeEdit1.Text,'/','',[rfReplaceAll])+'_'+StringReplace(RzDateTimeEdit2.Text,'/','',[rfReplaceAll]);



   if Query_Forma_Paga.RecordCount<>0 then
      BEGIN
          ProgressBar1.Visible:=true;
          ProgressBar1.Max:=Query_Forma_Paga.RecordCount;
          ProgressBar1.Position:=1;
          Query_Forma_Paga.Filtered := False;
          Linha := 7;
          Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
          Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
          Pasta.Visible := False; // Deixa a planilha invisível
          Pasta.Cells[1,1].Font.Bold := true;
          Pasta.Cells[1,1].Font.Size:= 12;

          Pasta.Cells[2,1].Font.Bold := true;
          Pasta.Cells[3,1].Font.Bold := true;
          Pasta.Cells[4,1].Font.Bold := true;
          Pasta.Cells[5,1].Font.Bold := true;

          Pasta.Cells[7,1].Font.Bold := true;
          Pasta.Cells[7,2].Font.Bold := true;
          Pasta.Cells[7,3].Font.Bold := true;
          Pasta.Cells[7,4].Font.Bold := true;
          Pasta.Cells[7,5].Font.Bold := true;
          Pasta.Cells[7,6].Font.Bold := true;
          Pasta.Cells[7,7].Font.Bold := true;
          Pasta.Cells[7,8].Font.Bold := true;
          Pasta.Cells[7,9].Font.Bold := true;
          Pasta.Cells[7,10].Font.Bold := true;
          Pasta.Cells[7,11].Font.Bold := true;
          Pasta.Cells[7,12].Font.Bold := true;

          Pasta.Cells[1,1] :='RELATÓRIO DE FORMA DE PAGAMENTO ';

          Pasta.Cells[2,1] :='PERÍODO ';
          case RzRadioGroup1.ItemIndex of
          0 : Pasta.Cells[2,2] :='EMISSÃO DE '+RzDateTimeEdit1.Text;
          1 : Pasta.Cells[2,2] :='VENCIMENTO DE '+RzDateTimeEdit1.Text;
          end;

          Pasta.Cells[2,3] :='A '+RzDateTimeEdit2.Text;

          Pasta.Cells[3,1] :='ESPÉCIE DE PAGAMENTO ';
          Pasta.Cells[3,2] := RzComboBox1.Text;

          Pasta.Cells[4,1] :='FORMA DE PAGAMENTO ';
          Pasta.Cells[4,2] := RzComboBox2.Text;

          Pasta.Cells[5,1] :='FILIAL ';
          Pasta.Cells[5,2] := RzComboBox3.Text;


          Pasta.Cells[7,1] := 'FILIAL';
          Pasta.Cells[7,2] := 'ID_PEDIDO'; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[7,3] := 'PEDIDO';
          Pasta.Cells[7,4] := 'Nº NFe'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[7,5] := 'EMISSÃO';
          Pasta.Cells[7,6] := 'VENCIMENTO';
          Pasta.Cells[7,7] := 'RESPONSÁVEL';
          Pasta.Cells[7,8] := 'USUÁRIO';
          Pasta.Cells[7,9] := 'Nº DA PARCELA';
          Pasta.Cells[7,10] := 'TIPO';
          Pasta.Cells[7,11] := 'VALOR DA PARCELA';
          Pasta.Cells[7,12] := 'VALOR TOTAL';

          Query_Forma_Paga.DisableControls; // desabilita os controles de dados
          Try
          Query_Forma_Paga.first;
          While not Query_Forma_Paga.Eof do //executa enquanto não for fim de arquivo de clientes
          begin
          ProgressBar1.Position:=Query_Forma_Paga.RecNo;
          Pasta.Cells[linha,1] := Query_Forma_PagaFILIAL.AsString;
          Pasta.Cells[linha,2] := Query_Forma_PagaID_PEDIDO.AsInteger; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[linha,3] := Query_Forma_PagaPEDIDO.AsString;
          Pasta.Cells[linha,4] := Query_Forma_PagaNFE.AsString; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[linha,5] := Query_Forma_PagaEMISSAO.AsDateTime;
          Pasta.Cells[linha,6] := Query_Forma_PagaVENCIMENTO.AsDateTime;
          Pasta.Cells[linha,7] := Query_Forma_PagaRESPONSAVEL.AsString;
          Pasta.Cells[linha,8] := Query_Forma_PagaUSUARIO.AsString;
          Pasta.Cells[linha,9] := Query_Forma_PagaN_PARCELA.AsInteger;
          Pasta.Cells[linha,10] :=Query_Forma_PagaTIPO.AsString;
          Pasta.Cells[linha,11] := Query_Forma_PagaV_PARCELA.AsCurrency;
          Pasta.Cells[linha,12] := Query_Forma_PagaVALOR_TOTAL.AsCurrency;
          Linha := Linha + 1; // Incrementa a variável Linha em 01



           Query_Forma_Paga.Next; //vai para o próximo registro da tabela de clientes
          end;
          Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel

          // Coloca Senha de Proteção na Planilha 01
          If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
          Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
          Pasta.Visible := True; //Deixa a planilha visível
          Finally
          Query_Forma_Paga.EnableControls; // sempre será executada essa linha
          Pasta := Unassigned;
          ProgressBar1.Visible:=false;
          end;
      END
     else
      ShowMessage('nenhum registro encontrado!');

end;

procedure TFrm_Rel_Forma_Pagamento.RzBitBtn3Click(Sender: TObject);
begin
close;
end;

end.
