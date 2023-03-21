unit URel_ItensVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzRadGrp,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, RzCmboBx, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, RLParser, Vcl.Grids,
  Vcl.DBGrids;

type
  TRel_ItensVenda = class(TForm)
    RzRadioGroup1: TRzRadioGroup;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzComboBox1: TRzComboBox;
    Label3: TLabel;
    RzComboBox2: TRzComboBox;
    Label4: TLabel;
    FDQuery1: TFDQuery;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    DataSource1: TDataSource;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand7: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    DBGrid1: TDBGrid;
    Memo2: TMemo;
    FDQuery1ID_PEDIDO: TIntegerField;
    FDQuery1PEDIDO: TStringField;
    FDQuery1NFE: TStringField;
    FDQuery1PRODUTO: TStringField;
    FDQuery1QTDE: TBCDField;
    FDQuery1VALOR: TBCDField;
    FDQuery1DATA_EMISSAO: TDateField;
    FDQuery1ID_DEPTO: TIntegerField;
    FDQuery1ID_CATEGORIA: TIntegerField;
    FDQuery1MARCA: TStringField;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1CLIENTE: TStringField;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1CFOP: TStringField;
    FDQuery1ICMS: TSingleField;
    FDQuery1VALOR_UNIT: TBCDField;
    FDQuery1DEPARTAMENTO: TStringField;
    FDQuery1VENDEDOR: TStringField;
    FDQuery1ES: TSmallintField;
    FDQuery1STATUS: TStringField;
    FDQuery1NFCE: TStringField;
    FDQuery1DATA_PROCESSA: TDateField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure filtrar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_ItensVenda: TRel_ItensVenda;

implementation

{$R *.dfm}

uses UDM,comobj;

procedure TRel_ItensVenda.Button1Click(Sender: TObject);
begin




   case RzRadioGroup1.ItemIndex of
     0 : RLLabel18.Caption:= 'Data de Emissão (Pedido) de '+cxDateEdit1.Text+' a '+cxDateEdit2.Text;
     1 : RLLabel18.Caption:= 'Data de Processamento (Pedido) de '+cxDateEdit1.Text+' a '+cxDateEdit2.Text;
     2 : RLLabel18.Caption:= 'Data de Emissão (NFe) de '+cxDateEdit1.Text+' a '+cxDateEdit2.Text;
   end;

       RLLabel19.Caption:=RzComboBox1.Text;


  RLReport1.PreviewModal;





end;

