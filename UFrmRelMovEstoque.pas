unit UFrmRelMovEstoque;

interface

uses jpeg,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, RLReport;

type
  TFrmRelMovEstoque = class(TForm)
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    SQLDataSet1: TSQLDataSet;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLBand2: TRLBand;
    RLLabel10: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel9: TRLLabel;
    SQLDataSet2: TSQLDataSet;
    ClientDataSet1DATA_HORA: TSQLTimeStampField;
    ClientDataSet1DATA_FATURAMENTO: TDateField;
    ClientDataSet1ID_NATUREZA: TIntegerField;
    ClientDataSet1ID_CATEGORIA: TIntegerField;
    ClientDataSet1ID_CATEGORIA_PAI: TIntegerField;
    ClientDataSet1MARCA: TStringField;
    ClientDataSet1ID_PRODUTO: TFMTBCDField;
    ClientDataSet1PRODUTO: TStringField;
    ClientDataSet1REF: TStringField;
    ClientDataSet1CODIGO_FAB: TStringField;
    ClientDataSet1CODIGO_BARRA: TStringField;
    ClientDataSet1ES: TSmallintField;
    ClientDataSet1CES: TStringField;
    ClientDataSet1ID_DEPTO: TIntegerField;
    ClientDataSet1CLIENTE: TStringField;
    ClientDataSet1NOTA_FISCAL: TStringField;
    ClientDataSet1ID_PEDIDO: TFMTBCDField;
    ClientDataSet1PEDIDO: TStringField;
    ClientDataSet1ID_VENDEDOR: TIntegerField;
    ClientDataSet1QTDE: TSingleField;
    ClientDataSet1VALOR_UNITARIO: TFMTBCDField;
    ClientDataSet1VALOR_CUSTO: TFMTBCDField;
    ClientDataSet1VALOR_TOTAL: TFMTBCDField;
    ClientDataSet1PROCESSO: TSmallintField;
    ClientDataSet1MOVF1: TIntegerField;
    ClientDataSet1MOVF2: TIntegerField;
    ClientDataSet1ESTOQUE: TSingleField;
    ClientDataSet1PESO: TSingleField;
    ClientDataSet1STATUS: TSmallintField;
    ClientDataSet1LOTE: TStringField;
    ClientDataSet1PENEIRA: TStringField;
    ClientDataSet1ENTREGA: TSmallintField;
    ClientDataSet1SALDO: TFloatField;
    ClientDataSet1CFOP: TStringField;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    DataSource2: TDataSource;
    RLBand6: TRLBand;
    RLDBText1: TRLDBText;
    ClientDataSet1GRADE: TStringField;
    ClientDataSet1TAMANHO: TStringField;
    ClientDataSet1COP: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelMovEstoque: TFrmRelMovEstoque;
  s : real;
implementation

{$R *.dfm}

uses UDM;

procedure TFrmRelMovEstoque.Button1Click(Sender: TObject);
begin
SQLDataSet1.close;
SQLDataSet1.params[0].DataType:=ftDate;
SQLDataSet1.params[1].DataType:=ftDate;
SQLDataSet1.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
SQLDataSet1.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
SQLDataSet1.ExecSQL();
ClientDataSet1.Open;

if ClientDataSet1.RecordCount<>0 then
  RLReport1.PreviewModal
   else
   ShowMessage('Nenhum Registro Encontrado!');


//cast(DATA_HORA as date)
end;

procedure TFrmRelMovEstoque.FormShow(Sender: TObject);
begin
      RzDateTimeEdit1.AsDateTime:=date - 10;
      RzDateTimeEdit2.AsDateTime:=date;
end;

procedure TFrmRelMovEstoque.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    rllabel1.Caption := 'Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
end;

procedure TFrmRelMovEstoque.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);


begin



    if RLDetailGrid1.Color = clwhite then
        RLDetailGrid1.Color := clInactiveBorder
        else
        RLDetailGrid1.Color := clwhite;

        clientDataSet2.close;
        clientDataSet2.CommandText:='select CODIGO_BARRA from PRODUTO_ITENS where ID_PRODUTO ='''+ClientDataSet1.FieldByName('ID_PRODUTO').text+'''';
        clientDataSet2.OPEN;
        RLLabel9.Caption:=ClientDataSet2.FieldByName('CODIGO_BARRA').Text;


 //  s := s+ClientDataSet1VALOR_TOTAL.AsFloat;


end;

end.
