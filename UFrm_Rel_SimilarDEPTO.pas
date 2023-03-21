unit UFrm_Rel_SimilarDEPTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, RLReport,
  Vcl.DBCtrls, dxdbtrel, Vcl.ExtCtrls, RzCmboBx, RzButton, IBX.IBCustomDataSet,
  IBX.IBQuery, Vcl.Mask, RzEdit, RzPanel, Vcl.Menus, RLParser;

type
  TFrm_Rel_SimilarDEPTO = class(TForm)
    DS_Query_FIltro: TDataSource;
    DBGrid1: TDBGrid;
    RLReport1: TRLReport;
    Panel1: TPanel;
    Query_categoria: TFDQuery;
    DS_Categorias: TDataSource;
    Query_categoriaDESCRICAO: TStringField;
    Query_categoriaID_CATEGORIA: TIntegerField;
    Query_categoriaPAI: TIntegerField;
    Query_categoriaI: TIntegerField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label1: TLabel;
    Label2: TLabel;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    Label5: TLabel;
    Edit3: TEdit;
    RzGroupBox1: TRzGroupBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label6: TLabel;
    Label7: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    RzComboBox2: TRzComboBox;
    Label10: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Query_filtro: TFDQuery;
    Query_Soma: TFDQuery;
    RLBand6: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText10: TRLDBText;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText7: TRLDBText;
    Panel2: TPanel;
    DS_QuerySoma: TDataSource;
    DBGrid2: TDBGrid;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    Query_Similar: TFDQuery;
    DS_Query_Similar: TDataSource;
    PopupMenu1: TPopupMenu;
    Similar1: TMenuItem;
    Query_SomaSimilar: TFDQuery;
    DS_Query_SomaSimilar: TDataSource;
    RLReport2: TRLReport;
    RLBand7: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel13: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand8: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLBand9: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand11: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand12: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText17: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_SimilarDEPTO: TFrm_Rel_SimilarDEPTO;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_SimilarDEPTO.Button1Click(Sender: TObject);
VAR
 dpto_: TFDQuery;
 departamento : TRLLabel;
DBDEPTO : TRLDBText;
RESULT : TRLDBResult;
begin
               dpto_:=TFDQuery.Create(self);
               dpto_.Connection:= dm.FDConnection1;

              dpto_.CLOSE;
               dpto_.SQL.Text:='select id_depto, descricao from departamentos ORDER BY ID_DEPTO DESC';
               dpto_.Open();



            dpto_.FIRST;






          WHILE NOT dpto_.EOF DO

           begin

              departamento := TRLLabel.Create(self);
              departamento.Parent:=RLBand3;
              departamento.Caption:='  '+copy(dpto_.FieldByName('descricao').AsString,1,20)+'  ';
              departamento.Name:='LDEPTO'+dpto_.FieldByName('id_depto').AsString;
              departamento.Align:=faRight;

              DBDEPTO:=TRLDBText.Create(SELF);
              DBDEPTO.Parent:=RLBand2;
              DBDEPTO.Alignment:=taCenter;
              DBDEPTO.NAME:='DBDEPTO'+dpto_.FieldByName('id_depto').AsString;
              DBDEPTO.DataSource:=DS_Query_FIltro;
              DBDEPTO.DataField:='departamento'+dpto_.FieldByName('id_depto').AsString;
              DBDEPTO.Holder:=departamento;





              DBDEPTO:=TRLDBText.Create(SELF);
              DBDEPTO.Parent:=RLBand6;
              DBDEPTO.Borders.DrawLeft:=TRUE;
              DBDEPTO.Borders.DrawTop:=TRUE;
              DBDEPTO.Borders.DrawRight:=TRUE;
              DBDEPTO.Borders.DrawBottom:=TRUE;
              DBDEPTO.Top:=3;
              DBDEPTO.Alignment:=taCenter;
              DBDEPTO.NAME:='SDEPTO'+dpto_.FieldByName('id_depto').AsString;
              DBDEPTO.DataSource:=DS_QuerySoma;
              DBDEPTO.DataField:='departamento_S'+dpto_.FieldByName('id_depto').AsString;
              DBDEPTO.Holder:=departamento;
              DBDEPTO.AutoSize:=false;
              DBDEPTO.Height:=19;


              departamento := TRLLabel.Create(self);
              departamento.Parent:=RLBand11;
              departamento.Caption:='  '+copy(dpto_.FieldByName('descricao').AsString,1,20)+'  ';
              departamento.Name:='LDEPTO2'+dpto_.FieldByName('id_depto').AsString;
              departamento.Align:=faRight;

              DBDEPTO:=TRLDBText.Create(SELF);
              DBDEPTO.Parent:=RLBand12;
              DBDEPTO.Alignment:=taCenter;
              DBDEPTO.NAME:='DBDEPTO2'+dpto_.FieldByName('id_depto').AsString;
              DBDEPTO.DataSource:=DS_Query_Similar;
              DBDEPTO.DataField:='departamento'+dpto_.FieldByName('id_depto').AsString;
              DBDEPTO.Holder:=departamento;

              RESULT:=TRLDBResult.Create(SELF);
              RESULT.Parent:=RLBand9;
              RESULT.Alignment:=taCenter;
              RESULT.NAME:='RLSUM'+dpto_.FieldByName('id_depto').AsString;
              RESULT.DataSource:=DS_Query_Similar;
              RESULT.DataField:='departamento'+dpto_.FieldByName('id_depto').AsString;
              RESULT.Holder:=DBDEPTO;
              RESULT.Info:=riSum;
              RESULT.DisplayMask:='#,###,##0.00';

              RESULT.Top:=6;






            //  Memo1.Lines.Add(dpto_.FieldByName('descricao').AsString+'  '+IntToStr(I));

              dpto_.NEXT;
           end;
