unit UFrm_AltProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_AltProduto = class(TForm)
    RLReport2: TRLReport;
    RLBand7: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLBand8: TRLBand;
    RLLabel14: TRLLabel;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText10: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand10: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLBand11: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label3: TLabel;
    Button1: TButton;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel15: TRLLabel;
    ClientDataSet1CODIGO_BARRA: TStringField;
    ClientDataSet1REF: TStringField;
    ClientDataSet1DESCRICAO: TStringField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1DATA_UP: TSQLTimeStampField;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLDetailGrid2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AltProduto: TFrm_AltProduto;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_AltProduto.Button1Click(Sender: TObject);
begin
ClientDataSet1.close;
SQLDataSet1.close;
SQLDataSet1.params[0].DataType:=ftDate;
SQLDataSet1.params[1].DataType:=ftDate;
SQLDataSet1.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
SQLDataSet1.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
SQLDataSet1.ExecSQL();
ClientDataSet1.Open;

RLLabel1.Caption:= 'Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;

if ClientDataSet1.RecordCount<>0 then
  RLReport2.PreviewModal
   else
   ShowMessage('Nenhum Registro Encontrado!');
end;

procedure TFrm_AltProduto.FormShow(Sender: TObject);
begin
 RzDateTimeEdit1.AsDateTime:=date - 10;
      RzDateTimeEdit2.AsDateTime:=date;
end;

procedure TFrm_AltProduto.RLDetailGrid2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLDetailGrid2.Color = clInactiveBorder then
   RLDetailGrid2.Color := clWhite
   else
   RLDetailGrid2.Color := clInactiveBorder

end;

end.
