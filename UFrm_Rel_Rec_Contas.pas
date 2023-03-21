unit UFrm_Rel_Rec_Contas;

interface

uses System.Math,  JPEG, ClipBrd,  INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzRadGrp,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, RLReport, ACBrBase,
  ACBrExtenso, RLRichText, Vcl.DBCtrls;

type
  TFrm_Rel_Rec_Contas = class(TForm)
    Contas: TSQLDataSet;
    Prov_Contas: TDataSetProvider;
    Cli_Contas: TClientDataSet;
    DS_Contas: TDataSource;
    ACBrExtenso1: TACBrExtenso;
    Empresa: TSQLDataSet;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzRadioGroup1: TRzRadioGroup;
    Button1: TButton;
    DBGrid1: TDBGrid;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    Shape2: TShape;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText12: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText2: TRLDBText;
    RLImage1: TRLImage;
    RLMemo1: TRLMemo;
    RLDBText1: TRLDBText;
    RLLabel18: TRLLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Memo1: TMemo;
    CD_Empresa: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    CD_EmpresaID_EMPRESA: TIntegerField;
    CD_EmpresaTIPO_ATIVIDADE: TSmallintField;
    CD_EmpresaNOME_EMPRESA: TStringField;
    CD_EmpresaRAZAO_SOCIAL: TStringField;
    CD_EmpresaENDERECO: TStringField;
    CD_EmpresaBAIRRO: TStringField;
    CD_EmpresaCOMPLEMENTO: TStringField;
    CD_EmpresaID_REGIAO: TFMTBCDField;
    CD_EmpresaCNPJ: TStringField;
    CD_EmpresaCEP: TStringField;
    CD_EmpresaEMAIL: TStringField;
    CD_EmpresaWEB: TStringField;
    CD_EmpresaFONE1: TStringField;
    CD_EmpresaFONE2: TStringField;
    CD_EmpresaFAX: TStringField;
    CD_EmpresaPRACA: TStringField;
    CD_EmpresaLOGOTIPO: TBlobField;
    CD_EmpresaCHAVE1: TStringField;
    CD_EmpresaCHAVE2: TStringField;
    CD_EmpresaIE: TStringField;
    CD_EmpresaTIPO_DOC: TSmallintField;
    CD_EmpresaSMTP_ENDERECO: TStringField;
    CD_EmpresaSMTP_USUARIO: TStringField;
    CD_EmpresaSMTP_SENHA: TStringField;
    CD_EmpresaRESPONSAVEL: TStringField;
    CD_EmpresaSUBSTITUTO: TSmallintField;
    CD_EmpresaCONTRIB_IPI: TSmallintField;
    CD_EmpresaTIPO_MF: TSmallintField;
    CD_EmpresaSMTP_PORTA: TIntegerField;
    CD_EmpresaREG_TRIBUTARIO: TSmallintField;
    CD_EmpresaNUMERO: TStringField;
    CD_EmpresaIM: TStringField;
    CD_EmpresaSMTP_SSL: TSmallintField;
    CD_EmpresaCODE: TStringField;
    Cli_ContasID_CLIENTE: TFMTBCDField;
    Cli_ContasNOME: TStringField;
    Cli_ContasEMISSAO: TDateField;
    Cli_ContasVENCIMENTO: TDateField;
    Cli_ContasPARCELA: TStringField;
    Cli_ContasNDOC: TStringField;
    Cli_ContasVALOR: TFMTBCDField;
    Cli_ContasMULTA: TSingleField;
    Cli_ContasJUROS: TSingleField;
    Shape1: TShape;
    DataSource1: TDataSource;
    procedure filtrar;
    procedure Button1Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ObtemImagemDoBanco(var imgDestino: TRLImage);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   var
     juros : TSQLDataSet;
  end;

var
  Frm_Rel_Rec_Contas: TFrm_Rel_Rec_Contas;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;


procedure TFrm_Rel_Rec_Contas.ObtemImagemDoBanco(var imgDestino: TRLImage);
  Var
     jpgImg: TJPEGImage;
     stMem: TMemoryStream;
