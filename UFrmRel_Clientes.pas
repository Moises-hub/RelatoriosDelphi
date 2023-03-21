unit UFrmRel_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzRadGrp, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzPanel, RLReport, RzButton, Vcl.ExtCtrls, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids,
  System.Win.ComObj, Vcl.ComCtrls, RzCmboBx, Vcl.Buttons, dxGDIPlusClasses;

type
  TFrmRel_Clientes = class(TForm)
    RzPanel1: TRzPanel;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    Prov_Cliente: TDataSetProvider;
    DS_Clientes: TDataSource;
    Cliente: TSQLDataSet;
    CD_Clientes: TClientDataSet;
    CD_ClientesNOME: TStringField;
    CD_ClientesOBS: TBlobField;
    CD_ClientesNASCIMENTO: TDateField;
    CD_ClientesDATA_CADASTRO: TDateField;
    RzRadioGroup1: TRzRadioGroup;
    RzRadioGroup2: TRzRadioGroup;
    SaveDialog1: TSaveDialog;
    CD_ClientesCELULAR: TStringField;
    CD_ClientesFONE_RES: TStringField;
    CD_ClientesFONE_COM: TStringField;
    CheckBox1: TCheckBox;
    CD_ClientesFONE: TStringField;
    CD_ClientesEMAIL: TStringField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CD_Clientesid_cliente: TFMTBCDField;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText8: TRLDBText;
    Memo1: TMemo;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure filtrar;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRel_Clientes: TFrmRel_Clientes;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrmRel_Clientes.filtrar;
var
ordem : string;
begin
case RzRadioGroup2.ItemIndex of
0:ordem:='NOME';
1:ordem:='EXTRACT (month from clientes.nascimento), extract(day from clientes.nascimento)';
2:ORDEM:='DATA_CADASTRO';
end;



  CD_Clientes.CLOSE;

