unit UFrm_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel;

type
  TFrm_Usuario = class(TForm)
    RzPanel1: TRzPanel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Query_Funcionario: TFDQuery;
    Query_FuncionarioNOME: TStringField;
    Query_FuncionarioID_FUNCIONARIO: TIntegerField;
    DS_Query_Funcionario: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Usuario: TFrm_Usuario;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Usuario.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Usuario.Edit1Change(Sender: TObject);
begin

          if length(Edit1.Text)<>0 then
           begin
            Query_Funcionario.Close;
            Query_Funcionario.SQL.Text:='select funcionarios.nome,' +
                                        '       funcionarios.id_funcionario ' +
                                        '       from funcionarios ' +
                                        '       where funcionarios.status = 1 and nome like :a ';
            Query_Funcionario.params[0].AsString:=edit1.Text+'%';
            Query_Funcionario.Open();
           end
           else
           begin
            Query_Funcionario.Close;
            Query_Funcionario.SQL.Text:='select funcionarios.nome,' +
                                        '       funcionarios.id_funcionario ' +
                                        '       from funcionarios ' +
                                        '       where funcionarios.status = 1';
            Query_Funcionario.Open();
           end;
end;

end.
