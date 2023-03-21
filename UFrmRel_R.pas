unit UFrmRel_R;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RzButton,
  RLReport, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList;

type
  TFrmRel_R = class(TForm)
    RzPanel1: TRzPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzComboBox1: TRzComboBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RadioGroup1: TRadioGroup;
    RzComboBox2: TRzComboBox;
    Label3: TLabel;
    FDQuery1: TFDQuery;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    DBGrid1: TDBGrid;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1REF: TStringField;
    FDQuery1PRECO_CUSTO: TBCDField;
    FDQuery1PRECO_TABELA: TBCDField;
    FDQuery1PRECO_MINIMO: TBCDField;
    FDQuery1DATA_UPDATE: TDateField;
    FDQuery1DESCRICAO_1: TStringField;
    FDQuery1BTN: TStringField;
    ImageList1: TImageList;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RadioGroup2: TRadioGroup;
    FDQuery1ESTOQUE: TBCDField;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
   PROCEDURE NaoAlterados(Sender: TObject);
   PROCEDURE Alterados(Sender: TObject);
  end;

var
  FrmRel_R: TFrmRel_R;

implementation

{$R *.dfm}

uses UDM, UFrm_AltdePreco, UFrm_Altera_Preco;
PROCEDURE TFrmRel_R.NaoAlterados(Sender: TObject);
var
est : string;
begin

  case RadioGroup2.ItemIndex of
    0:est:=' ';
    1:est:=' and produtos.estoque >0 ';
    2:est:=' and produtos.estoque <=0 ';
  end;

  FDQuery1.close;
  FDQuery1.SQL.Text:='SELECT '+
                              'produtos.ID_PRODUTO, '+
                              'produtos.DESCRICAO, '+
                              'produtos.REF, '+
                              'produto_precos.preco_custo, '+
                              'produto_precos.PRECO_TABELA, '+
                              'produto_precos.PRECO_MINIMO, '+
                              'produto_precos.data_update, '+
                              'categorias.descricao, '+
                              'cast(produtos.estoque as numeric(15,2))Estoque, '+
                              ''' ''btn '+
                              'FROM produtos '+
                              'inner JOIN produto_precos on(produtos.id_produto = produto_precos.id_produto) '+
                              'inner join categorias on(produtos.id_categoria = categorias.id_categoria) '+
                              'WHERE produto_precos.data_update >=:d and produto_precos.data_update <=:e and produto_precos.data_update <>:d and produto_precos.ativo = 0 '+
                              RzComboBox1.Value+' and produtos.tipo = 2 '+RzComboBox2.Value+est;

FDQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
FDQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
//FDQuery1.Params[1].AsInteger:= StrToInt(RzComboBox1.Value);
FDQuery1.Open;

if FDQuery1.RecordCount=0 then
   ShowMessage('Nenhum registro encontrado');
end;


procedure TFrmRel_R.Alterados(Sender: TObject);
var
est : string;
begin

  case RadioGroup2.ItemIndex of
    0:est:=' ';
    1:est:=' and produtos.estoque >0 ';
    2:est:=' and produtos.estoque <=0 ';
  end;





  FDQuery1.close;
  FDQuery1.SQL.Text:='SELECT '+
                              'produtos.ID_PRODUTO, '+
                              'produtos.DESCRICAO, '+
                              'produtos.REF, '+
                              'produto_precos.preco_custo, '+
                              'produto_precos.PRECO_TABELA, '+
                              'produto_precos.PRECO_MINIMO, '+
                              'produto_precos.data_update, '+
                              'categorias.descricao, '+
                              'cast(produtos.estoque as numeric(15,2))Estoque, '+
                              ''' ''btn '+
                              'FROM produtos '+
                              'inner JOIN produto_precos on(produtos.id_produto = produto_precos.id_produto) '+
                              'inner join categorias on(produtos.id_categoria = categorias.id_categoria) '+
                              'WHERE  produto_precos.data_update >=:d and produto_precos.data_update <=:e and produto_precos.ativo = 1 '+
                              RzComboBox1.Value+' and produtos.tipo = 2 '+RzComboBox2.Value+est;

