unit UFrm_Grupos_de_Acessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TFrm_Grupos_de_Acessos = class(TForm)
    Dataset: TSQLDataSet;
    Prov_Grupo: TDataSetProvider;
    CD_Grupos: TClientDataSet;
    DS_CD_Grupos: TDataSource;
    CD_GruposID_GRUPO: TIntegerField;
    CD_GruposDESCRICAO: TStringField;
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Grupos_de_Acessos: TFrm_Grupos_de_Acessos;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Grupos_de_Acessos.DBGrid1DblClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Grupos_de_Acessos.Edit1Change(Sender: TObject);
begin
CD_Grupos.Close;
cd_grupos.CommandText:='select * from GRUPOS_ACESSOS where DESCRICAO like :r';
CD_Grupos.Params[0].AsString:='%'+Edit1.Text+'%';
CD_Grupos.Open;
end;

end.
