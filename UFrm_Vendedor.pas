unit UFrm_Vendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, RzCmboBx, Data.SqlExpr, Vcl.Buttons;

type
  TFrm_Vendedor = class(TForm)
    RzPanel1: TRzPanel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Vendedor: TFrm_Vendedor;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_GradeCom_Esp;

procedure TFrm_Vendedor.Button1Click(Sender: TObject);
begin
if DM.CD_Funcionarios.RecordCount<>0 then
   begin
   Frm_GradeCom_Esp.CD_Rel_CadComicao_Esp.Close;
   Frm_GradeCom_Esp.CD_Rel_CadComicao_Esp.CommandText:='';
   Frm_GradeCom_Esp.CD_Rel_CadComicao_Esp.Close;


   end;
end;

procedure TFrm_Vendedor.DBGrid1DblClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Vendedor.Edit1Change(Sender: TObject);
begin
DM.CD_Funcionarios.Close;
DM.CD_Funcionarios.CommandText:='SELECT ID_FUNCIONARIO, NOME FROM FUNCIONARIOS WHERE NOME LIKE :N AND  status =1 and tipo = 3';
DM.CD_Funcionarios.Params[0].AsString:='%'+Edit1.Text+'%';
DM.CD_Funcionarios.Open;
end;

procedure TFrm_Vendedor.FormShow(Sender: TObject);
var
Alimenta : TSQLQUERY;
begin
   alimenta:=TSQLQuery.Create(self);

   alimenta.SQLConnection:=dm.SQLConnection1;




   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select id_especie, descricao from ESPECIE_PGTO ');
   ALIMENTA.Open;


    

end;

end.
