unit UFrm_AltdePreco;

interface

uses   Data.SqlExpr,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, RzCmboBx,
  Vcl.Mask, RzEdit, Data.FMTBcd, Data.DB, Datasnap.Provider, Datasnap.DBClient;

type
  TFrm_AltdePreco = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    RzComboBox1: TRzComboBox;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText7: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    DS_CD_Produto: TDataSource;
    CD_Produtos: TClientDataSet;
    Prov_Produtos: TDataSetProvider;
    Produtos: TSQLDataSet;
    CD_ProdutosDESCRICAO: TStringField;
    CD_ProdutosREF: TStringField;
    CD_ProdutosID_PRODUTO: TFMTBCDField;
    CD_ProdutosCATEGORIA: TStringField;
    CD_ProdutosDATA: TDateField;
    CD_ProdutosPRECO_CUSTO: TFMTBCDField;
    CD_ProdutosPRECO_MINIMO: TFMTBCDField;
    CD_ProdutosPRECO_TABELA: TFMTBCDField;
    CD_ProdutosDATA_UPDATE: TDateField;
    RLDBText3: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText9: TRLDBText;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AltdePreco: TFrm_AltdePreco;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_AltdePreco.Button1Click(Sender: TObject);
begin
if RzComboBox1.ItemIndex=0 then
   begin
        CD_Produtos.Close;
        cd_produtos.CommandText:='SELECT PRODUTOS.DESCRICAO,  '+
                                 'PRODUTOS.REF, '+
                                 'PRODUTOS.id_produto, '+
                                 'categorias.descricao AS CATEGORIA, '+
                                 'Produto_precos.data, '+
                                 'produto_precos.preco_custo, '+
                                 'produto_precos.preco_minimo, '+
                                 'produto_precos.preco_tabela, '+
                                 'produto_precos.data_update  '+
                                 'FROM PRODUTOS '+
                                 'LEFT JOIN categorias ON(CATEGORIAS.id_categoria = PRODUTOS.id_categoria) '+
                                 'left JOIN produto_precos ON(produto_precos.id_produto = PRODUTOS.id_produto)  '+
                                 'WHERE ((produto_precos.data_update >=:INI) AND (produto_precos.data_update <:FIM)) '+
                                 'AND (produto_precos.ativo =1)  AND (PRODUTOS.TIPO = 2)';

         cd_produtos.Params[0].AsDate:=RzDateTimeEdit1.Date;
         cd_produtos.Params[1].AsDate:=RzDateTimeEdit2.Date;
         RLLabel17.Caption:='Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.text;
         cd_produtos.open;

   end
   else
    begin
        CD_Produtos.Close;
        cd_produtos.CommandText:='SELECT PRODUTOS.DESCRICAO,  '+
                                 'PRODUTOS.REF, '+
                                 'PRODUTOS.id_produto, '+
                                 'categorias.descricao AS CATEGORIA, '+
                                 'Produto_precos.data, '+
                                 'produto_precos.preco_custo, '+
                                 'produto_precos.preco_minimo, '+
                                 'produto_precos.preco_tabela, '+
                                 'produto_precos.data_update  '+
                                 'FROM PRODUTOS '+
                                 'LEFT JOIN categorias ON(CATEGORIAS.id_categoria = PRODUTOS.id_categoria) '+
                                 'left JOIN produto_precos ON(produto_precos.id_produto = PRODUTOS.id_produto)  '+
                                 'WHERE ((produto_precos.data_update >=:INI) AND (produto_precos.data_update <:FIM)) '+
                                 'AND (produto_precos.ativo =1)  AND (PRODUTOS.TIPO = 2) and CATEGORIAS.ID_CATEGORIA ='+RzComboBox1.Value;

         cd_produtos.Params[0].AsDate:=RzDateTimeEdit1.Date;
         cd_produtos.Params[1].AsDate:=RzDateTimeEdit2.Date;
         RLLabel17.Caption:='Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.text+' Categoria :'+RzComboBox1.Text;
         cd_produtos.open;
    end;
    if CD_Produtos.RecordCount<>0 then
       RLReport1.PreviewModal
       else
       ShowMessage('Nenhum Registro Encontrado!');
end;

procedure TFrm_AltdePreco.FormShow(Sender: TObject);
var
categoria : tsqldataset;
begin
    categoria:=TSQLDataSet.Create(self);
    categoria.SQLConnection:=dm.SQLConnection1;
    categoria.CommandText:='select CATEGORIAS.ID_CATEGORIA, CATEGORIAS.descricao from CATEGORIAS';
    categoria.Open;
    RzComboBox1.Items.Clear;
    RzComboBox1.Values.Clear;
    RzComboBox1.Items.add('TODOS');
    RzComboBox1.Values.add('0');

    categoria.First;
    while not categoria.Eof do
     begin
      RzComboBox1.Items.add(categoria.FieldByName('descricao').asstring);
      RzComboBox1.Values.add(categoria.FieldByName('ID_CATEGORIA').asstring);
      categoria.Next;
     end;

     RzComboBox1.ItemIndex:=0;
     RzDateTimeEdit1.Date:=date-30;
     RzDateTimeEdit2.Date:=now;
     categoria.Destroy;

end;

end.
