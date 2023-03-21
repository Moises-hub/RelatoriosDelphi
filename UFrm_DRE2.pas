unit UFrm_DRE2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RLReport,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFrm_DRE2 = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    RzComboBox3: TRzComboBox;
    Label4: TLabel;
    DSCD_Resumo: TDataSource;
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
    cd_resumo: TFDQuery;
    cd_resumoTIPO: TIntegerField;
    cd_resumoDESCRICAO: TStringField;
    cd_resumoVALOR: TSingleField;
    cd_resumoID: TIntegerField;
    SQLQuery1: TFDQuery;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    FDStoredProc1: TFDStoredProc;
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
  Frm_DRE2: TFrm_DRE2;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_DRE2.Button1Click(Sender: TObject);

begin
if Length(RzDateTimeEdit1.Text)=0 then

RzDateTimeEdit1.Text:='01'+'/'+FormatDateTime('mm"/"yyyy',now);

if Length(RzDateTimeEdit2.Text)=0 then
RzDateTimeEdit2.Date:=now;

FDStoredProc1.StoredProcName:='DRE_2';
FDStoredProc1.Params[0].AsDate:=RzDateTimeEdit1.Date;
FDStoredProc1.Params[1].AsDate:=RzDateTimeEdit2.Date;
FDStoredProc1.Params[2].AsInteger:=StrToInt(RzComboBox3.Value);

DM.FDConnection1.StartTransaction;
FDStoredProc1.ExecProc;
DM.FDConnection1.Commit;
if RadioGroup1.ItemIndex=0 then
begin
   CD_Resumo.Close;
CD_RESUMO.sql.Text:='SELECT * FROM RESUMO3 where tipo <>0';
CD_RESUMO.Open;
CD_Resumo.Refresh
end
else
begin

CD_Resumo.Close;
CD_RESUMO.sql.Text:='SELECT * FROM RESUMO3';
CD_RESUMO.Open;
CD_Resumo.Refresh;
end;
RLReport1.PreviewModal;

end;

procedure TFrm_DRE2.FormCreate(Sender: TObject);
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


          SQLQuery1.Close;
          SQLQuery1.SQL.Clear;
          sqlquery1.SQL.Add('select ID_CENTRO, descricao from CENTRO_CUSTOS');
          SQLQUERY1.Open;
          RzComboBox1.Items.Clear;
          RzComboBox1.Values.Clear;

          SQLQuery1.First;
          while NOT SQLQuery1.Eof do
             BEGIN
             RzComboBox1.Items.Add(SQLQuery1.FieldByName('DESCRICAO').AsString);
             RzComboBox1.Values.Add(SQLQuery1.FieldByName('ID_CENTRO').AsString);
             SQLQuery1.Next;
             END;


             RzComboBox3.ItemIndex:=0;
end;

procedure TFrm_DRE2.FormShow(Sender: TObject);
begin
RzDateTimeEdit1.Text:='01'+'/'+FormatDateTime('mm"/"yyyy',now);
RzDateTimeEdit2.Date:=now;
RadioGroup1.ItemIndex:=1;


end;

procedure TFrm_DRE2.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
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

procedure TFrm_DRE2.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
RLLabel1.Caption:=RzComboBox3.Text+' - Período de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
end;

end.
