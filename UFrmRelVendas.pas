unit UFrmRelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, RLReport,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, RzCmboBx, Vcl.Grids, Vcl.DBGrids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelVendas = class(TForm)
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    RzPanel1: TRzPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    Label1: TLabel;
    RzComboBox1: TRzComboBox;
    SQLDataSet2: TSQLDataSet;
    SQLQuery1: TSQLQuery;
    Label4: TLabel;
    RzComboBox2: TRzComboBox;
    RLDBText9: TRLDBText;
    RLLabel13: TRLLabel;
    RLBand5: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    ClientDataSet1: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    SQLQuery2: TSQLQuery;
    SpeedButton1: TSpeedButton;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    Memo2: TMemo;
    RLReport2: TRLReport;
    RLGroup2: TRLGroup;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand6: TRLBand;
    RLDBText20: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLBand7: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand8: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLBand10: TRLBand;
    RLLabel32: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBResult1: TRLDBResult;
    RadioGroup1: TRadioGroup;
    RLLabel16: TRLLabel;
    RLLabel29: TRLLabel;
    SQLQuery1VENDEDOR: TStringField;
    SQLQuery1ID_PEDIDO: TFMTBCDField;
    SQLQuery1ID_CLIENTE: TFMTBCDField;
    SQLQuery1NOTA_FISCAL: TStringField;
    SQLQuery1DESCRICAO: TStringField;
    SQLQuery1CODIGO_NCM: TStringField;
    SQLQuery1QTDE: TSingleField;
    SQLQuery1VALOR_UNITARIO: TFMTBCDField;
    SQLQuery1VALOR_FINAL_UN: TFMTBCDField;
    SQLQuery1PRECO_TABELA: TFMTBCDField;
    SQLQuery1DIFERENCA_UN: TFMTBCDField;
    SQLQuery1DIFERENCA: TFloatField;
    SQLQuery1VALOR_TOTAL: TFloatField;
    SQLQuery1NOME: TStringField;
    SQLQuery1CIDADE: TStringField;
    ClientDataSet1VENDEDOR: TStringField;
    ClientDataSet1ID_PEDIDO: TFMTBCDField;
    ClientDataSet1ID_CLIENTE: TFMTBCDField;
    ClientDataSet1NOTA_FISCAL: TStringField;
    ClientDataSet1DESCRICAO: TStringField;
    ClientDataSet1CODIGO_NCM: TStringField;
    ClientDataSet1QTDE: TSingleField;
    ClientDataSet1VALOR_UNITARIO: TFMTBCDField;
    ClientDataSet1VALOR_FINAL_UN: TFMTBCDField;
    ClientDataSet1PRECO_TABELA: TFMTBCDField;
    ClientDataSet1DIFERENCA_UN: TFMTBCDField;
    ClientDataSet1DIFERENCA: TFloatField;
    ClientDataSet1VALOR_TOTAL: TFloatField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1CIDADE: TStringField;
    ClientDataSet1DATA_HORA: TDateField;
    SQLQuery1DATA_HORA: TDateField;
    SQLQuery1codigo_fab: TStringField;
    ClientDataSet1codigo_fab: TStringField;
    RLDBText23: TRLDBText;
    RLLabel36: TRLLabel;
    procedure Button1Click(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1AfterPrint(Sender: TObject);
    procedure RLDetailGrid2AfterPrint(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendas: TFrmRelVendas;
  soma : real;
implementation

{$R *.dfm}

uses UDM;

procedure TFrmRelVendas.Button1Click(Sender: TObject);
begin

              sqlquery1.close;
            if CheckBox1.Checked = true then
               begin
           {    SQLQuery2.sql.Text:='select sum(l_vendas_vendedor.valor_pedido) as soma ' +
                                   'from l_vendas_vendedor ' +
                                   'where (( l_vendas_vendedor.DATA_VENCIMENTO >:ini) and  l_vendas_vendedor.NOTA_FISCAL is not null and  l_vendas_vendedor.NOTA_FISCAL<> ''0''' +
                                   ' and (l_vendas_vendedor.DATA_VENCIMENTO <:fim and tipo =1))';
                                       }
               sqlquery1.sql.Text:=Memo2.Text
               end
               else
               begin
               sqlquery1.sql.Text:=Memo1.Text;


               {
                SQLQuery2.sql.Text:='select sum(l_vendas_vendedor.valor_pedido) as soma ' +
                                   'from l_vendas_vendedor ' +
                                   'where (( l_vendas_vendedor.DATA_VENCIMENTO >:ini) and (l_vendas_vendedor.DATA_VENCIMENTO <:fim and tipo =1))';
                 }
               end;




               //Memo3.Text:= SQLQuery2.sql.Text;


             sqlquery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
             sqlquery1.Params[1].AsDate:=RzDateTimeEdit2.Date;

             if RzComboBox1.ItemIndex=0 then
                sqlquery1.Params[2].TEXT:='%'+'%'

                else

                sqlquery1.Params[2].TEXT:=RzComboBox1.TEXT;




             if RzComboBox2.ItemIndex=0 then
                sqlquery1.Params[3].TEXT:='%'+'%'

                else

                sqlquery1.Params[3].TEXT:='%'+RzComboBox2.VALUE+'%';




          //   sqlquery1.ExecSQL();
              sqlquery1.open;
              sqlquery1.close;
            ClientDataSet1.Open;

            ClientDataSet1.refresh;
       if ClientDataSet1.RecordCount<>0 then
          BEGIN
            case RadioGroup1.ItemIndex of
            0: RLReport1.PreviewModal;
            1: RLReport2.PreviewModal;
            end;

          END
          else
          MessageDlg('nenhum registro encontrado',mtInformation,[mbOK],0);









end;

procedure TFrmRelVendas.FormShow(Sender: TObject);
begin
  SQLDataSet2.close;
  SQLDataSet2.CommandText:='select  nome from funcionarios where TIPO = 3';
  SQLDataSet2.Open;
  sqldataset2.First;
  RzComboBox1.Items.Add('TODOS');
  while NOT sqldataset2.Eof do
  begin
  RzComboBox1.Items.Add(SQLDataSet2.FieldByName('NOME').Text);

  sqldataset2.next;
  end;



  SQLDataSet2.close;
  SQLDataSet2.CommandText:='SELECT distinct(PRODUTOS.CODIGO_ncm)as ncm FROM PRODUTOS';
  SQLDataSet2.Open;
  sqldataset2.First;
  RzComboBox2.Items.Add('TODOS');
  RzComboBox2.VALUES.Add('TODOS');
  while NOT sqldataset2.Eof do
  begin
  RzComboBox2.Items.Add(SQLDataSet2.FieldByName('NCM').ASSTRING);
  RzComboBox2.VALUES.Add(SQLDataSet2.FieldByName('NCM').ASSTRING);
  sqldataset2.next;
  end;

 RzComboBox1.ItemIndex:=0;
 RzComboBox2.ItemIndex:=0;

 RzDateTimeEdit1.AsDateTime:=date-7;
 RzDateTimeEdit2.AsDateTime:=date;


end;




procedure TFrmRelVendas.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
  vend : string;
begin
if RzComboBox1.ItemIndex<>0 then

vend :='Vendas Vendedor '+RzComboBox1.Text;

RLLABEL12.Caption:=vend+' Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit1.Text;

end;

procedure TFrmRelVendas.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
  vend : string;
begin
if RzComboBox1.ItemIndex<>0 then

vend :='Vendas Vendedor '+RzComboBox1.Text;

RLLABEL30.Caption:=vend+' Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit1.Text;
end;

procedure TFrmRelVendas.RLDetailGrid1AfterPrint(Sender: TObject);
begin
   soma:=soma+BCDToCurrency(ClientDataSet1.FieldByName('VALOR_TOTAL').AsFloat);
       RLLabel9.Caption:=FloatToStrF(soma,ffcurrency,15,2);
        RLLabel15.Caption:='    TOTAL DE VENDAS : '+FloatToStrF(soma,ffcurrency,15,2);
end;

procedure TFrmRelVendas.RLDetailGrid2AfterPrint(Sender: TObject);
begin
   soma:=soma+BCDToCurrency(ClientDataSet1.FieldByName('VALOR_TOTAL').AsFloat);
       RLLabel27.Caption:=FloatToStrF(soma,ffcurrency,15,2);
        RLLabel32.Caption:='    TOTAL DE VENDAS : '+FloatToStrF(soma,ffcurrency,15,2);
end;

procedure TFrmRelVendas.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
soma:=0;
end;

procedure TFrmRelVendas.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Relatório de Vendas por Vendedor! ',mtInformation,[mbOK],0);
end;

end.
