unit UFrm_ListProdTributaria;

interface

uses  comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  dxdbtrel, RzCmboBx, RLReport, RzRadGrp;

type
  TFrm_ListProdTributaria = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FDQuery1: TFDQuery;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand6: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1CODIGO_FAB: TStringField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1ST: TStringField;
    FDQuery1ICMS: TSingleField;
    FDQuery1TRIBUTACAO: TStringField;
    FDQuery1CODIGO_FISCAL: TStringField;
    FDQuery1CODIGO_NCM: TStringField;
    FDQuery1PRECO_CUSTO: TBCDField;
    DataSource1: TDataSource;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    Label4: TLabel;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    RzRadioGroup1: TRzRadioGroup;
    Label5: TLabel;
    FDQuery1CFOP_S_E: TStringField;
    FDQuery1CFOP_S_I: TStringField;
    FDQuery1ORIGEM: TSmallintField;
    FDQuery1PIS: TSingleField;
    FDQuery1COFINS: TSingleField;
    FDQuery1RED_E: TSingleField;
    FDQuery1RED_I: TSingleField;
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    PROCEDURE filtro;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ListProdTributaria: TFrm_ListProdTributaria;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_ListProdTributaria.Button1Click(Sender: TObject);
begin

     filtro;


   if FDQUERY1.RecordCount<>0 then
      RLReport1.PreviewModal
      else
      ShowMessage('nenhum registro encontrado!');
end;

procedure TFrm_ListProdTributaria.Button2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;

begin

     filtro;


   if FDQUERY1.RecordCount<>0 then
      BEGIN

          FDQUERY1.Filtered := False;
          Linha := 2;
          Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
          Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
          Pasta.Caption := 'POSIÇÃO DE ESTOQUE'; // Título da planilha
          Pasta.Visible := False; // Deixa a planilha invisível
          Pasta.Cells[1,2] := 'CÓDIGO';
          Pasta.Cells[1,3] := 'CÓD. FÁBRICA'; // insere o conteúdo ‘Cidade’ na célula A2
          Pasta.Cells[1,4] := 'DESCRIÇÃO';
          Pasta.Cells[1,5] := 'ST'; // insere o conteúdo ‘Fone’na célula A3
          Pasta.Cells[1,6] := 'ICMS';
          Pasta.Cells[1,7] := 'ORIGEM';
          Pasta.Cells[1,8] := 'TRIBUTAÇÃO';
          Pasta.Cells[1,9] := 'CFOP E';
          Pasta.Cells[1,10] := 'CFOP I';
          Pasta.Cells[1,11] := 'PIS';
          Pasta.Cells[1,12] := 'COFINS';
          Pasta.Cells[1,13] := 'NCM';
          Pasta.Cells[1,14] := 'REDUÇÃO E';
          Pasta.Cells[1,15] := 'REDUÇÃO I';
          Pasta.Cells[1,16] := 'CUSTO';

          FDQUERY1.DisableControls; // desabilita os controles de dados
          Try
          While not FDQUERY1.Eof do //executa enquanto não for fim de arquivo de clientes
          begin
          Pasta.Cells[Linha,2] := FDQUERY1ID_PRODUTO.AsExtended;
          Pasta.Cells[Linha,3] := FDQuery1CODIGO_FAB.ASSTRING;
          Pasta.Cells[Linha,4] := FDQuery1DESCRICAO.Text;
          Pasta.Cells[Linha,5] := FDQuery1ST.AsString;
          Pasta.Cells[Linha,6] := FDQuery1ICMS.AsString;
          Pasta.Cells[Linha,7] := FDQuery1TRIBUTACAO.AsString;
          Pasta.Cells[Linha,8] := FDQuery1CFOP_S_E.AsInteger;
          Pasta.Cells[Linha,9]:= FDQuery1CFOP_S_I.AsInteger;
          Pasta.Cells[Linha,10]:= FDQuery1CFOP_S_I.AsInteger;
          Pasta.Cells[Linha,11]:= FDQuery1PIS.AsString;
          Pasta.Cells[Linha,12]:= FDQuery1COFINS.AsString;
          Pasta.Cells[Linha,13]:= FDQuery1CODIGO_NCM.AsString;
          Pasta.Cells[Linha,14]:= FDQuery1RED_E.AsFloat;
          Pasta.Cells[Linha,15]:= FDQuery1RED_I.AsFloat;
          Pasta.Cells[Linha,16]:= FDQuery1PRECO_CUSTO.AsCurrency;
          Linha := Linha + 1; // Incrementa a variável Linha em 01



           FDQuery1.Next; //vai para o próximo registro da tabela de clientes
          end;
          Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel

          // Coloca Senha de Proteção na Planilha 01
          If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
          Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
          Pasta.Visible := True; //Deixa a planilha visível
          Finally
          FDQuery1.EnableControls; // sempre será executada essa linha
          Pasta := Unassigned;
          end;
      END
     else
      ShowMessage('nenhum registro encontrado!');

