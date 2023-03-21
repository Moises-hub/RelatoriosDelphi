unit UFrm_Conf_DR2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, RzCmboBx, RzDBCmbo,
  RzButton;

type
  TFrm_Conf_DR2 = class(TForm)
    Tab_Dre: TFDTable;
    DS_Tab_DRE: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conf_DR2: TFrm_Conf_DR2;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_DRE_2_Plano;

procedure TFrm_Conf_DR2.FormShow(Sender: TObject);
var
dpto : tfdquery;
begin
           dpto :=TFDQuery.Create(nil);
           dpto.Connection:=dm.FDConnection1;
           dpto.SQL.Text:='select id_centro, descricao from CENTRO_CUSTOS';
           dpto.Open();

           RzComboBox1.Items.Clear;
           RzComboBox1.values.Clear;
           dpto.First;
           while not dpto.Eof do
             begin
               RzComboBox1.Items.Add(dpto.FieldByName('descricao').AsString);
               RzComboBox1.values.Add(dpto.FieldByName('id_centro').AsString);
               dpto.Next;
             end;
             dpto.free;


end;

procedure TFrm_Conf_DR2.RzBitBtn1Click(Sender: TObject);
begin
Frm_DRE_2_Plano:=TFrm_DRE_2_Plano.Create(self);
if RzComboBox3.Value = '1' then
   RzComboBox2.Value := '2'
   else
if RzComboBox3.Value = '2' then
   RzComboBox2.Value := '1';

Frm_DRE_2_Plano.ShowModal;
Frm_DRE_2_Plano.Free;
end;

end.