end;

procedure TFrm_Rel_SimilarDEPTO.DBGrid1DblClick(Sender: TObject);
var
 dpto : TFDQuery;
begin


    Query_Similar.Close;
    Query_Similar.sql.Clear;
    Query_Similar.SQL.Text:='  SELECT PRODUTOS.id_produto||''-''||PRODUTOS.descricao PRODUTO, ' +
                            '                    PRODUTOS.marca, ' +
                            '                    PRODUTOS.codigo_fab, ' +
                            '                    PRODUTOS.ref, ' +
                            '  cast((SELECT SUM(produto_deptos.estoque) FROM produto_deptos WHERE produto_deptos.id_produto = PRODUTOS.id_produto)as float) TOTAL, '+
                            ' CAST(COALESCE( (' +
                            '                 Select ' +
                            '                 SUM(QTDE_TOTAL) ' +
                            '                 from rel_ic_vendas_p P ' +
                            '                 WHERE ((DATA_FATURAMENTO >= :MOV_INI) ' +
                            '                 AND (DATA_FATURAMENTO <= :MOV_FIN)) ' +
                            '                 AND (TIPO_NT <> 2) AND (((PROCESSO = 1) ' +
                            '                 OR (PROCESSO = 2)) AND (OPERACAO = 1)) ' +
                            '                 AND (STATUS = 2) ' +
                            '                 And (p.TIPO = 1) and p.id_produto = PRODUTOS.id_produto ' +
                            '                 ),0)AS float)MOV, ';


               dpto:=TFDQuery.Create(self);
               dpto.Connection:= dm.FDConnection1;
               dpto.SQL.Text:='select id_depto, descricao from departamentos ';
               dpto.Open();


         while not dpto.Eof do
           begin



              Query_Similar.SQL.add('cast(COALESCE((SELECT SUM(produto_deptos.estoque) FROM produto_deptos '+
              ' WHERE produto_deptos.id_produto = PRODUTOS.id_produto AND  produto_deptos.id_depto ='+dpto.FieldByName('id_depto').AsString+'),0)AS  float) departamento'+dpto.FieldByName('id_depto').AsString);

              if dpto.RecNo < dpto.RecordCount then
                 BEGIN
                 Query_Similar.SQL.add(',');

                 END
                 else
                 BEGIN




                 Query_Similar.SQL.add('  FROM PRODUTOS ' +
                                       ' where PRODUTOS.ref =:a '+
                                       '  ORDER BY PRODUTOS.ref');
