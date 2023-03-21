unit UFrm_RelVNumero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, Vcl.StdCtrls, RzLabel, Vcl.DBCtrls, RzDBCmbo, Vcl.Mask,
  RzEdit, RLReport, RLFilters, RLPDFFilter;

type
  TFrm_RelVNumero = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    FDQuery2: TFDQuery;
    FDQuery2ID_CATEGORIA: TIntegerField;
    FDQuery2DESCRICAO: TStringField;
    DataSource2: TDataSource;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText1: TRLDBText;
    FDQuery1SUM: TFloatField;
    FDQuery1NUMERO: TStringField;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    FDQuery1ESTOQUE: TFloatField;
    RLPDFFilter1: TRLPDFFilter;
    RzLabel4: TRzLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelVNumero: TFrm_RelVNumero;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelVNumero.Button1Click(Sender: TObject);
begin
            FDQuery1.Close;
            fdquery1.Params[0].AsInteger:=FDQuery2ID_CATEGORIA.AsInteger;
           fdquery1.Params[1].Asdate:=RzDateTimeEdit1.date;
            fdquery1.Params[2].Asdate:=RzDateTimeEdit2.date;
            FDQuery1.open;

            RLReport1.PreviewModal;


end;

procedure TFrm_RelVNumero.FormShow(Sender: TObject);
begin
FDQuery2.Open();
RzDateTimeEdit1.AsDateTime:=DATE-30;
RzDateTimeEdit2.AsDateTime:=DATE;

end;

procedure TFrm_RelVNumero.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLBand3.Color = clWhite then
   RLBand3.Color:= clInactiveCaption
   ELSE
    RLBand3.Color := clWhite;
end;

procedure TFrm_RelVNumero.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel5.Caption:='CATEGORIA '+FDQuery2DESCRICAO.AsString+' - PERÍODO DE '+RzDateTimeEdit1.Text+' Á '+RzDateTimeEdit2.Text;
end;

end.
