unit UFrm_Rel_EntregaMotorista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzCmboBx, RLReport, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Rel_EntregaMotorista = class(TForm)
    Button1: TButton;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label3: TLabel;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand2: TRLBand;
    RLDBText10: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1DATA_HORA: TSQLTimeStampField;
    FDQuery1VENDEDOR: TStringField;
    FDQuery1MOTORISTA: TStringField;
    FDQuery1ID_PEDIDO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1QTDE: TSingleField;
    FDQuery1VALOR_TOTAL: TBCDField;
    RLDBText12: TRLDBText;
    RLLabel6: TRLLabel;
    FDQuery1ID_VENDEDOR: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_EntregaMotorista: TFrm_Rel_EntregaMotorista;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_EntregaMotorista.Button1Click(Sender: TObject);
begin
          FDQuery1.Close;
          Fdquery1.SQL.Text:='select mov_cargas.data_hora, ' +
                             '       mov_cargas.id_vendedor, '+
                             '       funcionarios.nome as vendedor, ' +
                             '       mov_cargas.motorista, ' +
                             '       mov_carga_itens.id_pedido, ' +
                             '       mov_carga_itens.descricao, ' +
                             '       mov_carga_itens.qtde, ' +
                             '       mov_carga_itens.valor_total ' +
                             '       from mov_carga_itens ' +
                             '       left join  mov_cargas on (mov_cargas.id_carga = mov_carga_itens.id_carga) ' +
                             '       left join  funcionarios on (funcionarios.id_funcionario = mov_cargas.id_vendedor) ' +
                             '       where mov_cargas.status = 1 and ((cast(mov_cargas.data_hora as date) >=:i) and (cast(mov_cargas.data_hora as date) <=:f)) '+RzComboBox1.Value;

         Fdquery1.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
         Fdquery1.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
         Fdquery1.SQL.Add(' order by funcionarios.nome, mov_cargas.data_hora');
         Fdquery1.open;
         RLLabel12.Caption:='Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text+' Motorista: '+RzComboBox1.Text;
         RLReport1.PreviewModal;

end;

procedure TFrm_Rel_EntregaMotorista.FormShow(Sender: TObject);
var
CARREGA : TFDQuery;
begin
                   CARREGA:=TFDQuery.Create(SELF);
                   CARREGA.Connection:=FDQuery1.Connection;

                   CARREGA.SQL.Text:='SELECT id_funcionario,nome FROM funcionarios WHERE funcionarios.TIPO = 3 and status =1';
                   CARREGA.Open();
                   RzComboBox1.Clear;
                   RzComboBox1.Values.Clear;
                   RzComboBox1.Items.Add('TODOS');
                   RzComboBox1.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox1.Items.Add(carrega.FieldByName('nome').AsString);
                      RzComboBox1.Values.Add(' and id_VENDEDOR ='+carrega.FieldByName('id_funcionario').AsString);
                      carrega.Next;
                    end;
                    RzComboBox1.ItemIndex := 0;
                    carrega.Close;
end;

end.
