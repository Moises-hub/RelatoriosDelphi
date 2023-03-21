unit UFrm_Rel_LOTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, RLReport, Vcl.StdCtrls, RzPanel, RzRadGrp,
  RzCmboBx, RzLabel, Vcl.ExtCtrls, Vcl.Mask, RzEdit;

type
  TFrm_Rel_LOTE = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzRadioGroup1: TRzRadioGroup;
    RzLabel3: TRzLabel;
    RzComboBox3: TRzComboBox;
    Button1: TButton;
    RLReport1: TRLReport;
    Lotes: TSQLDataSet;
    Prov_Lotes: TDataSetProvider;
    CD_Lotes: TClientDataSet;
    DS_CD_Lotes: TDataSource;
    CD_LotesID_PRODUTO: TIntegerField;
    CD_LotesPRODUTO: TStringField;
    CD_LotesLOTE: TStringField;
    CD_LotesPENEIRA: TStringField;
    CD_LotesID_DEPTO: TIntegerField;
    CD_LotesMARCA: TStringField;
    CD_LotesCATEGORIA: TIntegerField;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    SQLDataSet1: TSQLDataSet;
    RLLabel7: TRLLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RLSystemInfo1: TRLSystemInfo;
    CD_LotesESTOQUE: TSingleField;
    CD_LotesPRECO_CUSTO: TFMTBCDField;
    CD_LotesPRECO_VENDA: TFMTBCDField;
    RLLabel9: TRLLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzRadioGroup2: TRzRadioGroup;
    CheckBox3: TCheckBox;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    CD_LotesVENCIMENTO: TDateField;
    CD_LotesSTATUS: TSmallintField;
    CheckBox4: TCheckBox;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    CD_LotesFABRICACAO: TDateField;
    RLLabel12: TRLLabel;
    RLLabel6: TRLLabel;
    Procedure CarregarCombobox;
    Procedure Filtro;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_LOTE: TFrm_Rel_LOTE;

implementation

{$R *.dfm}

uses UDM;

Function SFloat(const S: string): Extended;
begin
  if not TextToFloat(PChar(S), Result, fvExtended) then
  Result := 0.0;
{    ConvertErrorFmt(SInvalidFloat, [S]);}
end;

procedure TFrm_Rel_LOTE.Button1Click(Sender: TObject);
begin
Filtro;

if CheckBox1.Checked = FALSE then
   BEGIN
   RLDBText5.Visible:=FALSE;
   RLLabel4.Visible:=FALSE
   END
   ELSE
   BEGIN
   RLDBText5.Visible:=TRUE;
   RLLabel4.Visible:=TRUE;
   END;


if CheckBox2.Checked = FALSE then
   BEGIN
   RLDBText6.Visible:=FALSE;
   RLLabel5.Visible:=FALSE
   END
   ELSE
   BEGIN
   RLDBText6.Visible:=TRUE;
   RLLabel5.Visible:=TRUE;
   END;


 if CheckBox3.Checked = TRUE then
    BEGIN
      RLDBText4.Visible:=TRUE;
      RLLabel10.Visible:=TRUE;
    END
    ELSE
    BEGIN
      RLDBText4.Visible:=FALSE;
      RLLabel10.Visible:=FALSE;
    END;


     if CheckBox4.Checked = TRUE then
    BEGIN
      RLDBText7.Visible:=TRUE;
      RLLabel11.Visible:=TRUE;
    END
    ELSE
    BEGIN
      RLDBText7.Visible:=FALSE;
      RLLabel11.Visible:=FALSE;
    END;


    RLReport1.PreviewModal;



end;

procedure TFrm_Rel_LOTE.CarregarCombobox;
var
sql :TSQLDataSet;
begin
      sql:=TSQLDataSet.Create(self);
      sql.SQLConnection:=dm.SQLConnection1;

      sql.CommandText:='select ID_CATEGORIA, DESCRICAO from categorias';
      sql.Open;

      sql.First;

      while not sql.Eof do
         begin
         RzComboBox1.Values.Add(SQL.FieldByName('ID_CATEGORIA').AsString);
         RzComboBox1.Items.Add(sql.FieldByName('DESCRICAO').AsString);
         sql.next;
         end;


      sql.close;
      sql.CommandText:='select NOME from LABORATORIOS';
      sql.Open;

      sql.First;
      while not sql.Eof do
         begin

         RzComboBox2.Items.Add(sql.FieldByName('NOME').AsString);
         sql.next;
         end;


      sql.close;
      sql.CommandText:='select ID_DEPTO, DESCRICAO from DEPARTAMENTOS';
      sql.Open;
            RzComboBox3.Items.Add('TODOS DEPTO');
      RzComboBox3.Values.Add(' ');
      sql.First;
      while not sql.Eof do
         begin
         RzComboBox3.ValueS.Add(' AND id_depto ='+sql.FieldByName('ID_DEPTO').AsString);
         RzComboBox3.Items.Add( sql.FieldByName('DESCRICAO').AsString);
         sql.next;
         end;

      sql.Free;

      RzComboBox1.ItemIndex:=0;
      RzComboBox2.ItemIndex:=0;
      RzComboBox3.ItemIndex:=0;