FDQuery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
FDQuery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
//FDQuery1.Params[1].AsInteger:= StrToInt(RzComboBox1.Value);
FDQuery1.Open;

if FDQuery1.RecordCount=0 then
   ShowMessage('Nenhum registro encontrado');
end;

procedure TFrmRel_R.DBGrid1CellClick(Column: TColumn);
begin
    if DBGrid1.SelectedField.FieldName = 'BTN' then
       BEGIN
        if (FDQuery1PRECO_CUSTO.AsFloat >=  FDQuery1PRECO_TABELA.AsFloat) OR (FDQuery1PRECO_CUSTO.AsFloat >=  FDQuery1PRECO_MINIMO.AsFloat) then
            begin
            Frm_Alterar_Preco:=TFrm_Alterar_Preco.Create(self);
            Frm_Alterar_Preco.Label1.Caption:=FDQuery1DESCRICAO.AsString;
            Frm_Alterar_Preco.Edit1.Text:=FloatToStr(FDQuery1PRECO_CUSTO.AsFloat);
            Frm_Alterar_Preco.Edit2.Text:=FloatToStr(FDQuery1PRECO_MINIMO.AsFloat);
            Frm_Alterar_Preco.Edit3.Text:=FloatToStr(FDQuery1PRECO_TABELA.AsFloat);
            Frm_Alterar_Preco.ShowModal;
            end;



       END;

end;

procedure TFrmRel_R.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

      if (FDQuery1PRECO_CUSTO.AsFloat >=  FDQuery1PRECO_TABELA.AsFloat) OR (FDQuery1PRECO_CUSTO.AsFloat >=  FDQuery1PRECO_MINIMO.AsFloat) then
        begin
            if DataCol = 8 then
               ImageList1.Draw(TDBGrid(Sender).Canvas, Rect.Left -1,Rect.Top - 1, 0);





            DBGrid1.Canvas.Brush.Color := clRed;
            DBGrid1.canvas.Font.Color := clWhite;
             if DataCol = 5 then
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

             if DataCol = 6 then
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

              if DataCol = 7 then
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


end;

procedure TFrmRel_R.FormShow(Sender: TObject);
VAR
CAT : TFDQuery;
begin

    CAT :=TFDQuery.Create(NIL);
    CAT.Connection:=DM.FDConnection1;
    CAT.SQL.Text:='SELECT ID_CATEGORIA,DESCRICAO FROM CATEGORIAS ORDER BY DESCRICAO';
    CAT.OPEN;

    RzComboBox1.Items.Add('TODAS');
    RzComboBox1.Values.Add('  ');

  CAT.First;
while not CAT.eof do
   begin
   RzComboBox1.Items.Add(CAT.FIELDBYNAME('DESCRICAO').ASSTRING);
   RzComboBox1.Values.Add(' and categorias.id_categoria = '+IntToStr(CAT.FIELDBYNAME('ID_CATEGORIA').ASINTEGER));
   CAT.next;
   end;

 RzDateTimeEdit1.Date:=date;
 RzDateTimeEdit2.Date:=date;
 RzComboBox1.ItemIndex := 0;
 CAT.Free;


end;

procedure TFrmRel_R.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
     if RLBand2.Color = clwhite then
        RLBand2.Color := clInactiveBorder
        else
        RLBand2.Color := clwhite;
end;

procedure TFrmRel_R.RzBitBtn1Click(Sender: TObject);
begin
     case RadioGroup1.ItemIndex of
     0: NaoAlterados(sender);
     1: alterados(sender);
     end;
end;

procedure TFrmRel_R.RzBitBtn2Click(Sender: TObject);
begin
if FDQuery1.RecordCount<>0 then
   RLReport1.PreviewModal;
end;

end.
