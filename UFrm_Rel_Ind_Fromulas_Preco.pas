unit UFrm_Rel_Ind_Fromulas_Preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  RzRadGrp, RzButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Rel_Ind_Fromulas_Preco = class(TForm)
    RzRadioGroup1: TRzRadioGroup;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    RzBitBtn1: TRzBitBtn;
    RLReport1: TRLReport;
    Query_Formulas: TFDQuery;
    DS_Query_Formulas: TDataSource;
    Query_FormulasID_FORMULA: TIntegerField;
    Query_FormulasFORMULA: TStringField;
    Query_FormulasPRODUTO: TStringField;
    Query_FormulasFORMULACAO: TFloatField;
    Query_FormulasTIPO_MARGEM: TStringField;
    Query_FormulasMARGEM: TSingleField;
    Query_FormulasPRECO_FINAL: TFloatField;
    Query_FormulasSTATUS: TSmallintField;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Ind_Fromulas_Preco: TFrm_Rel_Ind_Fromulas_Preco;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Ind_Fromulas_Preco.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Query_FormulasSTATUS.AsInteger = 0 then
   BEGIN
   RLLabel6.Caption:='INATIVO';
   RLBand3.Color:=$00E2E2E2;
   END
   ELSE
if Query_FormulasSTATUS.AsInteger = 1 then
   BEGIN
   RLLabel6.Caption:='ATIVO';
   RLBand3.Color:=clWhite;
   END;

end;

procedure TFrm_Rel_Ind_Fromulas_Preco.RzBitBtn1Click(Sender: TObject);
var
st : string;
begin
       case RzRadioGroup1.ItemIndex of
       0 : st :=' where  status = 1 ';
       1 : st :=' where  status = 0 ';
       2 : st :=' ';
       end;

       if CheckBox1.Checked = true then
        begin
          RLLabel4.Visible:=true;
          RLdbtext4.Visible:=true;

        end
        else
        begin
          RLLabel4.Visible:=false;
          RLdbtext4.Visible:=false;
        end;


        if CheckBox2.Checked = true then
        begin
          RLLabel3.Visible:=true;
          RLdbtext3.Visible:=true;

        end
        else
        begin
          RLLabel3.Visible:=false;
          RLdbtext3.Visible:=false;
        end;


       Query_Formulas.Close;
       query_formulas.SQL.Text:='select * from REL_IND_FORMULAS' +
                                st+' order by id_formula desc ';
       query_formulas.Open();

       if query_formulas.RecordCount<>0 then
          RLReport1.PreviewModal
          else
          ShowMessage('Nenhum registro encontrado!');


end;

end.
