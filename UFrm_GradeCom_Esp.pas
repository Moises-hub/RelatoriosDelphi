unit UFrm_GradeCom_Esp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzCmboBx, Vcl.ExtCtrls, RzPanel, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider;

type
  TFrm_GradeCom_Esp = class(TForm)
    RzPanel2: TRzPanel;
    Label2: TLabel;
    RzComboBox1: TRzComboBox;
    Button1: TButton;
    Button3: TButton;
    DBGrid2: TDBGrid;
    Prov_Rel_CadComicao_Esp: TDataSetProvider;
    CD_Rel_CadComicao_Esp: TClientDataSet;
    DS_Rel_CadComicao_Esp: TDataSource;
    Rel_CadComicao_Esp: TSQLDataSet;
    CD_Rel_CadComicao_EspID_ESPECIE: TIntegerField;
    CD_Rel_CadComicao_EspESPECIE: TStringField;
    CD_Rel_CadComicao_EspCOMISSAO: TFMTBCDField;
    RzPanel1: TRzPanel;
    Button4: TButton;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GradeCom_Esp: TFrm_GradeCom_Esp;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_CadCom_especie;

procedure TFrm_GradeCom_Esp.Button4Click(Sender: TObject);
begin
close;
end;


procedure TFrm_GradeCom_Esp.FormShow(Sender: TObject);
begin
CD_Rel_CadComicao_Esp.Open;
end;

end.
