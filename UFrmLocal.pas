unit UFrmLocal;

interface

uses  comobj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, RLReport, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, dxGDIPlusClasses, RLFilters,
  RLPDFFilter, Vcl.ComCtrls;

type
  TFrmLocal = class(TForm)
    RzPanel1: TRzPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1UNIDADE: TStringField;
    FDQuery1LOCAL: TStringField;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLGroup1: TRLGroup;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLDBText5: TRLDBText;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand6: TRLBand;
    RLImage2: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    FDQuery1ESTOQUE: TSingleField;
    CheckBox1: TCheckBox;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    FDQuery1REF: TStringField;
    FDQuery1CODFABRICA: TStringField;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocal: TFrmLocal;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;



procedure TFrmLocal.Button1Click(Sender: TObject);
var
  I: INTEGER;
begin
  I:=Pos('-',Edit1.Text);
 if Pos('-',Edit1.Text) >0  then
    I:= Pos('-',Edit1.Text)-1
    ELSE
    I:=20;




      FDQUERY1.CLOSE;
      FDQUERY1.SQL.Text:= 'SELECT * FROM RELLOCAL '+
                          'WHERE LOCAL LIKE :A  and dpto ='+IntToStr(FrmPrincipal.empresa)+' ORDER BY LOCAL';

      FDQUERY1.PARAMS[0].ASSTRING:=Edit1.Text+'%';
      FDQUERY1.Open();



    if CheckBox1.Checked = TRUE then
      BEGIN
    //   RLLabel6.Visible:=TRUE;
       RLDBText6.Visible:=TRUE;
      END
      ELSE
      BEGIN
    //   RLLabel6.Visible:=FALSE;
       RLDBText6.Visible:=FALSE;
      END;

    RLReport1.PreviewModal;


  ///  ShowMessage(COPY(Edit1.Text,1,I));
end;

procedure TFrmLocal.Button2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;
begin





      FDQUERY1.CLOSE;
      FDQUERY1.SQL.Text:= 'SELECT * FROM RELLOCAL '+
                          'WHERE LOCAL LIKE :A  and dpto ='+IntToStr(FrmPrincipal.empresa)+' ORDER BY LOCAL';

      FDQUERY1.PARAMS[0].ASSTRING:=Edit1.Text+'%';
      FDQUERY1.Open();





  if FDQuery1.RecordCount<>0 then
             begin
                       ProgressBar1.Max:= FDQuery1.RecordCount;
                       ProgressBar1.Visible:=true;
                       // Panel1.Visible:=TRUE;
                        FDQuery1.Filtered := False;
                        Linha := 7;
                        Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
                        Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
                        Pasta.Caption := 'RELATÓRIO DE ESTOQUE POR LOCAL'; // Título da planilha
                        Pasta.Visible := False; // Deixa a planilha invisível

                        Pasta.Range['A1','A1'].font.bold := true;
                        Pasta.Range['A2','A2'].font.bold := true;
                        Pasta.Range['A3','A3'].font.bold := true;
                        Pasta.Range['A4','A4'].font.bold := true;
                        Pasta.Range['A6','O4'].font.bold := true;

                        Pasta.Cells[1,1] := 'RELATÓRIO DE ESTOQUE POR LOCAL';






                        Pasta.Cells[6,1] := 'ID_PRODUTO';
                        Pasta.Cells[6,2] := 'REF';// insere o conteúdo ‘Cidade’ na célula A2
                        Pasta.Cells[6,3] := 'COD FABRICA';
                        Pasta.Cells[6,4] := 'DESCRICAO'; // insere o conteúdo ‘Fone’na célula A3
                        Pasta.Cells[6,5] := 'UNIDADE';
                        Pasta.Cells[6,6] := 'LOCAL';


                           if CheckBox1.Checked = TRUE then
                              BEGIN
                            //   RLLabel6.Visible:=TRUE;
                               Pasta.Cells[6,7] := 'ESTOQUE';
                              END;










                    //     ProgressBar1.Max:=Cli_Relatorio.RecordCount;
                        FDQuery1.FIRST;
                        FDQuery1.DisableControls; // desabilita os controles de dados

                        While not FDQuery1.Eof do //executa enquanto não for fim de arquivo de clientes
                        begin

                        Pasta.Cells[Linha,1] := FDQuery1.FieldByName('ID_PRODUTO').AsINTEGER;
                        Pasta.Cells[Linha,2] := FDQuery1.FieldByName('REF').AsSTRING;
                        Pasta.Cells[Linha,3] := FDQuery1.FieldByName('CODFABRICA').AsString;
                        Pasta.Cells[Linha,4] := FDQuery1.FieldByName('DESCRICAO').AsSTRING;
                        Pasta.Cells[Linha,5] := FDQuery1.FieldByName('UNIDADE').AsString;
                        Pasta.Cells[Linha,6] := FDQuery1.FieldByName('LOCAL').AssTRING;
                              BEGIN
    //   RLLabel6.Visible:=TRUE;
                              Pasta.Cells[Linha,7] := FDQuery1.FieldByName('ESTOQUE').AsFloat;
                              END;




                        INC(LINHA);

                        ProgressBar1.Position:= FDQuery1.RecNo;
                        FDQuery1.Next; //vai para o próximo registro da tabela de clientes
                        end; // Incrementa a variável Linha em 01
                  
                        ProgressBar1.Visible:=false;           {
                        SOMA:=SOMA+Cli_Relatorio.FieldByName('TOTAL').AsExtended;
                        ProgressBar1.Position:=Cli_Relatorio.RecNo;
                         Cli_Relatorio.Next; //vai para o próximo registro da tabela de clientes
                        end;      }
                        Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
                        {
                        Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True, Scenarios:=True,
                        Password:=''); }// Coloca Senha de Proteção na Planilha 01
                        //Panel1.Visible:=FALSE;
                        If SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
                        Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
                        Pasta.Visible := True; //Deixa a planilha visível


                       FDQuery1.EnableControls; // sempre será executada essa linha
                        Pasta := Unassigned;


             end
                 else
                 ShowMessage('nenhum registro encontrado');

end;

end.
