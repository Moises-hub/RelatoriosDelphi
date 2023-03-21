unit UFrm_VMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, RLReport, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_VMarca = class(TForm)
    DataSource1: TDataSource;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    Label1: TLabel;
    Label2: TLabel;
    Query_FIltro: TFDQuery;
    CheckBox1: TCheckBox;
    Query_FIltroQNT: TFloatField;
    Query_FIltroVALOR: TBCDField;
    Query_FIltroDATA: TDateField;
    Query_FIltroMARCA: TStringField;
    Query_FIltroPRODUTO: TStringField;
    query_Soma: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_VMarca: TFrm_VMarca;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_VMarca.Button1Click(Sender: TObject);
var
tipo : string;
begin


    if CheckBox1.Checked = true then
       tipo :=' and tipo = 2'
       else
       tipo :=' ';

        Query_FIltro.Close;
        Query_FIltro.SQL.Text:='select sum(QNT)as qnt, '+
                                      'sum(VALOR)as valor, '+
                                      'data, MARCA, '+
                                      'produto from rel_vmarca' +
                                      ' where data >=:g and data<=:h '+TIPO+' '+
                                      'group by data,  marca, produto';
        query_filtro.Params[0].AsDate:=RzDateTimeEdit1.Date;
        query_filtro.Params[1].AsDate:=RzDateTimeEdit2.Date;
        query_filtro.open;


        query_soma.Close;
        query_soma.SQL.Text:='select  SUM(rel_vmarca.qnt) as qnt, '+
                                      'SUM(rel_vmarca.valor)as valor '+
                                      'from REL_VMARCA '+
                                      'WHERE DATA>=:P AND DATA <=:C '+tipo;
        query_soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
        query_soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
        query_soma.open;

        RLLabel1.Caption:=FloatToStr(query_soma.FieldByName('qnt').AsFloat);
        RLLabel5.Caption:=FloatToStrf(query_soma.FieldByName('valor').AsFloat,ffCurrency,15,2);


     if query_filtro.RecordCount<>0 then

        RLReport1.PreviewModal
        else
        ShowMessage('Nenhum Registro Encontrado!');

end;

procedure TFrm_VMarca.FormShow(Sender: TObject);
begin
RzDateTimeEdit1.Date:=date-30;
RzDateTimeEdit2.Date:=date;

end;

procedure TFrm_VMarca.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLDetailGrid1.Color = clInfoBk then
   RLDetailGrid1.Color := clWhite
   ELSE
   RLDetailGrid1.Color := clInfoBk;


end;

end.
