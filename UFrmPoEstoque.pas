unit UFrmPoEstoque;

interface

uses  comobj, RLTypes,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.ExtCtrls,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Vcl.Grids,
  Vcl.DBGrids, RzPanel, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, RLFilters, RLXLSFilter, RLReport, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPoEstoque = class(TForm)
    DS_Relatorio: TDataSource;
    DT_Relatorio: TSQLDataSet;
    SQLDataSet2: TSQLDataSet;
    Prov_Relatorio: TDataSetProvider;
    Cli_Relatorio: TClientDataSet;
    SQLQuery1: TSQLQuery;
    SaveDialog1: TSaveDialog;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RzPanel1: TRzPanel;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    CheckBox4: TCheckBox;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Button4: TButton;
    RzComboBox4: TRzComboBox;
    Label4: TLabel;
    Label5: TLabel;
    RzComboBox5: TRzComboBox;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    Memo1: TMemo;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    SOMA: TFDQuery;
    DS_Soma: TDataSource;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel15: TRLLabel;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    SOMAESTOQUE: TFloatField;
    SOMAPRECO_CUSTO: TFloatField;
    SOMAPRECO_MINIMO: TFloatField;
    SOMAPRECO_TABELA: TFloatField;
    SOMAEMBALAGEM: TFloatField;
    SOMAPRECO_TAB_EMBAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure filtrar(sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPoEstoque: TFrmPoEstoque;
  ORDENAR : STRING;
implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrmPoEstoque.Button2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;

begin
filtrar(sender);
  if Cli_Relatorio.RecordCount<>0 then
             begin

                        Panel1.Visible:=TRUE;
                        Cli_Relatorio.Filtered := False;
                        Linha := 2;
                        Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
                        Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
                        Pasta.Caption := 'POSIÇÃO DE ESTOQUE'; // Título da planilha
                        Pasta.Visible := False; // Deixa a planilha invisível
                        Pasta.Cells[1,2] := 'ID';
                        Pasta.Cells[1,3] := 'REF';
                        Pasta.Cells[1,4] := 'CODIGO DE BARRAS';
                        Pasta.Cells[1,5] := 'CODIGO DE FABRICA';// insere o conteúdo ‘Cidade’ na célula A2
                        Pasta.Cells[1,6] := 'PRODUTO';
                        Pasta.Cells[1,7] := 'ESTOQUE'; // insere o conteúdo ‘Fone’na célula A3
                        Pasta.Cells[1,8] := 'DEPARTAMENTO';



                     if CheckBox8.Checked = true then

                           Pasta.Cells[1,9] :='CATEGORIA';

                     if CheckBox7.Checked = true then
                         Pasta.Cells[1,10] :='MARCA';



                    if CheckBox3.Checked = true then
                        Pasta.Cells[1,11] := 'PREÇO DE CUSTO';





                 if CheckBox5.Checked = true then

                      Pasta.Cells[1,12] := 'PREÇO DE MINÍMO';


                 if CheckBox6.Checked = true then
                    Pasta.Cells[1,13] := 'PREÇO DE VENDA';














                             if CheckBox4.Checked = true then
                                BEGIN
                                 Pasta.Cells[1,14] := 'CUSTO POR EMBALAGEM';
                                 Pasta.Cells[1,15] :='VALOR V. POR EMB.';
                                END;




                         ProgressBar1.Max:=Cli_Relatorio.RecordCount;

                        Cli_Relatorio.DisableControls; // desabilita os controles de dados
                        Try
                        While not Cli_Relatorio.Eof do //executa enquanto não for fim de arquivo de clientes
                              begin
                              Pasta.Cells[Linha,2] := Cli_Relatorio.FieldByName('ID_PRODUTO').Asstring;
                              Pasta.Cells[Linha,3] := Cli_Relatorio.FieldByName('REF').asstring;


                              Pasta.Cells[Linha,4] := Cli_Relatorio.FieldByName('CODIGO_BARRA').text;
                              Pasta.Cells[Linha,5] := Cli_Relatorio.FieldByName('CODIGO_FAB').Text;
                              Pasta.Cells[Linha,6] := Cli_Relatorio.FieldByName('DESCRICAO').Text;
                              Pasta.Cells[Linha,7] := Cli_Relatorio.FieldByName('ESTOQUE').AsExtended;
                              Pasta.Cells[Linha,8] := Cli_Relatorio.FieldByName('DEPTO').AsSTRING;

                                 if CheckBox8.Checked = true then
                                     Pasta.Cells[Linha,9] := Cli_Relatorio.FieldByName('CATEG').AsSTRING;

                               if CheckBox7.Checked = true then
                                      Pasta.Cells[Linha,10] := Cli_Relatorio.FieldByName('MARCA').AsSTRING;




                                  if CheckBox3.Checked = true then
                                      Pasta.Cells[Linha,11] := Cli_Relatorio.FieldByName('PRECO_CUSTO').AsCurrency;

                               if CheckBox5.Checked = true then

                                    Pasta.Cells[Linha,12] := Cli_Relatorio.FieldByName('PRECO_MINIMO').AsCurrency;


                               if CheckBox6.Checked = true then
                                  Pasta.Cells[Linha,13] := Cli_Relatorio.FieldByName('PRECO_TABELA').AsCurrency;

                                   if CheckBox4.Checked = true then
                                      BEGIN
                                      Pasta.Cells[Linha,14] := Cli_Relatorio.FieldByName('PRECO_CUSTO_EMB').AsCurrency;
                                      Pasta.Cells[Linha,15] := Cli_Relatorio.FieldByName('PRECO_TABELA_EMB').AsCurrency;
                                      END;

                              Linha := Linha + 1; // Incrementa a variável Linha em 01

                              ProgressBar1.Position:=Cli_Relatorio.RecNo;
                               Cli_Relatorio.Next; //vai para o próximo registro da tabela de clientes
                              end;



                        Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
                        {
                        Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True, Scenarios:=True,
                        Password:=''); }// Coloca Senha de Proteção na Planilha 01
                        Panel1.Visible:=FALSE;

                        If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
                        Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
                        Pasta.Visible := True; //Deixa a planilha visível
                        Finally
                        Cli_Relatorio.EnableControls; // sempre será executada essa linha
                        Pasta := Unassigned;
                        end;
             end
             else
             ShowMessage('nenhum registro encontrado');

