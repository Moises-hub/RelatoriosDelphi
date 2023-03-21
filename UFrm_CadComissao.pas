unit UFrm_CadComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDBNav, System.ImageList, Vcl.ImgList,
  Vcl.DBCtrls, Vcl.ExtCtrls, RzPanel, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzCmboBx, RzDBCmbo, Vcl.Mask, Vcl.Buttons, RzLabel, RzDBLbl;

type
  TFrm_CadComissao = class(TForm)
    RzPanel2: TRzPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    RzPanel4: TRzPanel;
    Edit1: TEdit;
    RzDBLabel1: TRzDBLabel;
    Label1: TLabel;
    ImageList1: TImageList;
    RzPanel1: TRzPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    SpeedButton1: TSpeedButton;
    DBGrid2: TDBGrid;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    const
        InputBoxMsg = WM_USER + 123;
    var

    ir : integer;
  end;

var
  Frm_CadComissao: TFrm_CadComissao;

implementation

{$R *.dfm}

uses UDM, UFrm_RelComissao, UFrm_Funcionario, UFrm_Senha;

procedure TFrm_CadComissao.Button1Click(Sender: TObject);
begin

if (length(DBEdit1.Text)=0) then
    ShowMessage('Minimo não pode ser Nulo')
    else
    if (length(DBEdit2.Text)=0) then
       ShowMessage('Maximo não pode ser Nulo')
       else
    if (length(DBEdit3.Text)=0) then
        ShowMessage('Percentual não pode ser Nulo')
      else
      begin

       dm.CD_CAD_COMISSAO.edit;
       dm.CD_CAD_COMISSAO.Post;
        ir:=dm.CD_CAD_COMISSAOID.AsInteger;
       Frm_Funcionario:=TFrm_Funcionario.Create(self);
       Frm_Funcionario.T:=2;
       Frm_Funcionario.ShowModal;
      end;

end;

procedure TFrm_CadComissao.DBGrid2TitleClick(Column: TColumn);
begin
if (DM.CD_CAD_COMISSAO.IndexFieldNames<>column.FieldName) then
DM.CD_CAD_COMISSAO.IndexFieldNames:=column.FieldName
else
DM.CD_CAD_COMISSAO.IndexFieldNames:=column.fieldname;
end;

procedure TFrm_CadComissao.Edit1Change(Sender: TObject);
begin
DM.CD_Comissao.Locate('NOME',Edit1.Text,[loCaseInsensitive]);

end;






procedure TFrm_CadComissao.SpeedButton1Click(Sender: TObject);
var
  senha: string[8];
begin
 PostMessage(Handle, InputBoxMsg, 0, 0);
 senha:=inputbox('Digite a ID do Registro que Procura','Digite a ID:','');

if length(senha)<>0 then
   begin
   if  dm.CD_CAD_COMISSAO.Locate('ID',senha,[loCaseInsensitive]) then
       else
       ShowMessage('Registro não Encontrado');
   end;


end;

end.
