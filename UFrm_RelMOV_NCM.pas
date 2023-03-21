unit UFrm_RelMOV_NCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzLabel, RzCmboBx, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, RzDBCmbo, DosMove;

type
  TFrm_RelMOV_NCM = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel5: TRzLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzLabel4: TRzLabel;
    RzLabel1: TRzLabel;
    Button1: TButton;
    Query_MOVNCM: TFDQuery;
    Edit1: TEdit;
    DS_Query_MOVNCM: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand6: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    Label1: TLabel;
    RLBand4: TRLBand;
    DosMove1: TDosMove;
    Memo1: TMemo;
    Query_Soma: TFDQuery;
    DataSource1: TDataSource;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    Query_MOVNCMNCM: TStringField;
    Query_MOVNCMDESCRICAO: TStringField;
    Query_MOVNCMQ_VENDIDA: TBCDField;
    Query_MOVNCMV_VENDIDO: TBCDField;
    Query_SomaTOTALVENDIDO: TBCDField;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    Query_MOVNCMV_LIQUIDO: TBCDField;
    Query_SomaTOTALLIQUIDO: TFloatField;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    Query_SomaQNTVENDIDA: TBCDField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelMOV_NCM: TFrm_RelMOV_NCM;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelMOV_NCM.Button1Click(Sender: TObject);
VAR
NCM,TIPO : STRING;
total : tfdquery;
begin
   Query_MOVNCM.Close;
if length(Edit1.Text)=0 then
   begin
      query_movNCM.SQL.Text:='select MOV_NCM.ncm,' +
                             '       MOV_NCM.descricao, ' +
                             '       cast(SUM(MOV_NCM.q_vendida)as DECIMAL(15,2)) AS Q_vendida , ' +
                             '       cast(sum(MOV_NCM.v_vendido) as currency) as v_vendido, ' +
                             '       cast(sum(MOV_NCM.v_liquido) as currency) as V_LIQUIDO '+
                             '       from MOV_NCM ' +
                             'where cast(MOV_NCM.data as date) >=:i and cast(MOV_NCM.data as date) <=:j ' +
                             'group by  MOV_NCM.ncm, MOV_NCM.descricao';

      query_movNCM.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
      query_movNCM.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
      NCM := '';


     Query_Soma.Close;
     Query_Soma.SQL.Text:='select sum(cast(q_vendida as DECIMAL(15,2)))as qntvendida,' +
                          '              sum(v_vendido)as totalvendido,  '+
                          '              sum(V_LIQUIDO)as totalLIQUIDO '+
                          ' from mov_ncm  ' +
                          'where ((cast(MOV_NCM.data as date) >=:e) and (cast(MOV_NCM.data as date) <=:i))';
      Query_Soma.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
      Query_Soma.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;


   end
   else
   begin
      query_movNCM.SQL.Text:='select MOV_NCM.ncm,' +
                             '       MOV_NCM.descricao, ' +
                             '       SUM(MOV_NCM.q_vendida) AS Q_vendida, ' +
                             '       sum(MOV_NCM.v_vendido) as v_vendido, ' +
                             '       sum(V_LIQUIDO)as totalLIQUIDO '+
                             '       from MOV_NCM ' +
                             'where cast(MOV_NCM.data as date) >=:i and cast(MOV_NCM.data as date) <=:j and MOV_NCM.ncm =:b ' +
                             'group by  MOV_NCM.ncm, MOV_NCM.descricao';
      query_movNCM.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
      query_movNCM.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
      query_movNCM.params[2].AsString:=Edit1.Text;
      NCM:='  NCM Nº '+Edit1.Text;

     Query_Soma.Close;
     Query_Soma.SQL.Text:='select sum(cast(q_vendida as DECIMAL(15,2)))as qntvendida,' +
                          '              sum(v_vendido)as totalvendido,  '+
                          '              sum(V_LIQUIDO)as totalLIQUIDO '+
                          ' from mov_ncm  ' +
                          'where ((cast(MOV_NCM.data as date) >=:e) and (cast(MOV_NCM.data as date) <=:i) and MOV_NCM.ncm =:b)';
     Query_Soma.params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
     Query_Soma.params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
     Query_Soma.params[2].AsString:=Edit1.Text;
     Query_Soma.Open();


   end;


    memo1.Lines.Text:=query_movNCM.sql.text;
   query_movNCM.open;
   Query_Soma.Open();

   RLLabel5.Caption:='Período '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;

RLReport1.PreviewModal;
end;

procedure TFrm_RelMOV_NCM.FormShow(Sender: TObject);
begin
         RzDateTimeEdit1.Date:=date-30;
         RzDateTimeEdit2.Date:=date;
end;

end.
