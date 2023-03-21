unit URel_Prod_Itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, RLReport, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel,
  RLFilters, RLPDFFilter, Vcl.DBCtrls, RzDBCmbo, RzCmboBx, dxdbtrel, Vcl.Grids,
  Vcl.DBGrids, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TFrm_Rel_ProdItem = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Button1: TButton;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RLPDFFilter1: TRLPDFFilter;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    RzComboBox1: TRzComboBox;
    FDQuery2CODIGO_BARRA: TStringField;
    FDQuery2TAMANHO: TStringField;
    Label1: TLabel;
    RzComboBox2: TRzComboBox;
    Label4: TLabel;
    Label5: TLabel;
    FDTable1: TFDTable;
    FDTable1ID_CATEGORIA: TIntegerField;
    FDTable1CLASSIFICACAO: TStringField;
    FDTable1DESCRICAO: TStringField;
    FDTable1PAI: TIntegerField;
    FDTable1COMISSAO: TSingleField;
    FDTable1ID_EMPRESA: TIntegerField;
    FDTable1USER_UP: TIntegerField;
    FDTable1DATA_UP: TSQLTimeStampField;
    FDTable1DESCONTO_MAX: TSingleField;
    FDTable1DATA_RP: TSQLTimeStampField;
    FDTable1OP_PRECO: TIntegerField;
    FDTable1VENDA_DESC: TSingleField;
    FDTable1VENDA_QTDE: TIntegerField;
    dxLookupTreeView1: TdxLookupTreeView;
    FDQuery1CLIENTE: TStringField;
    FDQuery1PAI: TIntegerField;
    FDQuery1ID_CATEGORIA: TIntegerField;
    RLReport1: TRLReport;
    FDQuery1SOMA: TBCDField;
    FDQuery1PRODUTO: TStringField;
    FDQuery1TAMANHO: TStringField;
    FDQuery1CODIGO_BARRAS: TStringField;
    FDQuery1VALOR_UN: TBCDField;
    FDQuery1VALOR_TOTAL: TBCDField;
    FDQuery1QNTVENDIDO: TSingleField;
    FDQuery1ID_PRODUTO: TIntegerField;
    DataSource3: TDataSource;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    FDQuery3: TFDQuery;
    DataSource4: TDataSource;
    RLBand3: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLMemo1: TRLMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_ProdItem: TFrm_Rel_ProdItem;
   valor, qnt : real;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_ProdItem.Button1Click(Sender: TObject);
begin
            FDQuery1.CLOSE;
            FDQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
            FDQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
            FDQuery1.Params[2].ASSTRING:=RzComboBox1.Value;
            FDQuery1.Params[3].asinteger:=FDTable1ID_CATEGORIA.AsInteger;
            FDQuery1.Params[4].asstring:=RzComboBox2.Value;
            FDQuery1.OPEN;






        RLReport1.PreviewModal;

end;

procedure TFrm_Rel_ProdItem.FormShow(Sender: TObject);
begin

RzDateTimeEdit1.Date:=date-30;
RzDateTimeEdit2.Date:=date;
fdquery2.OPEN;
RzComboBox1.Items.Add('TODOS');
RzComboBox1.Values.Add('%');
fdquery2.First;
while not fdquery2.eof do
    begin
         RzComboBox1.Items.Add(FDQuery2CODIGO_BARRA.AsString+' TAMANHO '+FDQuery2TAMANHO.AsString);
          RzComboBox1.Values.Add(FDQuery2CODIGO_BARRA.AsString);
         fdquery2.next;
    end;
    RzComboBox1.ItemIndex:=0;

    FDTable1.Open();
end;

procedure TFrm_Rel_ProdItem.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel6.Caption:=RzComboBox2.Text+ ' POR PERÍODO DE '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text+
                  ' - PEÇA '+RzComboBox1.Text+' - CATEGORIA '+dxLookupTreeView1.Text;
end;

procedure TFrm_Rel_ProdItem.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
VAR
I: INTEGER;
begin
            I:=30;
            FDQuery3.close();
            FDQuery3.Params[0].asstring:=RzComboBox2.Value;
            FDQuery3.Params[1].AsDate:=RzDateTimeEdit1.Date;
            FDQuery3.Params[2].AsDate:=RzDateTimeEdit2.Date;
            FDQuery3.Params[3].asinteger:=FDQuery1ID_PRODUTO.AsInteger;
            Fdquery3.Open();
            RLMemo1.Lines.Clear;

    Fdquery3.FIRST;
    while NOT Fdquery3.EOF do
    BEGIN

     RLMemo1.Lines.Add(FDQuery3.FieldByName('tamanho').AsString+'   QNT '+FDQuery3.FieldByName('qnt').AsString+'  TOTAL '+FloatToStrF(FDQuery3.FieldByName('soma').AsFloat,ffCurrency,15,2));
     I:=I+10;
     RLMemo1.Height:=I;


     Fdquery3.NEXT;
    END;
end;

end.