end;



procedure TFrm_Rel_LOTE.Filtro;
var
status,vencimento : string;
begin
   //


   case RzRadioGroup2.ItemIndex of
    0: status:=' and status =1  ';
    1: status:=' and status =9  ';
    2: status:=' ';

   end;

   if ((length(RzDateTimeEdit2.Text)+length(RzDateTimeEdit1.Text)))=20 then
   begin
      vencimento := ' VENCIMENTO >=:i and VENCIMENTO <=:F ';

   end
   else
     vencimento := ' VENCIMENTO >=(current_date-10000) and (VENCIMENTO <=current_date) ';

 // ShowMessage(FloatToStr(length(RzDateTimeEdit2.Text)+length(RzDateTimeEdit1.Text)));

       cd_lotes.CLOSE;
       cd_lotes.CommandText:='select * from Rel_Lote where  '+vencimento+status+
                             ' '+RzComboBox3.Value;





     if RzComboBox1.ItemIndex<>0 then
        cd_lotes.CommandText:= cd_lotes.CommandText+' and categoria = '+RzComboBox1.Value;


     if RzComboBox2.ItemIndex<>0 then
        begin
         cd_lotes.CommandText:=cd_lotes.CommandText+' and Marca ='''+RzComboBox2.Text+'''';

        end;

     if RzRadioGroup1.ItemIndex = 0 then
        cd_lotes.CommandText:=cd_lotes.CommandText+' and estoque <=0'

        else
      if RzRadioGroup1.ItemIndex = 1 then
           cd_lotes.CommandText:=cd_lotes.CommandText+' and estoque >0 ';



         cd_lotes.CommandText:=cd_lotes.CommandText+' order by id_produto';




      if ((length(RzDateTimeEdit2.Text)+length(RzDateTimeEdit1.Text)))=20 then
           begin
              cd_lotes.Params[0].AsDate:=RzDateTimeEdit1.Date;
              cd_lotes.Params[1].AsDate:=RzDateTimeEdit2.Date;
           end;


   //    ShowMessage(cd_lotes.CommandText);
       CD_Lotes.Open;


end;

procedure TFrm_Rel_LOTE.FormShow(Sender: TObject);
begin
   CarregarCombobox;
   RzDateTimeEdit1.Date:=DATE-30;
   RzDateTimeEdit2.Date:=DATE;
end;

procedure TFrm_Rel_LOTE.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var st : string;
begin
    SQLDataSet1.Close;
    SQLDataSet1.CommandText:='SELECT SUM(ESTOQUE) FROM produto_lotes  WHERE ID_PRODUTO =:E ';
    case RzRadioGroup2.ItemIndex of
    0: st :=' and (produto_lotes.status =9)';
    1: st :=' and (produto_lotes.status =1)';
    2: st :=' ';
    end;

    SQLDataSet1.Params[0].AsInteger:=CD_LotesID_PRODUTO.AsInteger;




    SQLDataSet1.Open;





    RLLabel7.Caption:='TOTAL EM ESTOQUE '+FloatToStrF(SQLDataSet1.FieldByName('SUM').AsFloat,ffNumber,15,2);
end;

procedure TFrm_Rel_LOTE.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   RLLabel9.Caption:=FloatToStrf(SFloat(FloatToStr(CD_LotesESTOQUE.AsFloat)),ffNumber,15,2);

end;

procedure TFrm_Rel_LOTE.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   //RLLabel14.Caption:=FloatToStrf(SFloat(FloatToStr(CD_LotesESTOQUE.AsFloat)),ffNumber,15,2);
end;

procedure TFrm_Rel_LOTE.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLABEL12.Caption:='CATEGORIA:'+RzComboBox1.Text+'   MARCA:'+RzComboBox2.Text+
                   '  DEPARTAMENTO:'+RzComboBox3.Text+' PERIODO DE'+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
end;

end.
