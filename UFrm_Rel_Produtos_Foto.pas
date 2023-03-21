unit UFrm_Rel_Produtos_Foto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, RzCmboBx,
  RzButton, RzPanel, RzRadGrp, dxdbtrel, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, dxGDIPlusClasses;

type
  TFrm_Rel_Produtos_Foto = class(TForm)
    Query_Categoria: TFDQuery;
    Query_CategoriaID_CATEGORIA: TIntegerField;
    Query_CategoriaID_PAI: TIntegerField;
    Query_CategoriaFILHO: TStringField;
    Query_CategoriaCATEGORIA: TStringField;
    Query_Marca: TFDQuery;
    Query_MarcaMARCA: TStringField;
    DS_Query_Marca: TDataSource;
    DS_Query_Categoria: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dxLookupTreeView1: TdxLookupTreeView;
    RzRadioGroup1: TRzRadioGroup;
    RzBitBtn1: TRzBitBtn;
    Memo1: TMemo;
    Query_produto: TFDQuery;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLImage1: TRLImage;
    Query_produtoID_PRODUTO: TIntegerField;
    Query_produtoFOTO: TBlobField;
    Query_produtoLOCAL_FOTO: TStringField;
    Query_produtoTIPO_FOTO: TSmallintField;
    Query_produtoID_DEPTO: TIntegerField;
    Query_produtoDESCRICAO: TStringField;
    Query_produtoCATEGORIA: TStringField;
    Query_produtoID_CATEGORIA: TIntegerField;
    Query_produtoMARCA: TStringField;
    Query_produtoPRECO_CUSTO: TBCDField;
    Query_produtoPRECO_MIN: TBCDField;
    Query_produtoPRECO_TABELA: TBCDField;
    Query_produtoESTOQUE: TSingleField;
    Query_produtoTIPO: TIntegerField;
    DBImage1: TDBImage;
    DS_Query_Produtos: TDataSource;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    Image1: TImage;
    RzComboBox1: TRzComboBox;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox1: TCheckBox;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Produtos_Foto: TFrm_Rel_Produtos_Foto;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Produtos_Foto.FormShow(Sender: TObject);
var
dept : TFDQuery;
begin
Query_Categoria.Open;
Query_Marca.Open;
DBLookupComboBox1.KeyValue := 'TODOS';


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
      RzComboBox1.Values.Add(' AND ID_DEPTO = '+dept.FieldByName('id_depto').AsString);
      dept.next;
    end;

    dept.Free;

    RzComboBox1.ItemIndex := 0;

end;

procedure TFrm_Rel_Produtos_Foto.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


   if Query_produtoTIPO_FOTO.AsInteger = 1 then
      begin
      if Query_produtoFOTO.Value <> null then
         RLImage1.Picture:=DBImage1.Picture
         else
         RLImage1.Picture:=Image1.Picture;
      end
      else
      begin
   if Query_produtoTIPO_FOTO.AsInteger = 2 then
      if FileExists(Query_produtoLOCAL_FOTO.AsString+'\produtos\'+Query_produtoID_PRODUTO.AsString+'.jpg') then

      RLImage1.Picture.LoadFromFile(Query_produtoLOCAL_FOTO.AsString+'\produtos\'+Query_produtoID_PRODUTO.AsString+'.jpg')
      else
      RLImage1.Picture:=Image1.Picture;
      end;




end;

procedure TFrm_Rel_Produtos_Foto.RzBitBtn1Click(Sender: TObject);
VAR
est, CATE,MARCA : STRING;

begin

      if dxLookupTreeView1.Text = 'TODOS' then
         CATE := ' '
         ELSE
         CATE := ' AND ID_CATEGORIA ='+IntToStr(Query_CategoriaID_CATEGORIA.AsInteger);


      if DBLookupComboBox1.KeyValue = 'TODOS' then
          Marca :=' '
          else
          Marca :=' and marca = '''+DBLookupComboBox1.KeyValue+'''';

      case RzRadioGroup1.ItemIndex of

      0 : est := ' and  estoque >0';
      1 : est := ' and  estoque <=0';
      2 : est := ' ';
      end;



      if CheckBox2.Checked = true then
         begin
           RLLabel6.Visible:=true;
           RLDBText5.Visible:=true;
         end
         else
         begin
           RLLabel6.Visible:=false;
           RLDBText5.Visible:=false;
         end;


       if CheckBox3.Checked = true then
         begin
           RLLabel7.Visible:=true;
           RLDBText6.Visible:=true;
         end
         else
         begin
           RLLabel7.Visible:=false;
           RLDBText6.Visible:=false;
         end;

      if CheckBox1.Checked = true then
         begin
           RLLabel9.Visible:=true;
           RLDBText7.Visible:=true;
         end
         else
         begin
           RLLabel9.Visible:=false;
           RLDBText7.Visible:=false;
         end;


      Query_produto.Close;
      Query_produto.sql.text:='select * from REL_PROD_FOTO  where tipo <> 4 '
                              +cate+' '+Marca+' '+est+' '+RzComboBox1.Value+' order by id_produto';

      Memo1.Text:=Query_produto.sql.text;
      Query_produto.open;


      if Query_produto.RecordCount <> 0 then
         RLReport1.PreviewModal
         else
         ShowMessage('nenhum registro encontrado!');
end;

end.
