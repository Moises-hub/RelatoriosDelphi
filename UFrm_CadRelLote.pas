unit UFrm_CadRelLote;

interface

uses  jpeg,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls,
  RzPanel, RLReport, Vcl.Buttons;

type
  TFrm_CadRelLote = class(TForm)
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Button1: TButton;
    RzDateTimeEdit2: TRzDateTimeEdit;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID_PEDIDO: TFMTBCDField;
    ClientDataSet1QTDE: TSingleField;
    ClientDataSet1CLIENTE: TStringField;
    ClientDataSet1NOME_LOTE: TStringField;
    DataSource1: TDataSource;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand1: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadRelLote: TFrm_CadRelLote;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_CadRelLote.Button1Click(Sender: TObject);
begin
ClientDataSet1.Close;
ClientDataSet1.Params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
ClientDataSet1.Params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
ClientDataSet1.Open;
RLReport1.PreviewModal;
end;

procedure TFrm_CadRelLote.FormCreate(Sender: TObject);
begin
   RzDateTimeEdit1.AsDateTime:=date;
   RzDateTimeEdit2.AsDateTime:=date;
   end;

procedure TFrm_CadRelLote.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    if RLDetailGrid1.Color = clWhite then
       RLDetailGrid1.color:= clInactiveCaption
       else
       RLDetailGrid1.color:= clwhite;
end;

procedure TFrm_CadRelLote.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Relatório de Lotes Vendidos por Período! ',mtInformation,[mbOK],0);
end;

end.
