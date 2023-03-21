unit UFrm_PosicaoEstoque_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzButton, RLReport, Vcl.Mask,
  RzEdit, DosMove;

type
  TFrm_PosicaoEstoque_2 = class(TForm)
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    RzComboBox4: TRzComboBox;
    RzComboBox5: TRzComboBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzBitBtn1: TRzBitBtn;
    Query_Relatorio: TFDQuery;
    Query_RelatorioID_PRODUTO: TIntegerField;
    Query_RelatorioREF: TStringField;
    Query_RelatorioNCM: TStringField;
    Query_RelatorioDESCRICAO: TStringField;
    Query_RelatorioPRECO_CUSTO: TBCDField;
    Query_RelatorioPRECO_VENDA: TBCDField;
    Query_RelatorioTRIBUTACAO: TStringField;
    Query_RelatorioID_TRIBUTACAO: TSmallintField;
    Query_RelatorioID_CATEGORIA: TIntegerField;
    Query_RelatorioCATEGORIA: TStringField;
    Query_RelatorioMARCA: TStringField;
    Query_RelatorioTIPO: TIntegerField;
    Query_RelatorioID_COLECAO: TIntegerField;
    Query_RelatorioCOLECAO: TStringField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    DS_Query_Relatorio: TDataSource;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    Query_RelatorioTOTAL: TFloatField;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand5: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    Query_RelatorioESTOQ: TBCDField;
    RLBand6: TRLBand;
    Memo1: TMemo;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand7: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label6: TLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    CheckBox1: TCheckBox;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    DosMove1: TDosMove;
    procedure FormShow(Sender: TObject);
    procedure carregacombo;
    procedure Query_RelatorioCalcFields(DataSet: TDataSet);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    GRUPO,EST : REAL;
  end;

var
  Frm_PosicaoEstoque_2: TFrm_PosicaoEstoque_2;

implementation

{$R *.dfm}

uses UDM;






procedure TFrm_PosicaoEstoque_2.carregacombo;
var
carrega : tfdquery;

