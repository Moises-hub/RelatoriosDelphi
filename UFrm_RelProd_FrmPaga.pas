unit UFrm_RelProd_FrmPaga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  RLReport, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzButton,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel;

type
  TFrm_RelProd_FrmPaga = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzGroupBox2: TRzGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Query_produtos: TFDQuery;
    Query_produtosID_PRODUTO: TIntegerField;
    Query_produtosCONDICAO: TStringField;
    Query_produtosDESCRICAO: TStringField;
    DS_Query_Produto: TDataSource;
    Query_Filtro: TFDQuery;
    DS_Query_Filtro: TDataSource;
    Query_FiltroDATA: TDateField;
    Query_FiltroID_PEDIDO: TIntegerField;
    Query_FiltroID_PRODUTO: TIntegerField;
    Query_FiltroDESCRICAO: TStringField;
    Query_FiltroQTDE: TSingleField;
    Query_FiltroFORM_PAGAMENTO: TStringField;
    Query_FiltroESPECIE: TStringField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    Query_FiltroPEDIDO: TStringField;
    RLBand5: TRLBand;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelProd_FrmPaga: TFrm_RelProd_FrmPaga;

implementation

{$R *.dfm}

procedure TFrm_RelProd_FrmPaga.FormCreate(Sender: TObject);
begin
Query_produtos.Open();
end;

procedure TFrm_RelProd_FrmPaga.FormShow(Sender: TObject);
begin
RzDateTimeEdit1.Date:=now-30;
RzDateTimeEdit2.Date:=now;
DBLookupComboBox1.KeyValue:='';
end;

procedure TFrm_RelProd_FrmPaga.RzBitBtn1Click(Sender: TObject);
begin
Query_Filtro.Close;
Query_Filtro.SQL.Text:='SELECT * FROM REL_PRODUTO_FORMAPAGAMENTO WHERE DATA >=:INI AND DATA <=:FIM '+DBLookupComboBox1.KeyValue;
Query_Filtro.ParamByName('INI').AsDate:=RzDateTimeEdit1.Date;
Query_Filtro.ParamByName('FIM').AsDate:=RzDateTimeEdit2.Date;
Query_Filtro.Open();
if QUERY_FILTRO.RecordCount<>0 then
   begin
   RLLabel2.Caption:='Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
   RLLabel3.Caption:='Produto '+DBLookupComboBox1.Text;
   RLReport1.PreviewModal
   end
   ELSE
   ShowMessage('Nenhum registro encontrado!');

end;

procedure TFrm_RelProd_FrmPaga.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

end.