//
                 END;







                dpto.next;
           end;

            Query_Similar.Params[0].AsDate:=RzDateTimeEdit3.AsDateTime;
            Query_Similar.Params[1].AsDate:=RzDateTimeEdit4.AsDateTime;
            Query_Similar.Params[2].AsString:=Query_filtro.FieldByName('ref').AsString;

            Memo1.Lines.Text:=Query_Similar.SQL.Text;
           Query_Similar.Open();
           RLLabel13.Caption:='Período de Movimentação por Item'+RzDateTimeEdit3.Text+' à '+RzDateTimeEdit4.Text;
           RLReport2.PreviewModal;


end;

procedure TFrm_Rel_SimilarDEPTO.FormCreate(Sender: TObject);
var
dpto_,marca : TFDQuery;
departamento : TRLLabel;
DBDEPTO : TRLDBText;
I : INTEGER;
begin

               marca:=TFDQuery.Create(self);
               marca.Connection:= dm.FDConnection1;
               marca.SQL.Text:='select laboratorios.nome from laboratorios ';
               marca.Open();
               marca.FIRST;
               RzComboBox1.AddItemValue('TODAS',' ');
                  while not marca.Eof do
                   begin
                         RzComboBox1.AddItemValue(marca.FieldByName('nome').AsString,' and REL_SIMILAR.marca ='''+marca.FieldByName('nome').AsString+'''');
                         marca.next;
                   end;

                RzComboBox1.ItemIndex:=0;

               dpto_:=TFDQuery.Create(self);
               dpto_.Connection:= dm.FDConnection1;
               dpto_.SQL.Text:='select id_depto, descricao from departamentos';
               dpto_.Open();
               dpto_.FIRST;


               I:=6;
          dpto_.FIRST;
          RzComboBox2.ClearItemsValues;
          RzComboBox2.AddItemValue('TODOS','0');


         while not dpto_.Eof do
           begin


              RzComboBox2.AddItemValue(dpto_.FieldByName('descricao').AsString,dpto_.FieldByName('id_depto').AsString);


              DBGrid1.Columns.Add;
              DBGrid1.Columns[I].Title.Caption := dpto_.FieldByName('descricao').AsString;
              DBGrid1.Columns[I].FieldName :='departamento'+dpto_.FieldByName('id_depto').AsString;
              DBGrid1.Columns[I].Width:= LENGTH(dpto_.FieldByName('descricao').AsString)*8;



              INC(I);


                dpto_.next;
           end;
              DBGrid1.Columns.Add;
              DBGrid1.Columns[I].Title.Caption := 'QNT_MOV';
              DBGrid1.Columns[I].FieldName :='QNT_MOV';



           RzComboBox2.ItemIndex:=0;







                  I:=0;

              DBGrid2.Columns.Add;
              DBGrid2.Columns[I].Title.Caption := 'TOTAL ESTOQUE';
              DBGrid2.Columns[I].FieldName :='ESTOQUE';
              INC(I);
          dpto_.FIRST;


         while not dpto_.Eof do
           begin




              DBGrid2.Columns.Add;


              DBGrid2.Columns.Add;

              DBGrid2.Columns[I].Title.Caption :='TOTAL '+ dpto_.FieldByName('descricao').AsString;
              DBGrid2.Columns[I].FieldName :='departamento_S'+dpto_.FieldByName('id_depto').AsString;
              DBGrid2.Columns[I].Width:= LENGTH(dpto_.FieldByName('descricao').AsString)*12;

              INC(I);


                dpto_.next;
           end;




               DBGrid2.Columns.Add;
              DBGrid2.Columns[I].Title.Caption := 'TOTAL MOV.';
              DBGrid2.Columns[I].FieldName :='MOV';
           

             Button1Click(SENDER);

          

              RzDateTimeEdit1.Date := Now-2;
              RzDateTimeEdit2.Date := NOW;
              RzDateTimeEdit3.Date := Now-2;
              RzDateTimeEdit4.Date := Now;


     dpto_.Free;
     marca.Free;
//departamento.Free;
//DBDEPTO.Free;
end;

procedure TFrm_Rel_SimilarDEPTO.FormShow(Sender: TObject);
begin
Query_categoria.Open();
end;

procedure TFrm_Rel_SimilarDEPTO.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLBand2.Color = clMenu then
   RLBand2.Color := clWhite
   ELSE
   RLBand2.Color := clMenu;

end;

procedure TFrm_Rel_SimilarDEPTO.RzBitBtn1Click(Sender: TObject);
var
dpto : TFDQuery;
departamento : TRLLabel;
DBDEPTO : TRLDBText;
categoria,ref,id_produto,id_prod,cod_fabrica: string;

begin
               dpto:=TFDQuery.Create(self);
               dpto.Connection:= dm.FDConnection1;
               dpto.SQL.Text:='execute PROCEDURE REL_SIMILAR_P(:A,:B,:C,:D,:E,:F,:G)';
               dpto.ParamByName('A').AsDate:=RzDateTimeEdit1.Date;
               dpto.ParamByName('B').AsDate:=RzDateTimeEdit2.Date;
               dpto.ParamByName('C').AsDate:=RzDateTimeEdit3.Date;
               dpto.ParamByName('D').AsDate:=RzDateTimeEdit4.Date;
               dpto.ParamByName('E').AsInteger:=StrToInt(RzComboBox2.Value);
             //  if LENGTH(Edit1.Text)<> 0 then
              //    dpto.ParamByName('F').AsSTRING:=Edit1.Text
              //    ELSE
              //    dpto.ParamByName('F').AsSTRING:='%'+Edit1.Text+'%';


              if LENGTH(Edit2.Text)<> 0 then
                  dpto.ParamByName('f').AsSTRING:=Edit2.Text
                  ELSE
                  dpto.ParamByName('f').AsSTRING:='%';


                  IF RzComboBox1.ItemIndex = 0 THEN
                   dpto.ParamByName('g').AsSTRING:='%'
                   ELSE
                   dpto.ParamByName('g').AsSTRING:=RzComboBox1.TEXT;





                                 (*
               if LENGTH(Edit3.Text)<> 0 then
                  dpto.ParamByName('h').AsSTRING:=Edit3.Text
                  ELSE
                  dpto.ParamByName('h').AsSTRING:='%';  *)


               dpto.ExecSQL;
               dm.FDConnection1.Commit;
               dpto.Free;





   if Query_categoriaID_CATEGORIA.Asinteger<>0 then
      CATEGORIA :=' AND REL_SIMILAR.ID_CATEGORIA ='+Query_categoriaID_CATEGORIA.AsString
      ELSE
      CATEGORIA :='';


    if length(Edit1.Text)=0 then
       ref := ' '
       else
       ref :=' and REL_SIMILAR.REFERENCIA ='''+Edit1.Text+'''';



    if LENGTH(Edit2.Text)<>0 then

            id_produto:='  AND REL_SIMILAR.id_produto = '+Edit2.Text+''

          else
          id_produto:=' ';

    if LENGTH(Edit3.Text)<>0 then

        cod_fabrica:=' AND (REL_SIMILAR.COD_FABRICA ='''+Edit3.Text+''')'
        else
        cod_fabrica:=' ';









               dpto:=TFDQuery.Create(self);
               dpto.Connection:= dm.FDConnection1;
               dpto.SQL.Text:='select id_depto, descricao from departamentos ';
               dpto.Open();
               dpto.FIRST;
               Query_Filtro.Close;
               query_filtro.SQL.Text:='select   distinct(REL_SIMILAR.id_produto||''-''||REL_SIMILAR.produto) PRODUTO, ' +
                                      '         (select sum(p.QNT_VENDIDA) from rel_similar p where p.id_produto = REL_SIMILAR.id_produto)QNT_VENDIDA, '+
                                      '         REL_SIMILAR.MARCA, '+
                                      '         REL_SIMILAR.referencia REF, ' +
                                      '         REL_SIMILAR.cod_fabrica codigo_fab, '+
                                      '         REL_SIMILAR.TOTAL_ESTOQUE, '+
                                      '         CAST((select sum(d.qnt_mov) from rel_similar d where d.id_produto = REL_SIMILAR.id_produto)AS FLOAT) QNT_MOV, ';


               Query_Soma.Close;
               query_soma.SQL.Text:='select ';
         while not dpto.Eof do
           begin
             query_soma.SQL.add('SUM(CAST(coalesce((select produto_deptos.estoque from produto_deptos where produto_deptos.id_produto = REL_SIMILAR.id_produto and produto_deptos.id_depto ='+dpto.FieldByName('id_depto').AsString+'),0)AS numeric(15,2))) departamento_S'+dpto.FieldByName('id_depto').AsString+',');

             query_filtro.SQL.add('CAST(coalesce((select produto_deptos.estoque from produto_deptos where produto_deptos.id_produto '+
              '= REL_SIMILAR.id_produto and produto_deptos.id_depto ='+dpto.FieldByName('id_depto').AsString+'),0)AS FLOAT) departamento'+dpto.FieldByName('id_depto').AsString);

              if dpto.RecNo < dpto.RecordCount then
                 BEGIN
                 query_filtro.SQL.add(',');

                 END
                 else
                 BEGIN




                 query_filtro.SQL.add(' from REL_SIMILAR '+
//                 '  left join produto_similares on produto_similares.id_produto = produtos.id_produto '+
                 ' WHERE REL_SIMILAR.PRODUTO  is not null  '+REF+cod_fabrica);//+categoria+RzComboBox1.Value+id_produto+cod_fabrica);
                 END;







                dpto.next;
           end;

              query_filtro.SQL.add(' ORDER BY REL_SIMILAR.REFERENCIA,REL_SIMILAR.id_produto,REL_SIMILAR.produto ');


               query_soma.SQL.add(' cast(SUM(rel_similar.total_estoque) as float) ESTOQUE,' +
                                    ' cast(SUM(rel_similar.qnt_mov) as float)MOV ' +
                                    ' from REL_SIMILAR  '+
                                    ' WHERE REL_SIMILAR.PRODUTO  is not null ');//+REF+categoria+RzComboBox1.Value+id_produto+cod_fabrica);
               query_soma.open;




              Memo1.lines.Text:=Query_Filtro.SQL.Text;
              query_filtro.open;

          // RLReport1.PreviewModal;

end;

procedure TFrm_Rel_SimilarDEPTO.RzBitBtn2Click(Sender: TObject);
VAR
PRODUTO,COD_FAB,REFERENCIA : STRING;
begin
  RLLabel10.Caption:='Período de Venda '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text+' departamento '+RzComboBox2.Text+#13;
    RLLabel12.Caption:='Período de Movimentação por Item'+RzDateTimeEdit3.Text+' à '+RzDateTimeEdit4.Text;

  if LENGTH(Edit2.Text)<>0 then
     PRODUTO:=' código do produto: '+Edit2.Text
     else
     produto:='';

  if LENGTH(Edit3.Text)<>0 then
     COD_FAB:=' código de fábrica: '+Edit3.Text
     else
     COD_FAB:='';

  if LENGTH(Edit1.Text)<>0 then
     REFERENCIA:=' referência: '+Edit1.Text
     else
     REFERENCIA:='';

     RLLabel11.Caption:=PRODUTO+COD_FAB+REFERENCIA;

RLReport1.PreviewModal;
end;

end.
