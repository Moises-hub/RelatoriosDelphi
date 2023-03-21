unit UFrm_Rel_Titulos2;

interface

uses  comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, RLReport, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, RzButton, Vcl.ComCtrls;

type
  TFrm_Rel_Titulos2 = class(TForm)
    RzPanel1: TRzPanel;
    Query_Titulos: TFDQuery;
    Query_TitulosCOD: TIntegerField;
    Query_TitulosDESCRICAO: TStringField;
    Query_TitulosCLIENTE: TStringField;
    Query_TitulosEMISSAO: TDateField;
    Query_TitulosVENCIMENTO: TDateField;
    Query_TitulosVALOR: TBCDField;
    Query_TitulosVALOR_ATUAL: TFloatField;
    Query_TitulosPEDIDO: TStringField;
    Query_TitulosNF: TStringField;
    Query_TitulosDOC: TStringField;
    Query_TitulosD_PAGAMENTO: TDateField;
    Query_TitulosVALOR_PAGO: TBCDField;
    Query_TitulosESPECIE: TStringField;
    Query_TitulosPLANO_CONTA: TStringField;
    Query_TitulosCENTRO_CUSTO: TStringField;
    Query_TitulosLOCAL_PAGA: TStringField;
    Query_TitulosBAIXA: TSmallintField;
    Query_TitulosDC: TSmallintField;
    DS_Query_Titulos: TDataSource;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Label3: TLabel;
    RzComboBox3: TRzComboBox;
    Label4: TLabel;
    RzDBGrid1: TRzDBGrid;
    Query_TitulosID_ESPECIE: TIntegerField;
    Query_TitulosID_CENTRO_CUSTO: TIntegerField;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    SaveDialog1: TSaveDialog;
    ProgressBar1: TProgressBar;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Titulos2: TFrm_Rel_Titulos2;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Titulos2.FormShow(Sender: TObject);
var
al_combo : tfdquery;
begin
        al_combo := TFDQuery.Create(nil);
        al_combo.Connection := dm.FDConnection1;
        al_combo.SQL.Text:='select centro_custos.id_centro,' +
                           '       centro_custos.descricao ' +
                           '       from centro_custos';
        al_combo.Open();
        al_combo.First;
        RzComboBox3.Items.Clear;
        RzComboBox3.values.Clear;
        RzComboBox3.Items.Add('TODOS');
        RzComboBox3.values.Add(' ');
        while al_combo.Eof do
          BEGIN
             RzComboBox3.Items.Add(al_combo.FieldByName('DESCRICAO').AsString);
             RzComboBox3.VALUES.Add(' AND ID_CENTRO_CUSTO = '+IntToStr(al_combo.FieldByName('DESCRICAO').AsINTEGER));
             al_combo.Next;
          END;

        RzComboBox3.ItemIndex:=0;


end;

procedure TFrm_Rel_Titulos2.RzBitBtn1Click(Sender: TObject);
VAR
D : STRING;
begin
     case RadioGroup1.ItemIndex of

      0 : D := 'WHERE ((EMISSAO >=:I) AND (EMISSAO <=:F)) ';
      1 : D := 'WHERE ((VENCIMENTO >=:I) AND (VENCIMENTO <=:F)) ';
      2 : D := 'WHERE ((D_PAGAMENTO >=:I) AND (D_PAGAMENTO <=:F)) ';
     end;


     Query_Titulos.Close;
     QUERY_TITULOS.SQL.Text:='select  * from REL_TITULOS_2 '+D+RzComboBox1.Value+'  '+RzComboBox2.Value+'  '+RzComboBox3.Value;
     Query_Titulos.Params[0].AsDate := RzDateTimeEdit1.Date;
     Query_Titulos.Params[1].AsDate := RzDateTimeEdit2.Date;
     Query_Titulos.Open();




end;

