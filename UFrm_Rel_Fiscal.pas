unit UFrm_Rel_Fiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, RzButton, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Phys.FBDef, FireDAC.Phys, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB;

type
  TFrm_Rel_Fiscal = class(TForm)
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ProgressBar1: TProgressBar;
    SaveDialog1: TSaveDialog;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    FDQuery1: TFDQuery;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Fiscal: TFrm_Rel_Fiscal;

implementation

{$R *.dfm}

uses UDM,comobj;

procedure TFrm_Rel_Fiscal.RzBitBtn1Click(Sender: TObject);
begin
fdquery1.close;
fdquery1.SQL.Text:='SELECT  pedido_itens.id_produto,' +
                   '        produtos.descricao, ' +
                   '        pedido_itens.codigo_barra, ' +
                   '        ncm_ibpt.ncm, ' +
                   '        pedido_itens.csosn, ' +
                   '        pedido_itens.icms, ' +
                   '        pedido_itens.tributacao, ' +
                   '        pedido_itens.pis_cst, ' +
                   '        pedido_itens.cofins_cst, ' +
                   '        pedido_itens.codigo_cest, ' +
                   '        sum(pedido_itens.valor_final-(pedido_itens.valor_total*(COALESCE(pedido_itens.desconto,1)/100))) ' +
                   '        from pedido_itens ' +
                   '  left join produtos on (produtos.id_produto = pedido_itens.id_produto) ' +
                   '  left join ncm_ibpt on(ncm_ibpt.ncm = produtos.codigo_ncm) ' +
                   'inner JOIN nota_fiscal ON (nota_fiscal.id_nota = pedido_itens.id_nota AND (nota_fiscal.status = 1)) ' +
                   'left join natureza_operacao on (natureza_operacao.id_natureza = nota_fiscal.id_natureza) ' +
                   'WHERE (natureza_operacao.OPERACAO = 1) AND (NATUREZA_OPERACAO.tipo = 1) AND natureza_operacao.es =1 AND natureza_operacao.PROCESSO =1 '+RzComboBox1.Value+
                   ' group by  pedido_itens.id_produto,produtos.descricao,pedido_itens.codigo_barra,ncm_ibpt.ncm,pedido_itens.csosn,pedido_itens.icms,pedido_itens.tributacao, ' +
                   '          pedido_itens.pis_cst,pedido_itens.cofins_cst,pedido_itens.codigo_cest';


fdquery1.open;


end;

procedure TFrm_Rel_Fiscal.RzBitBtn2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informa��o, inclusive Objeto OLE
Linha : Integer;

begin
      ProgressBar1.Max:=FDQuery1.RecordCount;
  if FDQuery1.RecordCount<>0 then
             begin

                        Panel1.Visible:=TRUE;
                        FDQuery1.Filtered := False;
                        Linha := 2;
                        Pasta := CreateOleObject('Excel.Application'); // cria uma aplica��o do Excel
                        Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
                        Pasta.Caption := 'RELAT�RIO FICAL'; // T�tulo da planilha
                        Pasta.Visible := False; // Deixa a planilha invis�vel
                        Pasta.Cells[1,1] := 'CLINTERNO';
                        Pasta.Cells[1,2] := 'EAN';
                        Pasta.Cells[1,3] := 'DESCRI��O';
                        Pasta.Cells[1,4] := 'NCM';
                        Pasta.Cells[1,5] := 'CST';// insere o conte�do �Cidade� na c�lula A2
                        Pasta.Cells[1,6] := 'CSOSN';
                        Pasta.Cells[1,7] := 'ICMS SAIDA'; // insere o conte�do �Fone�na c�lula A3
                        Pasta.Cells[1,8] := 'CST PIS';
                        Pasta.Cells[1,9] := 'COFINS SAIDA';
                        Pasta.Cells[1,10] := 'CEST';
                        Pasta.Cells[1,11] := 'VENDA TOTAL';


                          FDQuery1.DisableControls; // desabilita os controles de dados
                        Try
                        While not FDQuery1.Eof do //executa enquanto n�o for fim de arquivo de clientes
                        begin
                        Pasta.Cells[Linha,1] := FDQuery1.FieldByName('ID_PRODUTO').Asstring;
                        Pasta.Cells[Linha,2] := FDQuery1.FieldByName('CODIGO_BARRA').asstring;
                        Pasta.Cells[Linha,3] := FDQuery1.FieldByName('DESCRICAO').text;
                        Pasta.Cells[Linha,4] := FDQuery1.FieldByName('NCM').Text;
                        Pasta.Cells[Linha,5] := FDQuery1.FieldByName('TRIBUTACAO').Text;
                        Pasta.Cells[Linha,6] := FDQuery1.FieldByName('CSOSN').asstring;
                        Pasta.Cells[Linha,7] := FDQuery1.FieldByName('ICMS').AsSTRING;
                        Pasta.Cells[Linha,8] := FDQuery1.FieldByName('PIS_CST').AsSTRING;
                        Pasta.Cells[Linha,9] := FDQuery1.FieldByName('COFINS_CST').AsSTRING;
                        Pasta.Cells[Linha,10] := FDQuery1.FieldByName('CODIGO_CEST').AsSTRING;
                        Pasta.Cells[Linha,11] := FDQuery1.FieldByName('SUM').AsCurrency;






                        Linha := Linha + 1; // Incrementa a vari�vel Linha em 01

                        ProgressBar1.Position:=FDQuery1.RecNo;
                         FDQuery1.Next; //vai para o pr�ximo registro da tabela de clientes
                        end;
                        Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
                        {
                        Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True, Scenarios:=True,
                        Password:=''); }// Coloca Senha de Prote��o na Planilha 01

                        If SaveDialog1.Execute then // O componente SaveDialogs est� na paleta Dialogs
                        Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
                        Pasta.Visible := True; //Deixa a planilha vis�vel
                        Finally
                        FDQuery1.EnableControls; // sempre ser� executada essa linha
                        Pasta := Unassigned;
                        end;

             end;


end;

end.

