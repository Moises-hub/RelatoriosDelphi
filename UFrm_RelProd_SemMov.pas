unit UFrm_RelProd_SemMov;

interface

uses  Data.SqlExpr,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RLReport,
  Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, RzRadGrp, DosMove;

type
  TFrm_RelProd_SemMov = class(TForm)
    RzPanel1: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    DS_CD_Produto: TDataSource;
    FDQuery1: TFDQuery;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLLabel16: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    Label1: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    DosMove1: TDosMove;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1ULTIMA_COMPRA: TDateField;
    FDQuery1ULTIMA_SAIDA: TDateField;
    FDQuery1ESTOQUE: TSingleField;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    CheckBox1: TCheckBox;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    FDQuery1PRECO_CUSTO: TBCDField;
    FDQuery1MULTIPLY: TFloatField;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand6: TRLBand;
    RLLabel9: TRLLabel;
    procedure Button1Click(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelProd_SemMov: TFrm_RelProd_SemMov;

implementation

{$R *.dfm}

uses UFrm_Acessos, UDM, UFrmPrincipal;

procedure TFrm_RelProd_SemMov.Button1Click(Sender: TObject);
var
sem_v : string;
QUERY_SOMA : TFDQUERY;
begin

     if CheckBox1.Checked = true then
        sem_v :=' (ULTIMA_SAIDA <:apos or ULTIMA_SAIDA is null) '
        else
        sem_v :=  ' ULTIMA_SAIDA <:apos ';


      FDQuery1.CLOSE;
      FDQuery1.sql.Text:='select REL_LIST_PRODUTOS1.id_produto,' +
                         '       REL_LIST_PRODUTOS1.descricao, ' +
                         '       REL_LIST_PRODUTOS1.ultima_entrada as ultima_compra, ' +
                         '       REL_LIST_PRODUTOS1.ultima_saida, ' +
                         '       REL_LIST_PRODUTOS1.PRECO_CUSTO, '+
                         '       PRECO_CUSTO*estoque, '+
                         '       REL_LIST_PRODUTOS1.estoque from REL_LIST_PRODUTOS1 ' +
                         'WHERE ID_PRODUTO IS NOT NULL And '+sem_v+' and (ultima_entrada <=:compra_ate)' ;


     case RzRadioGroup1.ItemIndex of
     0 : FDQuery1.sql.Text:= FDQuery1.sql.Text+'  order by ultima_entrada';
     1 : FDQuery1.sql.Text:= FDQuery1.sql.Text+' And estoque > 0 order by REL_LIST_PRODUTOS1.ultima_entrada';
     2 : FDQuery1.sql.Text:= FDQuery1.sql.Text+' And estoque <= 0 order by REL_LIST_PRODUTOS1.ultima_entrada';
     end;


      FDQuery1.params[0].AsDate:=RzDateTimeEdit2.Date;
      FDQuery1.params[1].AsDate:=RzDateTimeEdit1.Date;
      FDQuery1.OPEN;



   if FDQuery1.RecordCount<>0 then
      begin
       QUERY_SOMA:=TFDQUERY.Create(NIL);
       QUERY_SOMA.Connection:=DM.FDConnection1;

       QUERY_SOMA.Close;
       QUERY_SOMA.SQL.Text:='SELECT SUM(PRECO_CUSTO*estoque) SOMA FROM REL_LIST_PRODUTOS1 ' +
                            'WHERE ID_PRODUTO IS NOT NULL And '+sem_v+' and (ultima_entrada <=:compra_ate)' ;


     case RzRadioGroup1.ItemIndex of

     1 : QUERY_SOMA.sql.Text:= QUERY_SOMA.sql.Text+' And estoque > 0 ';
     2 : QUERY_SOMA.sql.Text:= QUERY_SOMA.sql.Text+' And estoque <= 0 ';
     end;
        QUERY_SOMA.params[0].AsDate:=RzDateTimeEdit2.Date;
        QUERY_SOMA.params[1].AsDate:=RzDateTimeEdit1.Date;
        QUERY_SOMA.Open();
        RLLabel9.Caption:=FloatToStrF(QUERY_SOMA.FieldByName('SOMA').AsFloat,FFCURRENCY,15,2);
      RLReport1.PreviewModal;
      QUERY_SOMA.Free;

      end
      ELSE
      ShowMessage('NENHUM REGISTRO ENCONTRADO');


end;

procedure TFrm_RelProd_SemMov.FormShow(Sender: TObject);
begin
RzDateTimeEdit2.AsDateTime:=Date-365;
RzDateTimeEdit1.AsDateTime:=Date;
end;

procedure TFrm_RelProd_SemMov.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel2.Caption:='Após '+RzDateTimeEdit2.Text;
end;

procedure TFrm_RelProd_SemMov.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if RLBand5.Color=clMenu then
   RLBand5.Color:=clWhite
   ELSE
   RLBand5.Color:=clMENU;
end;

end.