end;




procedure TFrm_ListProdTributaria.filtro;
VAR
TIPO : STRING;
begin
    case Rzradiogroup1.ItemIndex of
     0: TIPO:=' and REL_LIST_PRODUTOS1.tipo <> 4 ';
     1: TIPO:=' and REL_LIST_PRODUTOS1.tipo = 4 ';
     2: TIPO:=' ';
    end;
  FDQuery1.Close;
  FDQUERY1.SQL.Text:='SELECT REL_LIST_PRODUTOS1.id_produto, ' +
                     '       REL_LIST_PRODUTOS1.codigo_fab, ' +
                     '       REL_LIST_PRODUTOS1.descricao, ' +
                     '       REL_LIST_PRODUTOS1.st, ' +
                     '       REL_LIST_PRODUTOS1.icms, ' +
                     '       REL_LIST_PRODUTOS1.tributacao, ' +
                     '       REL_LIST_PRODUTOS1.codigo_fiscal, ' +
                     '       REL_LIST_PRODUTOS1.codigo_ncm, ' +
                     '       REL_LIST_PRODUTOS1.preco_custo, ' +
                     '       REL_LIST_PRODUTOS1.CFOP_S_E,' +
                     '       REL_LIST_PRODUTOS1.CFOP_S_I,' +
                     '       REL_LIST_PRODUTOS1.ORIGEM, ' +
                     '       REL_LIST_PRODUTOS1.PIS,' +
                     '       REL_LIST_PRODUTOS1.COFINS, ' +
                     '       REL_LIST_PRODUTOS1.RED_E, ' +
                     '       REL_LIST_PRODUTOS1.RED_I '+
                     '       FROM REL_LIST_PRODUTOS1 ' +
                     'WHERE  REL_LIST_PRODUTOS1.id_produto IS NOT NULL '+TIPO+' '+
                      RzComboBox1.Value+' '+RzComboBox2.Value+RzComboBox3.Value+' order by REL_LIST_PRODUTOS1.id_produto';
  FDQUERY1.OPEN;
end;

procedure TFrm_ListProdTributaria.FormShow(Sender: TObject);
var
departamento : TFDQuery;
begin
          departamento:=TFDQuery.Create(self);
          departamento.Connection:=dm.FDConnection1;
          departamento.SQL.Text:='select departamentos.descricao,' +
                                 '        departamentos.id_depto ' +
                                 '   from departamentos';
          departamento.Open;
          departamento.First;
           RzComboBox1.Items.Add(' TODOS ');
           RzComboBox1.Values.Add(' ');
          while not departamento.eof do
             begin
                 RzComboBox1.Items.Add(departamento.FieldByName('descricao').asstring);
                 RzComboBox1.Values.Add(' AND REL_LIST_PRODUTOS1.id_depto = '+departamento.FieldByName('id_depto').AsString);
                 departamento.next;
             end;

          departamento.Free;

          departamento:=TFDQuery.Create(self);
          departamento.Connection:=dm.FDConnection1;
          departamento.SQL.Text:='select categorias.id_categoria,' +
                                 '       categorias.descricao ' +
                                 '       from categorias';
          departamento.Open;
          departamento.First;
           RzComboBox2.Items.Add(' TODOS ');
           RzComboBox2.Values.Add(' ');
          while not departamento.eof do
             begin
                 RzComboBox2.Items.Add(departamento.FieldByName('descricao').asstring);
                 RzComboBox2.Values.Add(' AND  REL_LIST_PRODUTOS1.id_categoria = '+departamento.FieldByName('id_categoria').AsString);
                 departamento.next;
             end;

          departamento.Free;

          departamento:=TFDQuery.Create(self);
          departamento.Connection:=dm.FDConnection1;
          departamento.SQL.Text:='select laboratorios.id_laboratorio,' +
                                 '        laboratorios.nome ' +
                                 '        from laboratorios';
          departamento.Open;
          departamento.First;
           RzComboBox3.Items.Add(' TODOS ');
           RzComboBox3.Values.Add(' ');
          while not departamento.eof do
             begin
                 RzComboBox3.Items.Add(departamento.FieldByName('nome').asstring);
                 RzComboBox3.Values.Add(' AND  REL_LIST_PRODUTOS1.marca = '''+departamento.FieldByName('nome').asstring+'''');
                 departamento.next;
             end;

    RzComboBox1.ItemIndex:=0;
    RzComboBox2.ItemIndex:=0;
    RzComboBox3.ItemIndex:=0;


end;

end.
