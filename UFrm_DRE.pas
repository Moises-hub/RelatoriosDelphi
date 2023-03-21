unit UFrm_DRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RLReport,
  Datasnap.DBClient, Datasnap.Provider;

type
  TFrm_DRE = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    RzComboBox3: TRzComboBox;
    Label4: TLabel;
    SQLQuery1: TSQLQuery;
    Proc_DRE: TSQLStoredProc;
    DS_Resumo: TSQLDataSet;
    Prov_Resumo: TDataSetProvider;
    CD_Resumo: TClientDataSet;
    DSCD_Resumo: TDataSource;
    CD_ResumoTIPO: TIntegerField;
    CD_ResumoDESCRICAO: TStringField;
    CD_ResumoVALOR: TSingleField;
    CD_ResumoID: TIntegerField;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RadioGroup1: TRadioGroup;
    RLLabel1: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DRE: TFrm_DRE;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_DRE.Button1Click(Sender: TObject);
begin



if Length(RzDateTimeEdit1.Text)=0 then

RzDateTimeEdit1.Text:='01'+'/'+FormatDateTime('mm"/"yyyy',now);

if Length(RzDateTimeEdit2.Text)=0 then
RzDateTimeEdit2.Date:=now;


Proc_DRE.Close;
Proc_DRE.Params[0].AsDate:=RzDateTimeEdit1.Date;
Proc_DRE.Params[1].AsDate:=RzDateTimeEdit2.Date;
Proc_DRE.Params[2].AsInteger:=StrToInt(RzComboBox3.Value);
Proc_DRE.ExecProc;

if RadioGroup1.ItemIndex=0 then
begin
   CD_Resumo.Close;
CD_RESUMO.CommandText:='SELECT * FROM RESUMO4 where tipo <>0';
CD_RESUMO.Open;
CD_Resumo.Refresh
end
else
begin

CD_Resumo.Close;
CD_RESUMO.CommandText:='SELECT * FROM RESUMO4';
CD_RESUMO.Open;
CD_Resumo.Refresh;
end;
RLReport1.PreviewModal;
RLReport1.Clear;
end;

procedure TFrm_DRE.FormCreate(Sender: TObject);
begin
   //ALIMENTAR DPTO
          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_DEPTO, descricao from DEPARTAMENTOS');
          SQLQUERY1.Open;
          RzComboBox3.Items.Clear;
          RzComboBox3.Values.Clear;

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox3.Items.Add(SQLQuery1.FieldByName('DESCRICAO').AsString);
             RzComboBox3.Values.Add(SQLQuery1.FieldByName('ID_DEPTO').AsString);
             SQLQuery1.Next;
             END;


             RzComboBox3.ItemIndex:=0;
end;

procedure TFrm_DRE.FormShow(Sender: TObject);
begin
RzDateTimeEdit1.Text:='01'+'/'+FormatDateTime('mm"/"yyyy',now);
RzDateTimeEdit2.Date:=now;
RadioGroup1.ItemIndex:=1;


end;

procedure TFrm_DRE.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if CD_ResumoVALOR.Value < 0 then

      RLDBText2.Font.Color:=CLRED
      ELSE
      RLDBText2.Font.Color:=clBLUE;

      if RadioGroup1.ItemIndex=1 then
        begin
        if CD_ResumoTIPO.AsInteger =1 then
           BEGIN
             RLBand1.Color:=clmenu;
              RLDBText1.Font.Style:=[fsBold];
              RLDBText2.Font.Style:=[fsBold];

           END
           ELSE


              BEGIN
              RLBand1.Color:=clWhite;
              RLDBText1.Font.Style:=[];
              RLDBText2.Font.Style:=[];

              END

        end
        else
        begin
        if  RLBand1.Color=clwhite then
             RLBand1.Color:=clmenu
             else
             RLBand1.Color:=clWhite;

              RLDBText1.Font.Style:=[fsBold];
              RLDBText2.Font.Style:=[fsBold];

          if CD_ResumoTIPO.AsInteger =3 then
                    BEGIN
                    RLBand1.Color:=clWhite;
                    RLDBText1.Font.Style:=[];
                    RLDBText2.Font.Style:=[];
                    RLDBText1.Font.Color:=clSilver;
                    RLDBText2.Font.Color:=clSilver;

                    END;

        end;


        if CD_ResumoDESCRICAO.AsString='(=) RESULTADO LIQUIDO DO EXERCICIO' then
           begin
              RLDBText1.Font.Style:=[fsBold];
              RLDBText2.Font.Style:=[fsBold];
              RLDBText1.Font.Size:=12;
              RLDBText2.Font.Size:=12;
           end
           else
           begin
              RLDBText1.Font.Size:=10;
              RLDBText2.Font.Size:=10;
           end;



end;

procedure TFrm_DRE.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
RLLabel1.Caption:=RzComboBox3.Text+' - Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
end;

end.
