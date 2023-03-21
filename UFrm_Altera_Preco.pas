unit UFrm_Altera_Preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  RzButton, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Alterar_Preco = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FDQuery1: TFDQuery;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Alterar_Preco: TFrm_Alterar_Preco;

implementation

{$R *.dfm}

uses UDM, UFrmRel_R, UFrmPrincipal;

function GetComputerNameFunc : string;
var ipbuffer : string;
      nsize : dword;
begin
   nsize := 255;
   SetLength(ipbuffer,nsize);
   if GetComputerName(pchar(ipbuffer),nsize) then
      result := ipbuffer;
end;

procedure TFrm_Alterar_Preco.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#13,#44,#8]) then
key:=#0;
end;

procedure TFrm_Alterar_Preco.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#13,#44,#8]) then
key:=#0;
end;

procedure TFrm_Alterar_Preco.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#13,#44,#8]) then
key:=#0;
end;

procedure TFrm_Alterar_Preco.RzBitBtn1Click(Sender: TObject);
VAR
QUERY : TFDQuery;

begin
   if length(Edit1.Text)=0 then
      begin
        MessageDlg('Preço de Custo não pode ser nulo!',mtWarning,[mbOK],0);
        Edit1.SetFocus;
      end
      else
   if length(Edit2.Text)=0 then
      begin
        MessageDlg('Preço Minímo não pode ser nulo!',mtWarning,[mbOK],0);
        Edit2.SetFocus;
      end
      else
         if length(Edit3.Text)=0 then
      begin
        MessageDlg('Preço de Tabela não pode ser nulo!',mtWarning,[mbOK],0);
        Edit3.SetFocus;
      end
      else

         if StrToFloat(Edit1.Text)>=StrToFloat(Edit3.Text) then
           begin
              MessageDlg('Preço de Custo não pode ser Maior ou Igual ao Preço de Tabela!',mtWarning,[mbOK],0);
              Edit1.SetFocus;
           end
      else


      begin

           try
              QUERY:=TFDQuery.Create(NIL);
              QUERY.Connection:=DM.FDConnection1;
              QUERY.SQL.Text:='update produto_precos ' +
                              'set preco_custo =:a,preco_minimo =:b,preco_tabela =:c,data_update = current_timestamp ' +
                              'where id_produto =:d';



              QUERY.Params[0].AsFloat:=StrToFloat(Edit1.Text);
              QUERY.Params[1].AsFloat:=StrToFloat(Edit2.Text);
              QUERY.Params[2].AsFloat:=StrToFloat(Edit3.Text);
              QUERY.Params[3].AsInteger:=FrmRel_R.FDQuery1ID_PRODUTO.AsInteger;
              QUERY.ExecSQL;
              ShowMessage('Preço atualizado com sucesso');

              QUERY.SQL.Text:='INSERT into log(id_log,id_user,data,hora,PROCESSO,computador,id_chave,tabela,DADOS)' +
                             '             values((select gen_id(gen_log,1)from rdb$database), ' +
                             '                     :A, ' +
                             '                     current_date, ' +
                             '                     current_time, ' +
                             '                     3, ' +
                             '                     :B, ' +
                             '                     :C, ' +
                             '                     ''PRODUTO_PRECOS'', '+
                             '                     ''Alteração de Preço no Relatório de Alteração de Preços'') ';

              QUERY.Params[0].AsInteger:=FrmPrincipal.LOGIN;
              QUERY.Params[1].AsString:=copy(GetComputerNameFunc,1,50);
              QUERY.Params[2].AsINTEGER:=FrmRel_R.FDQuery1ID_PRODUTO.ASINTEGER;
              QUERY.ExecSQL;

              FrmRel_R.FDQuery1.Refresh;
              QUERY.FREE;
              close;
           except
             on E:Exception do
                MessageDlg('Ocorreu um erro ao atualizar o preço ,ERRO: '+e.Message,mtWarning,[mbOK],0);

           end;
      end;
end;

procedure TFrm_Alterar_Preco.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

end.