procedure TRel_ItensVenda.Button2Click(Sender: TObject);
var Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
Linha : Integer;
SOMA : REAL;
begin

  if FDQuery1.RecordCount<>0 then
             begin
                       ProgressBar1.Max:= FDQuery1.RecordCount;
                       ProgressBar1.Visible:=true;
                       // Panel1.Visible:=TRUE;
                        FDQuery1.Filtered := False;
                        Linha := 7;
                        Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
                        Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
                        Pasta.Caption := 'RELATÓRIO DE ITENS VENDIDOS'; // Título da planilha
                        Pasta.Visible := False; // Deixa a planilha invisível

                        Pasta.Range['A1','A1'].font.bold := true;
                        Pasta.Range['A2','A2'].font.bold := true;
                        Pasta.Range['A3','A3'].font.bold := true;
                        Pasta.Range['A4','A4'].font.bold := true;
                        Pasta.Range['A6','O4'].font.bold := true;

                        Pasta.Cells[1,1] := 'RELATÓRIO DE ITENS VENDIDOS';

                        Pasta.Cells[2,1] := 'PERÍODO';

                           case RzRadioGroup1.ItemIndex of
                             0 : Pasta.Cells[2,2]:= 'Data de Emissão (Pedido) de '+cxDateEdit1.Text+' a '+cxDateEdit2.Text;
                             1 : Pasta.Cells[2,2]:= 'Data de Processamento (Pedido) de '+cxDateEdit1.Text+' a '+cxDateEdit2.Text;
                             2 : Pasta.Cells[2,2]:= 'Data de Emissão (NFe) de '+cxDateEdit1.Text+' a '+cxDateEdit2.Text;
                           end;
                        Pasta.Cells[3,1] := 'DEPARTAMENTO';
                        Pasta.Cells[3,2] := RzComboBox1.Text;
                        Pasta.Cells[4,1] := 'TIPO';

       


                        Pasta.Cells[6,1] := 'EMISSÃO';
                        Pasta.Cells[6,2] := 'ID PEDIDO';// insere o conteúdo ‘Cidade’ na célula A2
                        Pasta.Cells[6,3] := 'NFE';
                        Pasta.Cells[6,4] := 'ID_CLIENTE'; // insere o conteúdo ‘Fone’na célula A3
                        Pasta.Cells[6,5] := 'CLIENTE';
                        Pasta.Cells[6,6] := 'COD_PRODUTO';
                        Pasta.Cells[6,7] := 'PRODUTO';
                        Pasta.Cells[6,8] := 'CFOP';
                        Pasta.Cells[6,9] := 'ICMS';
                        Pasta.Cells[6,10] := 'VALOR UNITÁRIO';
                        Pasta.Cells[6,11] := 'QUANTIDADE';
                        Pasta.Cells[6,12] := 'VALOR TOTAL';
                        pasta.Cells[6,13] := 'VENDEDOR';







                    //     ProgressBar1.Max:=Cli_Relatorio.RecordCount;
                        FDQuery1.FIRST;
                        FDQuery1.DisableControls; // desabilita os controles de dados

                        While not FDQuery1.Eof do //executa enquanto não for fim de arquivo de clientes
                        begin

                        Pasta.Cells[Linha,1] := FDQuery1.FieldByName('DATA_EMISSAO').AsDateTime;
                        Pasta.Cells[Linha,2] := FDQuery1.FieldByName('ID_PEDIDO').AsInteger;
                        Pasta.Cells[Linha,3] := FDQuery1.FieldByName('NFE').AsString;
                        Pasta.Cells[Linha,4] := FDQuery1.FieldByName('ID_CLIENTE').AsINTEGER;
                        Pasta.Cells[Linha,5] := FDQuery1.FieldByName('CLIENTE').AsString;
                        Pasta.Cells[Linha,6] := FDQuery1.FieldByName('ID_PRODUTO').AsInteger;
                        Pasta.Cells[Linha,7] := FDQuery1.FieldByName('PRODUTO').AsString;
                        Pasta.Cells[Linha,8] := FDQuery1.FieldByName('CFOP').AsString;
                        Pasta.Cells[Linha,9] := FDQuery1.FieldByName('ICMS').AsFloat;
                        Pasta.Cells[Linha,10] := FDQuery1.FieldByName('VALOR_UNIT').AsCurrency;
                        Pasta.Cells[Linha,11] := FDQuery1.FieldByName('QTDE').AsInteger;
                        Pasta.Cells[Linha,12] := FDQuery1.FieldByName('VALOR').AsCurrency;
                        Pasta.Cells[Linha,13] := FDQuery1.FieldByName('VENDEDOR').AsString;

                        INC(LINHA);

                        ProgressBar1.Position:= FDQuery1.RecNo;
                        FDQuery1.Next; //vai para o próximo registro da tabela de clientes
                        end; // Incrementa a variável Linha em 01
                        Pasta.Cells[Linha+1,11]:='QNT TOTAL';
                        Pasta.Cells[Linha+1,12]:='VALOR TOTAL';
                        Pasta.Cells[Linha+2,11] :=FDQuery2.FieldByName('QNT').AsFloat;
                        Pasta.Cells[Linha+2,12] :=FDQuery2.FieldByName('TOTAL').AsCurrency;
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

procedure TRel_ItensVenda.Button3Click(Sender: TObject);
begin
filtrar;
end;