if RzRadioGroup1.ItemIndex = 0 then
   begin
   if CheckBox1.Checked = false then
   CD_Clientes.CommandText:='select CLIENTES.ID_CLIENTE,clientes.NOME, clientes.OBS, clientes.NASCIMENTO, clientes.DATA_CADASTRO, clientes_dados.CELULAR, clientes_dados.FONE_RES, '''' as fone, '+
                            'clientes_dados.FONE_COM,CLIENTES.EMAIL from clientes LEFT JOIN CLIENTES_DADOS ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE) where EXTRACT (day from clientes.nascimento) >=:ID and  '+
                            'EXTRACT (month from clientes.nascimento) >=:IM and extract(day from clientes.nascimento) <=:FD and  EXTRACT (month from clientes.nascimento) <=:FM order by '+ordem
      else
   CD_Clientes.CommandText:='select CLIENTES.ID_CLIENTE, '+
                            '       clientes_referencias.NOME,' +
                            '       clientes.OBS, ' +
                            '       clientes_referencias.NASCIMENTO, ' +
                            '       clientes.DATA_CADASTRO, ' +
                            '       clientes_dados.CELULAR, ' +
                            '       clientes_dados.FONE_RES, ' +
                            '       clientes_dados.FONE_COM, ' +
                            '       clientes_referencias.fone as fone, '+
                            '       CLIENTES.EMAIL '+
                            '       from clientes_referencias ' +
                            '       inner join clientes on clientes.id_cliente = clientes_referencias.id_cliente  and clientes_referencias.tipo = 4 ' +
                            '       LEFT JOIN CLIENTES_DADOS ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE) '+
                            '       where EXTRACT (day from clientes_referencias.nascimento) >=:ID and ' +
                            '       EXTRACT (month from clientes_referencias.nascimento) >=:IM and '+
                            '       extract(day from clientes_referencias.nascimento) <=:FD and  '+
                            '       EXTRACT (month from clientes_referencias.nascimento) <=:FM order by '+ordem;




   CD_Clientes.Params[0].Asinteger:=StrToInt(ComboBox1.Text);
   CD_Clientes.Params[1].Asinteger:=StrToInt(ComboBox2.Text);
   CD_Clientes.Params[2].Asinteger:=StrToInt(ComboBox3.Text);
   CD_Clientes.Params[3].Asinteger:=StrToInt(ComboBox4.Text);
   end
   else
     if RzRadioGroup1.ItemIndex = 1 then
         begin



            if CheckBox1.Checked = false then
               CD_Clientes.CommandText:='select CLIENTES.ID_CLIENTE,clientes.NOME, clientes.OBS, clientes.NASCIMENTO, clientes.DATA_CADASTRO, clientes_dados.CELULAR, clientes_dados.FONE_RES, clientes_dados.FONE_COM, '''' as fone  from clientes '+
                                  'LEFT JOIN CLIENTES_DADOS ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE)  where DATA_CADASTRO >=:ini and DATA_CADASTRO <=:fim order by '+ordem
               else
               CD_Clientes.CommandText:='select CLIENTES.ID_CLIENTE, '+
                                  'clientes_referencias.NOME, '+
                                  'clientes.OBS, '+
                                  'clientes_referencias.NASCIMENTO, '+
                                  'clientes.DATA_CADASTRO, '+
                                  'clientes_dados.CELULAR, '+
                                  'clientes_dados.FONE_RES, '+
                                  'clientes_dados.FONE_COM, '+
                                  'clientes_referencias.fone as fone, '+
                                  'CLIENTES.EMAIL '+
                                  'from clientes_referencias '+
                                  'inner join clientes on clientes.id_cliente = clientes_referencias.id_cliente and clientes_referencias.tipo = 4' +
                                  'LEFT JOIN CLIENTES_DADOS ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE) ' +
                                  ' where DATA_CADASTRO >=:ini and DATA_CADASTRO <=:fim  order by '+ordem;


         CD_Clientes.Params[0].AsDate:=RzDateTimeEdit3.Date;
         CD_Clientes.Params[1].AsDate:=RzDateTimeEdit4.Date;
         end
        else
        if RzRadioGroup1.ItemIndex = 2 then
           begin
           if CheckBox1.Checked = false then
           CD_Clientes.CommandText:='select CLIENTES.ID_CLIENTE,clientes.NOME, clientes.OBS, clientes.NASCIMENTO, clientes.DATA_CADASTRO, clientes_dados.CELULAR, clientes_dados.FONE_RES, clientes_dados.FONE_COM, '''' as fone,CLIENTES.EMAIL from clientes '+
                                    'LEFT JOIN CLIENTES_DADOS ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE)  where EXTRACT (day from clientes.nascimento) >=:ID and  '+
                                    'EXTRACT (month from clientes.nascimento) >=:IM and extract(day from clientes.nascimento) <=:FD '+
                                    'and  EXTRACT (month from clientes.nascimento) <=:FM and DATA_CADASTRO >=:cini and DATA_CADASTRO <=:cfim order by '+ordem

             else
             CD_Clientes.CommandText:='select CLIENTES.ID_CLIENTE, '+
                                      '       clientes_referencias.NOME, ' +
                                      '       clientes.OBS, ' +
                                      '       clientes_referencias.NASCIMENTO, ' +
                                      '       clientes.DATA_CADASTRO, ' +
                                      '       clientes_dados.CELULAR, ' +
                                      '       clientes_dados.FONE_RES, ' +
                                      '       clientes_dados.FONE_COM, ' +
                                      '       clientes_referencias.fone as fone, ' +
                                      '       CLIENTES.EMAIL '+
                                      '       from clientes_referencias ' +
                                      'inner join clientes on clientes.id_cliente = clientes_referencias.id_cliente  and clientes_referencias.tipo = 4 ' +
                                      'LEFT JOIN CLIENTES_DADOS ON(CLIENTES_DADOS.ID_CLIENTE = CLIENTES.ID_CLIENTE) ' +
                                      'where EXTRACT (day from clientes.nascimento) >=:ID and ' +
                                      'EXTRACT (month from clientes.nascimento) >=:IM and ' +
                                      'extract(day from clientes_referencias.nascimento) <=:FD and ' +
                                      'EXTRACT (month from clientes_referencias.nascimento) <=:FM and ' +
                                      'DATA_CADASTRO >=:cini and DATA_CADASTRO <=:cfim order by '+ordem;

               CD_Clientes.Params[0].Asinteger:=StrToInt(ComboBox1.Text);
               CD_Clientes.Params[1].Asinteger:=StrToInt(ComboBox2.Text);
               CD_Clientes.Params[2].Asinteger:=StrToInt(ComboBox3.Text);
               CD_Clientes.Params[3].Asinteger:=StrToInt(ComboBox4.Text);
               CD_Clientes.Params[4].AsDate:=RzDateTimeEdit3.Date;
               CD_Clientes.Params[5].AsDate:=RzDateTimeEdit4.Date;


           end;


     CD_Clientes.OPEN;
end;

procedure TFrmRel_Clientes.FormShow(Sender: TObject);
begin
ComboBox1.Text:=FormatDateTime('dd',now);
ComboBox3.Text:=FormatDateTime('dd',now);
ComboBox2.Text:=FormatDateTime('mm',now);
ComboBox4.Text:=FormatDateTime('mm',now);
end;

procedure TFrmRel_Clientes.RzBitBtn1Click(Sender: TObject);
var

Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;
begin
        filtrar;


     if CD_Clientes.RecordCount<>0 then
        begin

                  CD_Clientes.Filtered := False;
                  Linha := 2;
                  Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
                  Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
                  Pasta.Caption := 'Relatório de Clientes '; // Título da planilha
                  Pasta.Visible := False; // Deixa a planilha invisível
                  Pasta.Cells[1,2] := 'ID';
                  Pasta.Cells[1,3] := 'DATA DE CADASTRO';
                  Pasta.Cells[1,4] := 'NOME'; // insere o conteúdo ‘Cidade’ na célula A2
                  Pasta.Cells[1,5] := 'DATA DE NASCIMENTO'; // insere o conteúdo ‘Fone’na célula A3
                  Pasta.Cells[1,6] := 'CELULAR';
                  Pasta.Cells[1,7] := 'FONE RES';
                  Pasta.Cells[1,8] := 'FONE COM';
                  Pasta.Cells[1,9] := 'FONE';
                  Pasta.Cells[1,10] := 'EMAIL';

                  CD_Clientes.DisableControls; // desabilita os controles de dados
                  Try
                  While not CD_Clientes.Eof do //executa enquanto não for fim de arquivo de clientes
                  begin
                  try
                  Pasta.Cells[Linha,2] :=CD_Clientesid_cliente.AsInteger;
                  Pasta.Cells[Linha,3] :=CD_ClientesDATA_CADASTRO.AsDateTime;
                  Pasta.Cells[Linha,4] :=UpperCase(CD_ClientesNOME.AsString);
                  Pasta.Cells[Linha,5] :=CD_ClientesNASCIMENTO.AsDateTime;
                  Pasta.Cells[Linha,6] :=CD_ClientesCELULAR.AsString;
                  Pasta.Cells[Linha,7] :=CD_ClientesFONE_RES.AsString;
                  Pasta.Cells[Linha,8] :=CD_ClientesFONE_COM.AsString;
                  Pasta.Cells[Linha,9] :=CD_ClientesFONE.AsString;
                  Pasta.Cells[Linha,10] :=CD_ClientesEMAIL.AsString;

                 // Pasta.Cells[Linha,7] :=FloatToStr(StrToFloat((copy(DateToStr(now),8,4)))- StrTofloat(copy(CD_ClientesNASCIMENTO.text,8,4)));
                  Linha := Linha + 1; // Incrementa a variável Linha em 01

                  except

                  end;


                  CD_Clientes.Next; //vai para o próximo registro da tabela de clientes
                  end;
                  Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
              // Coloca Senha de Proteção na Planilha 01
                  If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
                  Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
                  Pasta.Visible := True; //Deixa a planilha visível
                  Finally
                  CD_Clientes.EnableControls; // sempre será executada essa linha
                  Pasta := Unassigned;
                  end;

        end
        ELSE
        ShowMessage('Nenhum Registro Encontrado!!');



end;

procedure TFrmRel_Clientes.RzBitBtn2Click(Sender: TObject);
begin
    filtrar;
    Memo1.Lines.Text:= CD_Clientes.CommandText;


     if CD_Clientes.RecordCount<>0 then
        begin
          RLReport1.PreviewModal;
        end
        else
        ShowMessage('nenhum registro encontrado!');
end;

procedure TFrmRel_Clientes.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Relatório de clientes filtrado por Mês e Ano de Nascimento, data de cadastro e Ambos, '+#13+'Relatório Impresso em Folha Papel A4',mtInformation,[mbOK],0);
end;

end.