begin
      carrega:=tfdquery.create(nil);
      carrega.Connection:=dm.FDConnection1;
      carrega.SQL.Text:='select id_categoria,descricao from categorias ORDER BY DESCRICAO';
      carrega.open;
      carrega.First;
      RzComboBox1.Items.Add('TODOS');
      RzComboBox1.values.Add(' ');

      while not carrega.eof do
        begin
        RzComboBox1.Items.Add(carrega.FieldByName('descricao').AsString);
        RzComboBox1.values.Add(' and id_categoria = '+IntToStr(carrega.FieldByName('ID_CATEGORIA').Asinteger));
        carrega.next;
        end;

        RzComboBox1.ItemIndex := 0;

        CARREGA.Close;
        carrega.SQL.Text:='select NOME from LABORATORIOS ORDER BY NOME';
        carrega.open;
        carrega.First;
        RzComboBox2.Items.Add('TODOS');
        RzComboBox2.values.Add(' ');

      while not carrega.eof do
        begin
        RzComboBox2.Items.Add(carrega.FieldByName('NOME').AsString);
        RzComboBox2.values.Add(' and MARCA = '''+carrega.FieldByName('NOME').AsString+'''');
        carrega.next;
        end;
        RzComboBox2.ItemIndex := 0;

        CARREGA.Close;
        carrega.SQL.Text:='SELECT ID_DEPTO,DESCRICAO FROM DEPARTAMENTOS ';
        carrega.open;
        carrega.First;
        RzComboBox3.Items.Add('TODOS');
        RzComboBox3.values.Add(' ');

      while not carrega.eof do
        begin
        RzComboBox3.Items.Add(carrega.FieldByName('descricao').AsString);
        RzComboBox3.values.Add(' and  depto = '+IntToStr(carrega.FieldByName('ID_DEPTO').Asinteger));
        carrega.next;
        end;
        RzComboBox3.ItemIndex := 0;

        CARREGA.Close;
        carrega.SQL.Text:='SELECT ID_COLECAO,DESCRICAO FROM COLECOES ORDER BY DESCRICAO';
        carrega.open;
        carrega.First;
        RzComboBox5.Items.Add('TODOS');
        RzComboBox5.values.Add(' ');

      while not carrega.eof do
        begin
        RzComboBox5.Items.Add(carrega.FieldByName('descricao').AsString);
        RzComboBox5.values.Add(' and  id_colecao = '+IntToStr(carrega.FieldByName('id_colecao').Asinteger));
        carrega.next;
        end;

        RzComboBox5.ItemIndex := 0;

        CARREGA.Free;



end;

procedure TFrm_PosicaoEstoque_2.FormShow(Sender: TObject);
begin
carregacombo;
RzDateTimeEdit1.Date:=NOW;
end;

procedure TFrm_PosicaoEstoque_2.Query_RelatorioCalcFields(DataSet: TDataSet);
begin
Query_Relatoriototal.Value:= Query_RelatorioESTOQ.Value * Query_RelatorioPRECO_CUSTO.Value;
end;

procedure TFrm_PosicaoEstoque_2.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
GRUPO:=GRUPO+Query_RelatorioESTOQ.AsFloat;
EST:=EST+Query_RelatorioESTOQ.AsFloat;
RLLabel12.Caption:='TOTAL DE ESTOQUE POR GRUPO  '+FloatToStr(GRUPO)+'             ';
RLLabel13.Caption:=FloatToStr(EST);
end;

procedure TFrm_PosicaoEstoque_2.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
GRUPO:=0;


{Query_Total.close;
Query_Total.PARAMS[0].AsDate:=RzDateTimeEdit1.Date;
Query_Total.Params[1].Value:=Query_Relatorio.FieldByName(RzComboBox4.text).Value;
query_total.Open();}
end;

procedure TFrm_PosicaoEstoque_2.RzBitBtn1Click(Sender: TObject);
var
tipo,ET : string;
begin

     GRUPO:=0;
     EST:=0;
     if CheckBox5.Checked = true then
        tipo:='  And (TIPO <> 4) '
        else
        tipo:=' ';

     if CheckBox1.Checked = TRUE then
        ET :='  '
        ELSE
        ET :='  having sum(estoq) >0 ';


      RLLabel9.Caption:=RzComboBox4.Text;
      RLDBText9.DataField:=RzComboBox4.text;
      RLGroup1.DataFields:=RzComboBox4.text;
      Query_Relatorio.Close;
      Query_Relatorio.SQL.Text:='select ' +
                                '   id_produto, ' +
                                '   ref, ' +
                                '   ncm, ' +
                                '   descricao, ' +
                                '  cast(sum(estoq) as decimal(15,2)) as estoq, ' +
                                '   preco_custo, ' +
                                '   preco_venda, ' +
                                '   tributacao, ' +
                                '   id_tributacao, ' +
                                '   id_categoria, ' +
                                '   categoria, ' +
                                '   marca, ' +
                                '   tipo, ' +
                                '   id_colecao, ' +
                                '   colecao from Rel_Posicao_Est_Agrupado  where data <=:D AND depto is not null AND id_produto IS NOT NULL  ' +
                                RzComboBox1.Value+' '+RzComboBox2.Value+' '+RzComboBox3.Value+RzComboBox5.Value+
                                ' '+tipo+
                                                 ' group by ' +
                                                 '    id_produto, ' +
                                                 '    ref, ' +
                                                 '   ncm, ' +
                                                 '   descricao, ' +
                                                 '   preco_custo, ' +
                                                 '   preco_venda, ' +
                                                 '   tributacao, ' +
                                                 '   id_tributacao, ' +
                                                 '   id_categoria, ' +
                                                 '   categoria, ' +
                                                 '   marca, ' +
                                                 '   tipo, ' +
                                                 '   id_colecao, ' +
                                                 '   colecao ' +
                                                     ET +' order by '+RzComboBox4.Text;


      Query_Relatorio.PARAMS[0].AsDate:=RzDateTimeEdit1.Date;
      Query_Relatorio.Open();



         if CheckBox2.Checked = FALSE then
            BEGIN
              RLLabel6.Visible:=FALSE;
              RLDBText6.Visible:=FALSE;
            END
            ELSE
            BEGIN
              RLLabel6.Visible:=TRUE;
              RLDBText6.Visible:=TRUE;
            END;


          if CheckBox3.Checked = FALSE then
            BEGIN
              RLLabel7.Visible:=FALSE;
              RLDBText7.Visible:=FALSE;
            END
            ELSE
            BEGIN
              RLLabel7.Visible:=TRUE;
              RLDBText7.Visible:=TRUE;
            END;

        RLLabel10.Caption:='CATEGORIA: '+RzComboBox1.Text+' /  MARCA: '+RzComboBox2.Text+' / DEPARTAMENTO: '+RzComboBox3.Text+' / COLEÇÃO: '+RzComboBox5.Text;

        Memo1.Lines.Text:=Query_Relatorio.SQL.Text;

      if Query_Relatorio.RecordCount<> 0 then
         RLReport1.PreviewModal
         ELSE
         ShowMessage('NENHUM REGISTRO ENCONTRADO!');







end;

end.