procedure TRel_ItensVenda.filtrar;
var
nf, data : string;
begin
  Memo1.Clear;


   case RzRadioGroup1.ItemIndex of
     0 : data := ' where ((DATA_PROCESSA >=:i) and (DATA_PROCESSA <=:f)) ';
     1 : data := ' where ((DATA_EMISSAO >=:i) and (DATA_EMISSAO <=:f)) ';
     2 : data := ' where ((DATA_EMISSAO >=:i) and (DATA_EMISSAO <=:f)) ';
   end;






                   fdquery1.Close;
                   FDQUERY2.Close;
                   IF RzRadioGroup1.ItemIndex = 2 THEN
                   BEGIN
                   fdquery1.SQL.Text:='SELECT ID_PEDIDO,' +
                                      '    PEDIDO, ' +
                                      '    NFE, ' +
                                      '    PRODUTO, ' +
                                      '  CAST(QTDE AS NUMERIC(15,3))AS QTDE, ' +
                                      '  CAST(VALOR AS NUMERIC(15,3))AS  VALOR, ' +
                                      '    DATA_EMISSAO, ' +
                                      '    ID_DEPTO, ' +
                                      '    ID_CATEGORIA, ' +
                                      '    MARCA, ' +
                                      '    ID_CLIENTE, ' +
                                      '    CLIENTE, ' +
                                      '    ID_PRODUTO, ' +
                                      '    CFOP, ' +
                                      '    ICMS, ' +
                                      '    CAST(VALOR_UNIT AS NUMERIC(15,3))AS VALOR_UNIT, ' +
                                      '    DEPARTAMENTO, ' +
                                      '    VENDEDOR, ' +
                                      '    ES, ' +
                                      '    STATUS, ' +
                                      '    NFCE, ' +
                                      '    DATA_PROCESSA FROM REL_ITENSVENDA_NF '+data+nf+RzComboBox1.Value+RzComboBox2.Value+' ORDER BY NFE DESC';
                   FDQUERY2.SQL.Text:='SELECT cast(SUM(qtde)AS numeric(15,3))AS QNT,cast(SUM(valor)AS numeric(15,2))AS TOTAL FROM REL_ITENSVENDA_NF '+data+nf+RzComboBox1.Value+RzComboBox2.Value;

                   Memo2.Lines.Text:=fdquery1.SQL.Text;
                   END
                   ELSE
                   BEGIN
                   fdquery1.SQL.Text:='SELECT ID_PEDIDO,' +
                                      '    PEDIDO, ' +
                                      '    NFE, ' +
                                      '    PRODUTO, ' +
                                      '  CAST(QTDE AS NUMERIC(15,3))AS QTDE, ' +
                                      '    CAST(VALOR AS NUMERIC(15,3))AS  VALOR, ' +
                                      '    DATA_EMISSAO, ' +
                                      '    ID_DEPTO, ' +
                                      '    ID_CATEGORIA, ' +
                                      '    MARCA, ' +
                                      '    ID_CLIENTE, ' +
                                      '    CLIENTE, ' +
                                      '    ID_PRODUTO, ' +
                                      '    CFOP, ' +
                                      '    ICMS, ' +
                                      '    CAST(VALOR_UNIT AS NUMERIC(15,3))AS VALOR_UNIT, ' +
                                      '    DEPARTAMENTO, ' +
                                      '    VENDEDOR, ' +
                                      '    ES, ' +
                                      '    STATUS, ' +
                                      '    NFCE, '+
                                      '    DATA_PROCESSA FROM Rel_ItensVenda '+data+nf+RzComboBox1.Value+RzComboBox2.Value+' ORDER BY DATA_EMISSAO DESC';
                   FDQUERY2.SQL.Text:='SELECT cast(SUM(qtde)AS numeric(15,3))AS QNT,cast(SUM(valor)AS numeric(15,2))AS TOTAL FROM Rel_ItensVenda '+data+nf+RzComboBox1.Value+RzComboBox2.Value;

                    Memo2.Lines.Text:=fdquery1.SQL.Text;
                   END;
                   fdquery1.Params[0].AsDate:= cxDateEdit1.Date;
                   fdquery1.Params[1].AsDate:= cxDateEdit2.Date;
                   fdquery1.Open();

                   fdquery2.Params[0].AsDate:= cxDateEdit1.Date;
                   fdquery2.Params[1].AsDate:= cxDateEdit2.Date;
                   FDQuery2.Open();



    Memo1.Lines.Add(fdquery1.SQL.Text);


end;

procedure TRel_ItensVenda.FormShow(Sender: TObject);
VAR
QUERY : TFDQUERY;
begin
       QUERY:=TFDQUERY.Create(SELF);
       QUERY.Connection:=DM.FDConnection1;
       QUERY.Close;
       QUERY.SQL.Text:='SELECT * FROM departamentos';
       QUERY.Open();
       RzComboBox2.Items.CLEAR;
       RzComboBox2.VALUES.CLEAR;

           RzComboBox1.Items.Add('<TODOS>');
           RzComboBox1.VALUES.Add('   ');

       QUERY.First;
       while NOT QUERY.Eof do
         BEGIN
           RzComboBox1.Items.Add(QUERY.FieldByName('descricao').AsString);
           RzComboBox1.VALUES.Add(' AND ID_DEPTO ='+IntToStr(QUERY.FieldByName('ID_DEPTO').Asinteger));
           QUERY.NEXT;
         END;


       QUERY.Close;
       QUERY.SQL.Text:='SELECT * FROM CATEGORIAS';
       QUERY.Open();
       RzComboBox2.Items.CLEAR;
       RzComboBox2.VALUES.CLEAR;
           RzComboBox2.Items.Add('<TODAS>');
           RzComboBox2.VALUES.Add('   ');

       QUERY.First;
       while NOT QUERY.Eof do
         BEGIN
           RzComboBox2.Items.Add(QUERY.FieldByName('DESCRICAO').AsString);
           RzComboBox2.VALUES.Add(' AND ID_CATEGORIA ='+IntToStr(QUERY.FieldByName('ID_CATEGORIA').AsInteger));
           QUERY.NEXT;
         END;
         RzComboBox1.ItemIndex:=0;
         RzComboBox2.ItemIndex:=0;
         cxDateEdit1.Date:=date;
         cxDateEdit2.Date:=date;
end;

end.