procedure TFrm_Rel_Titulos2.RzBitBtn2Click(Sender: TObject);
var Pasta : Variant;
Linha : Integer;
SOMA : REAL;
TIPO : STRING;
begin




   if Query_Titulos.RecordCount<>0 then
      BEGIN
       ProgressBar1.Visible:=true;
       ProgressBar1.Max:=query_titulos.RecordCount;

          Query_Titulos.Filtered := False;
          Linha := 2;
          Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
          Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
          Pasta.Caption := 'RELATÓRIO DE TITULOS 2'; // Título da planilha
          Pasta.Visible := False; // Deixa a planilha invisível
          Pasta.Cells[1,2] := 'CÓD';
          Pasta.Cells[1,3] := 'DESCRIÇÃO'; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[1,5] := 'DATA DE EMISSÃO';
          Pasta.Cells[1,6] := 'DATA DE VENCIMENTO'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[1,7] := 'VALOR';
          Pasta.Cells[1,8] := 'VALOR ATUAL.';
          Pasta.Cells[1,9] := 'PEDIDO';
          Pasta.Cells[1,10] := 'NOTA FISCAL';
          Pasta.Cells[1,11] := 'DOC';
          Pasta.Cells[1,12] := 'DATA DE PAGAMENTO';
          Pasta.Cells[1,13] := 'VALOR PAGO';
          Pasta.Cells[1,14] := 'ESPECIE';
          Pasta.Cells[1,15] := 'PLANO DE CONTAS';
          Pasta.Cells[1,16] := 'CENTRO DE CUSTO';
          Pasta.Cells[1,17] := 'LOCAL PAGAMENTO';


          Query_Titulos.DisableControls;
           Query_Titulos.first;
          While not Query_Titulos.Eof do
                begin
                ProgressBar1.Position:=Query_Titulos.RecNo;
                Application.ProcessMessages;

                Pasta.Cells[Linha,2] := Query_TitulosCOD.AsInteger;
                Pasta.Cells[Linha,3] := Query_TitulosDESCRICAO.ASSTRING;
                Pasta.Cells[Linha,5] := Query_TitulosEMISSAO.AsDateTime;
                Pasta.Cells[Linha,6] := Query_TitulosVENCIMENTO.AsDateTime;
                Pasta.Cells[Linha,7] := Query_TitulosVALOR.AsFloat;
                Pasta.Cells[Linha,8] := Query_TitulosVALOR_ATUAL.AsFloat;
                Pasta.Cells[Linha,9] := Query_TitulosPEDIDO.AsString;
                Pasta.Cells[Linha,10] :=Query_TitulosNF.AsString;
                Pasta.Cells[Linha,11] :=Query_TitulosDOC.AsString;
                  if length(Query_TitulosD_PAGAMENTO.Asstring) > 0 then
                  Pasta.Cells[Linha,12] :=Query_TitulosD_PAGAMENTO.AsDateTime
                  else
                  Pasta.Cells[Linha,12] :='';

                Pasta.Cells[Linha,13] :=Query_TitulosVALOR_PAGO.AsFloat;
                Pasta.Cells[Linha,14] :=Query_TitulosESPECIE.AsString;
                Pasta.Cells[Linha,15] :=Query_TitulosPLANO_CONTA.AsString;
                Pasta.Cells[Linha,16] :=Query_TitulosCENTRO_CUSTO.AsString;
                Pasta.Cells[Linha,17] :=Query_TitulosLOCAL_PAGA.AsString;
                Linha := Linha + 1;


                Query_Titulos.Next; //vai para o próximo registro da tabela de clientes
                end;
            Pasta.Columns.AutoFit;
            Application.ProcessMessages;
          If SaveDialog1.Execute then
          Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName);
          Pasta.Visible := True;

          Query_Titulos.EnableControls; // sempre será executada essa linha
          Pasta := Unassigned;

      END;
      ProgressBar1.Visible:=false;

end;

end.