end;


procedure TFrmPoEstoque.Button3Click(Sender: TObject);
begin
            filtrar(sender);
         if Cli_Relatorio.RecordCount<>0 then
             begin
                 if CheckBox3.Checked = true then
                    BEGIN
                      RLLABEL5.Visible:=TRUE;
                      RLDBText1.Visible:=TRUE;


                    END
                    ELSE
                    BEGIN
                      RLLABEL5.Visible:=false;
                      RLDBText1.Visible:=false;
                    END;

                 if CheckBox5.Checked = true then
                    BEGIN
                      RLLABEL13.Visible:=TRUE;
                      RLDBText12.Visible:=TRUE;


                    END
                    ELSE
                    BEGIN
                      RLLABEL13.Visible:=false;
                      RLDBText12.Visible:=false;
                    END;

                 if CheckBox6.Checked = true then
                    BEGIN
                      RLLABEL6.Visible:=TRUE;
                      RLDBText6.Visible:=TRUE;


                    END
                    ELSE
                    BEGIN
                      RLLABEL6.Visible:=false;
                      RLDBText6.Visible:=false;
                    END;




                 if CheckBox4.Checked = true then
                    BEGIN
                      RLLABEL9.Visible:=TRUE;
                      RLLABEL10.Visible:=TRUE;
                      RLDBText8.Visible:=TRUE;
                      RLDBText9.Visible:=TRUE;
                      RLDBText4.Width := 170;

                    END
                    ELSE
                    BEGIN

                      RLLABEL9.Visible:=FALSE;
                      RLLABEL10.Visible:=FALSE;
                      RLDBText8.Visible:=FALSE;
                      RLDBText9.Visible:=FALSE;
                      RLDBText4.Width := 300;
                    END;





             RLReport1.PreviewModal;
             end
             else
             ShowMessage('nenhum registro encontrado');
end;

procedure TFrmPoEstoque.Button4Click(Sender: TObject);
begin
close
end;

