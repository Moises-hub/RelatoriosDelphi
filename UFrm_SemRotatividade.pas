unit UFrm_SemRotatividade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzRadGrp,
  RLReport, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzButton, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DosMove;

type
  TFrm_SemRotatividade = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Label4: TLabel;
    Label5: TLabel;
    RzBitBtn1: TRzBitBtn;
    DS_CD_Produto: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1ULTIMA_COMPRA: TDateField;
    FDQuery1ULTIMA_SAIDA: TDateField;
    DosMove1: TDosMove;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLLabel16: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    FDQuery1CATEGORIA: TStringField;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    FDQuery1SUBCATEGORIA: TStringField;
    FDQuery1DEPARTAMENTO: TStringField;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    FDQuery1ESTOQUE: TFloatField;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SemRotatividade: TFrm_SemRotatividade;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_SemRotatividade.FormShow(Sender: TObject);
var
sql : tfdquery;
begin
    sql:=tfdquery.Create(nil);
    sql.Connection:=dm.FDConnection1;
    sql.SQL.Text:='select id_categoria,descricao from categorias';
    sql.Open();

        RzComboBox1.Items.Clear;
    RzComboBox2.Items.Clear;

    RzComboBox1.Items.Add('TODAS');
    RzComboBox1.Values.Add('  ');

         RzComboBox2.Items.Add('TODOS');
         RzComboBox2.values.Add('  ');


    sql.First;
    while not sql.Eof do
      begin
         RzComboBox1.Items.Add(sql.FieldByName('descricao').AsString);
         RzComboBox1.values.Add(' and id_categoria = '+sql.FieldByName('id_categoria').AsString);
         sql.Next;

      end;

          sql.close;
         sql.SQL.Text:='select ID_DEPTO,descricao from DEPARTAMENTOS';
         sql.Open();


     sql.First;
    while not sql.Eof do
      begin
         RzComboBox2.Items.Add(sql.FieldByName('descricao').AsString);
         RzComboBox2.values.Add(' and ID_DEPTO = '+sql.FieldByName('ID_DEPTO').AsString);
         sql.Next;

      end;
      sql.FREE;

      RzComboBox1.ItemIndex := 0;
      RzComboBox2.ItemIndex := 0;

end;

procedure TFrm_SemRotatividade.RzBitBtn1Click(Sender: TObject);
var
sem_v : string;
begin

     if CheckBox1.Checked = true then
        sem_v :=' (ULTIMA_SAIDA <:apos or ULTIMA_SAIDA is null) '
        else
        sem_v :=  ' ULTIMA_SAIDA <:apos ';

      FDQuery1.CLOSE;
      FDQuery1.sql.Text:='select REL_LIST_PRODUTOS2.id_produto,' +
                         '       REL_LIST_PRODUTOS2.descricao, ' +
                         '       REL_LIST_PRODUTOS2.categoria, ' +
                         '       REL_LIST_PRODUTOS2.SUBCATEGORIA, ' +
                         '       REL_LIST_PRODUTOS2.DEPARTAMENTO, ' +
                         '       REL_LIST_PRODUTOS2.ultima_entrada as ultima_compra, ' +
                         '       REL_LIST_PRODUTOS2.ultima_saida, ' +
                         '       REL_LIST_PRODUTOS2.estoque from REL_LIST_PRODUTOS2 ' +
                         'WHERE ID_PRODUTO IS NOT NULL And '+sem_v+' and (ultima_entrada <=:compra_ate) '+RzComboBox1.Value+RzComboBox2.Value ;


     case RzRadioGroup1.ItemIndex of
     0 : FDQuery1.sql.Text:= FDQuery1.sql.Text+'  order by ultima_entrada';
     1 : FDQuery1.sql.Text:= FDQuery1.sql.Text+' And estoque > 0 order by REL_LIST_PRODUTOS2.ultima_entrada';
     2 : FDQuery1.sql.Text:= FDQuery1.sql.Text+' And estoque <= 0 order by REL_LIST_PRODUTOS2.ultima_entrada';
     end;


      FDQuery1.params[0].AsDate:=RzDateTimeEdit2.Date;
      FDQuery1.params[1].AsDate:=RzDateTimeEdit1.Date;
      FDQuery1.OPEN;



   if FDQuery1.RecordCount<>0 then
      begin



      RLReport1.PreviewModal;

      end
      ELSE
      ShowMessage('NENHUM REGISTRO ENCONTRADO');
end;

end.