begin
  If (CD_EmpresaLOGOTIPO.IsNull) or (CD_EmpresaLOGOTIPO.ASSTRING = '') Then
     Begin
        imgDestino.Picture := Nil;
        Exit;
     end;

  jpgImg := TJPEGImage.Create;
  stMem := TMemoryStream.Create;
  Try
    CD_EmpresaLOGOTIPO.SaveToStream( stMem );
    stMem.Position := 0;
    jpgImg.LoadFromStream( stMem );
    imgDestino.Picture.Assign( jpgImg );
  Finally
    stMem.Free;
    jpgImg.Free;
  End;
end;

procedure TFrm_Rel_Rec_Contas.Button1Click(Sender: TObject);
begin
      filtrar;

end;



procedure TFrm_Rel_Rec_Contas.filtrar;
VAR
INI : TINIFILE;
begin

     INI:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\recibo.ini');
     ini.WriteString('recibo','campo1',Edit1.Text);
     ini.WriteString('recibo','campo2',Edit3.Text);
     ini.WriteString('recibo','campo3',Edit2.Text);
     ini.WriteString('recibo','campo4',Edit4.Text);
     ini.WriteString('recibo','campo5',Edit5.Text);
     ini.WriteString('recibo','campo6',Edit6.Text);
     INI.WriteString('recibo','campo7',Memo1.text);
     ini.Free;



     //dm.Emitente.Open;
    if RzRadioGroup1.ItemIndex = 0 then
       begin
       cli_contas.Close;
       cli_contas.CommandText:='select * from rel_rec_contas where ((vencimento >=:i) and (vencimento <=:f)) order by nome, vencimento';
       cli_contas.Params[0].AsDate:=RzDateTimeEdit1.Date;
       cli_contas.Params[1].AsDate:=RzDateTimeEdit2.Date;
       Cli_Contas.Open;



       end
       else
    if RzRadioGroup1.ItemIndex = 1 then
       begin
       cli_contas.Close;
       cli_contas.CommandText:='select * from rel_rec_contas where ((emissao >=:i) and (emissao <=:f)) order by nome, emissao';
       cli_contas.Params[0].AsDate:=RzDateTimeEdit1.Date;
       cli_contas.Params[1].AsDate:=RzDateTimeEdit2.Date;
       Cli_Contas.Open;



       end;
       RLReport1.PreviewModal;





end;

procedure TFrm_Rel_Rec_Contas.FormShow(Sender: TObject);
var
ini : Tinifile;
begin


    cd_empresa.Close;
    cd_empresa.Params[0].AsInteger:=FrmPrincipal.EMPRESA;
    cd_empresa.Open;

    if FileExists(ExtractFilePath(Application.ExeName)+'\recibo.ini') then
     begin
     INI:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\recibo.ini');
     Edit1.Text:= ini.ReadString('recibo','campo1','');
     Edit3.Text:=ini.ReadString('recibo','campo2','');
     Edit2.Text:=ini.ReadString('recibo','campo3','');
     Edit4.Text:=ini.ReadString('recibo','campo4','');
     Edit5.Text:=ini.ReadString('recibo','campo5','');
     Edit6.Text:=ini.ReadString('recibo','campo6','');
     Memo1.Lines.Clear;
     Memo1.Lines.Add(ini.ReadString('recibo','campo7',''));
     ini.Free;
     end;




end;

procedure TFrm_Rel_Rec_Contas.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  VAR
  TEXTOREC : TStringList;
begin
//RLRichText1.lines.CLEAR;

RLLabel1.Caption:=Edit1.Text;
RLLabel2.Caption:=Edit3.Text;
RLLabel3.Caption:=Edit2.Text;
RLLabel4.Caption:=Edit4.Text;
RLLabel5.Caption:=Edit5.Text;
RLLabel6.Caption:=Edit6.Text;



TEXTOREC:=TStringList.Create;
TEXTOREC.Clear;
TEXTOREC.Add(Memo1.Text);

RLMemo1.Lines:=TEXTOREC;
RLLabel18.Caption:=FormatDateTime('mm"/"yyyy',now);


ObtemImagemDoBanco(RLImage1);

end;

end.
