unit UFrm_Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Configuracao = class(TForm)
    Tab_Config: TFDTable;
    Tab_ConfigID: TIntegerField;
    Tab_ConfigVERSAO: TStringField;
    Tab_ConfigDATA_ATUALIZACAO: TSQLTimeStampField;
    Tab_ConfigLOGIN_POR_EMPRESA: TIntegerField;
    DS_Tab_Config: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Configuracao: TFrm_Configuracao;

implementation

{$R *.dfm}

uses UDM;

end.
