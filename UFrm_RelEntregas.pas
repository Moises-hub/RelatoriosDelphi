unit UFrm_RelEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, RzCmboBx,
  Vcl.Mask, RzEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrm_RelEntregas = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    RLReport2: TRLReport;
    RLGroup2: TRLGroup;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand6: TRLBand;
    RLDBText20: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand8: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLBand10: TRLBand;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLBand1: TRLBand;
    RLLabel29: TRLLabel;
    Button1: TButton;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1NOME: TStringField;
    FDQuery1DATA_HORA: TSQLTimeStampField;
    FDQuery1ID_PEDIDO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1QTDE: TSingleField;
    FDQuery1VALOR_UNITARIO: TBCDField;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    FDQuery1TOTAL: TBCDField;
    RzComboBox2: TRzComboBox;
    Label4: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelEntregas: TFrm_RelEntregas;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelEntregas.Button1Click(Sender: TObject);
begin
          FDQuery1.Close;
          Fdquery1.SQL.Text:='select rel_mov_entregas.id_cliente,' +
                             '       rel_mov_entregas.cliente as nome,' +
                             '       rel_mov_entregas.data_hora,' +
                             '       rel_mov_entregas.id_pedido,' +
                             '       rel_mov_entregas.produto as descricao,' +
                             '       rel_mov_entregas.id_produto,' +
                             '       rel_mov_entregas.qtde,' +
                             '       rel_mov_entregas.valor_unitario,' +
                             '       rel_mov_entregas.valor_total AS TOTAL' +
                             '       from rel_mov_entregas ' +
                             'where   rel_mov_entregas.STATUS_E <> 3 AND rel_mov_entregas.STATUS = 2 AND ID_CLIENTE <> 1 AND (CAST(rel_mov_entregas.data_hora AS DATE)>=:I AND CAST(rel_mov_entregas.data_hora AS DATE)<=:F AND (rel_mov_entregas.es =1) ) AND rel_mov_entregas.STATUS <> 3' +RzComboBox1.Value+RzComboBox2.Value;
          Fdquery1.Params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
          Fdquery1.Params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
          Fdquery1.SQL.Text:=Fdquery1.SQL.Text+' ORDER BY  rel_mov_entregas.cliente, rel_mov_entregas.data_hora';
          Fdquery1.open;
          Memo1.Text:=FDQuery1.SQL.Text;
         RLLabel31.Caption:='Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text+' Status: '+RzComboBox1.Text;
         RLReport2.PreviewModal;
end;

procedure TFrm_RelEntregas.FormShow(Sender: TObject);
var
CARREGA : TFDQuery;
begin
                    RzDateTimeEdit1.AsDateTime:=date-30;
                    RzDateTimeEdit2.AsDateTime:=date;

                   CARREGA:=TFDQuery.Create(SELF);
                   CARREGA.Connection:=FDQuery1.Connection;

                   CARREGA.SQL.Text:='SELECT ID_DEPTO,DESCRICAO FROM DEPARTAMENTOS';
                   CARREGA.Open();
                   rzComboBox2.Clear;
                   RzComboBox2.Values.Clear;
                   RzComboBox2.Items.Add('TODOS');
                   RzComboBox2.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox2.Items.Add(carrega.FieldByName('descricao').AsString);
                      RzComboBox2.Values.Add(' and rel_mov_entregas.id_depto ='+carrega.FieldByName('ID_DEPTO').AsString);
                      carrega.Next;
                    end;
                    RzComboBox2.ItemIndex := 0;
                    carrega.Close;
                    carrega.Free;
end;

end.
