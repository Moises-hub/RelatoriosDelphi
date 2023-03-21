unit UFrm_Mov_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, RzPanel, RzRadGrp,
  Vcl.StdCtrls, Vcl.DBCtrls, dxdbtrel, Vcl.ComCtrls, RzTreeVw, Vcl.Grids,
  Vcl.DBGrids, RzCmboBx, RLReport, RzButton, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TFrm_Mov_Estoque = class(TForm)
    Query_Categoria: TFDQuery;
    DS_Query_Categoria: TDataSource;
    Query_CategoriaID_CATEGORIA: TIntegerField;
    Query_CategoriaID_PAI: TIntegerField;
    Query_CategoriaFILHO: TStringField;
    Query_CategoriaCATEGORIA: TStringField;
    Panel1: TPanel;
    RzRadioGroup1: TRzRadioGroup;
    RzBitBtn1: TRzBitBtn;
    Panel2: TPanel;
    RLReport1: TRLReport;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    DS_Query_Estoque: TDataSource;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    Memo1: TMemo;
    Query_Estoque: TIBQuery;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    dxLookupTreeView1: TdxLookupTreeView;
    Label1: TLabel;
    Query_EstoqueID_PRODUTO: TIntegerField;
    Query_EstoqueDESCRICAO: TIBStringField;
    Query_EstoqueCATEGORIA: TIBStringField;
    Query_EstoqueSALDO_REAL: TFloatField;
    Query_EstoqueRESERVA_FE: TFloatField;
    Query_EstoqueRESERVA_FS: TFloatField;
    Query_EstoqueRESERVA_AS: TFloatField;
    Query_EstoqueRESERVA_AE: TFloatField;
    Query_EstoqueSALDO_FIXADO: TFloatField;
    Query_EstoqueSALDO_ABERTO: TFloatField;
    Query_EstoqueESTOQUEA: TFloatField;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel6: TRLLabel;
    Query_EstoqueSALDO_D: TFloatField;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mov_Estoque: TFrm_Mov_Estoque;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Mov_Estoque.FormShow(Sender: TObject);
var
dept : TFDQuery;
begin
Query_Categoria.Open;




dept := TFDQuery.Create(nil);
dept.Connection:=dm.FDConnection1;
dept.SQL.Text:='select DEPARTAMENTOS.descricao, departamentos.id_depto from departamentos';
dept.open;

  RzComboBox1.Items.Add('TODOS');
  RzComboBox1.Values.Add(' ');
  dept.First;
  while not dept.Eof do
    begin
      RzComboBox1.Items.Add(dept.FieldByName('descricao').AsString);
      RzComboBox1.Values.Add(' AND REL_IC_ESTOQUE_RR.id_depto = '+dept.FieldByName('id_depto').AsString);
      dept.next;
    end;

    dept.Free;

    RzComboBox1.ItemIndex := 0;

end;

procedure TFrm_Mov_Estoque.RzBitBtn1Click(Sender: TObject);
VAR
est, CATE,MARCA : STRING;

begin

      if dxLookupTreeView1.Text = 'TODOS' then
         CATE := ' '
         ELSE
         CATE := ' AND REL_IC_ESTOQUE_RR.ID_CATEGORIA ='+IntToStr(Query_CategoriaID_CATEGORIA.AsInteger);





      case RzRadioGroup1.ItemIndex of

      0 : est := ' and  (SELECT FIRST 1 tabelaprodutos.estoque - tabelaprodutos.estoqueA saldo_d  FROM  tabelaprodutos '+
                              ' WHERE tabelaprodutos.id_produto = REL_IC_ESTOQUE_RR.id_produto AND tabelaprodutos.id_depto = REL_IC_ESTOQUE_RR.id_depto) >0';
      1 : est := ' and  (SELECT FIRST 1 tabelaprodutos.estoque - tabelaprodutos.estoqueA saldo_d  FROM  tabelaprodutos '+
                              ' WHERE tabelaprodutos.id_produto = REL_IC_ESTOQUE_RR.id_produto AND tabelaprodutos.id_depto = REL_IC_ESTOQUE_RR.id_depto) <=0';
      2 : est := ' ';
      end;




      Query_Estoque.Close;
      query_estoque.sql.text:='select REL_IC_ESTOQUE_RR.id_produto,' +
                              '       REL_IC_ESTOQUE_RR.descricao, ' +
                              '       categorias.descricao CATEGORIA, ' +
                              '       REL_IC_ESTOQUE_RR.saldo_real, ' +
                              '       REL_IC_ESTOQUE_RR.reserva_fe, ' +
                              '       REL_IC_ESTOQUE_RR.reserva_fs, ' +
                              '       REL_IC_ESTOQUE_RR.reserva_as, ' +
                              '       REL_IC_ESTOQUE_RR.reserva_ae, ' +
                              '       REL_IC_ESTOQUE_RR.saldo_fixado, ' +
                              '       REL_IC_ESTOQUE_RR.saldo_aberto, ' +
                              '       (SELECT FIRST 1 tabelaprodutos.estoquea  FROM  tabelaprodutos '+
                              ' WHERE tabelaprodutos.id_produto = REL_IC_ESTOQUE_RR.id_produto AND '+
                              ' tabelaprodutos.id_depto = REL_IC_ESTOQUE_RR.id_depto),' +
                              '       (SELECT FIRST 1 tabelaprodutos.estoque - tabelaprodutos.estoqueA saldo_d  FROM  tabelaprodutos '+
                              ' WHERE tabelaprodutos.id_produto = REL_IC_ESTOQUE_RR.id_produto AND tabelaprodutos.id_depto = REL_IC_ESTOQUE_RR.id_depto) '+
                              '       FROM REL_IC_ESTOQUE_RR ' +
                              ' LEFT JOIN CATEGORIAS ON CATEGORIAS.id_categoria = REL_IC_ESTOQUE_RR.id_categoria ' +
                              'WHERE  REL_IC_ESTOQUE_RR.descricao IS NOT NULL'+cate+est+RzComboBox1.Value;

      Memo1.Text:=query_estoque.sql.text;
      query_estoque.open;


      if query_estoque.RecordCount <> 0 then
         RLReport1.PreviewModal
         else
         ShowMessage('nenhum registro encontrado!');
end;

end.