procedure TFrmPoEstoque.filtrar(sender: TObject);
var
c,servico,marca : string;
begin




        if CheckBox1.Checked = true then
            servico:=' and ((tipo = 1) or (tipo = 2)  or  (tipo = 5) or (tipo = 7)) '
            else
            servico:=' ';

                if CheckBox2.Checked = true then
                    c:=' and (estoque > 0) '
                    else
                    c:=' ';










          Cli_Relatorio.Close;



                   Cli_Relatorio.CommandText:= 'select '+
                                     'id_produto,' +
                                     'estoque, ' +
                                     'DESCRICAO,' +
                                     'REF, ' +
                                     'cast(PRECO_CUSTO as numeric(15,2)) as PRECO_CUSTO, ' +
                                     'cast(PRECO_MINIMO as numeric(15,2)) as PRECO_MINIMO, ' +
                                     'cast(PRECO_TABELA as numeric(15,2)) as PRECO_TABELA, ' +
                                     'CODIGO_FAB, ' +
                                     'PRECO_CUSTO_EMB, ' +
                                     'PRECO_TABELA_EMB, ' +
                                     'CATEG, ' +
                                     'MARCA, ' +
                                     'DEPTO, ' +
                                     'id_depto, ' +
                                     'CODIGO_BARRA ' +
                                     'from REL_POS_ESTOQUE_2 '+
                                     'where  MARCA like '+RzComboBox2.value+' '+RzComboBox1.Value+' '+RzComboBox3.value+' '+c+' '+RzComboBox5.Value+' '+servico+' '+RzComboBox4.Value+
                                     'order by  depto,id_produto';





          Memo1.Lines.text:=Cli_Relatorio.CommandText;
           Cli_Relatorio.Open;


           SOMA.Close;
           SOMA.SQL.Text:= 'select SUM(estoque) as ESTOQUE,' +
                           '       SUM(PRECO_CUSTO * REL_POS_ESTOQUE_2.estoque)AS PRECO_CUSTO, ' +
                           '       SUM(PRECO_MINIMO * REL_POS_ESTOQUE_2.estoque) as PRECO_MINIMO, ' +
                           '       SUM(PRECO_TABELA * REL_POS_ESTOQUE_2.estoque) as PRECO_TABELA, ' +
                           '       SUM(PRECO_CUSTO_EMB * REL_POS_ESTOQUE_2.estoque) EMBALAGEM, ' +
                           '       SUM(PRECO_TABELA_EMB * REL_POS_ESTOQUE_2.estoque) PRECO_TAB_EMBAL ' +
                           '       from REL_POS_ESTOQUE_2 '+
                           'where MARCA like '+RzComboBox2.value+' '+RzComboBox1.Value+' '+
                           RzComboBox3.value+' '+c+' '+RzComboBox5.Value+' '+servico+' '+RzComboBox4.Value;
           SOMA.Open();
end;

procedure TFrmPoEstoque.FormCreate(Sender: TObject);
begin

       if dm.SQLConnection1.Connected=true then
          begin
          RzComboBox4.values.Clear;
          RzComboBox4.Items.Clear;
          RzComboBox1.Items.Add('<<TODOS>>');
          RzComboBox2.Items.Add('<<TODOS>>');
          RzComboBox3.Items.Add('<<TODOS>>');
          RzComboBox4.Items.Add('<<TODOS>>');

          RzComboBox1.values.Add(' ');
          RzComboBox2.values.Add('''%''');
          RzComboBox3.values.Add(' ');

          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          SQLQuery1.SQL.Add('select * from Lista_categorias');
          SQLQuery1.open;
          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox1.Items.Add(SQLQuery1.FieldByName('categoria').AsString);
            RzComboBox1.Values.Add(' and id_categoria = '+SQLQuery1.FieldByName('id_categoria').asstring);
            SQLQuery1.next;
            end;

          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          SQLQuery1.SQL.Add('select * from laboratorios');
          SQLQuery1.open;

          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox2.Items.Add(SQLQuery1.FieldByName('NOME').AsString);
            RzComboBox2.values.Add(''''+SQLQuery1.FieldByName('NOME').AsString+'''');
           // RzComboBox2.Values.Add(sqlDataSet2.FieldByName('id_laboratorio').text);
            SQLQuery1.next;
            end;



          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          SQLQuery1.SQL.Add('select * from colecoes');
          SQLQuery1.open;

          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox3.Items.Add(SQLQuery1.FieldByName('descricao').AsString);
            RzComboBox3.Values.Add('and colecao = '+SQLQuery1.FieldByName('id_colecao').asstring);
            SQLQuery1.next;
            end;


          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          SQLQuery1.SQL.Add('select ID_DEPTO, DESCRICAO from DEPARTAMENTOS');
          SQLQuery1.open;
          RzComboBox4.Values.Add(' ');

          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox4.Items.Add(SQLQuery1.FieldByName('descricao').AsString);
            RzComboBox4.Values.Add(' and id_depto = '+SQLQuery1.FieldByName('ID_DEPTO').asstring);
            SQLQuery1.next;
            end;


            RzComboBox1.ItemIndex:=0;
            RzComboBox2.ItemIndex:=0;
            RzComboBox3.ItemIndex:=0;
            RzComboBox4.ItemIndex:=0;

            //Cli_Relatorio.Open;











          end;


end;

end.
