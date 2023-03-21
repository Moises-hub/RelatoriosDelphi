unit UFrm_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzButton, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrm_Cidades = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    cidade: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel3: TPanel;
    RzBitBtn1: TRzBitBtn;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cidades: TFrm_Cidades;

implementation

{$R *.dfm}

uses UDM, UFrm_Entrega_2;

procedure TFrm_Cidades.Button1Click(Sender: TObject);
begin
Memo1.Clear;

end;

procedure TFrm_Cidades.Button2Click(Sender: TObject);
var
  s: String;
  i1, i2,i: Integer;
begin      (*
  i2 := -1;
  s := Memo1.Lines.Text;
  i1 := Pos(LowerCase(RzComboBox3.Text), LowerCase(s));
  if i1 = 0 then
  begin
  Memo1.Lines.Add(RzComboBox3.Text);
  end;   *)



   for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          cidade.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
        i2 := -1;
            s := Memo1.Lines.Text;
            i1 := Pos(LowerCase(cidade.FieldByName('REGIAO').AsString), LowerCase(s));
            if i1 = 0 then
            begin
               Memo1.Lines.Add(cidade.FieldByName('REGIAO').AsString)
            end;
        end;
















end;

procedure TFrm_Cidades.Edit1Change(Sender: TObject);
begin
     cidade.SQL.Text:='select distinct(regioes.cidade)regiao from clientes_enderecos' +
                      ' left join regioes on regioes.id_regiao = clientes_enderecos.id_regiao '+
                      ' where clientes_enderecos.id_regiao is not null and regioes.cidade like :f'+
                      Frm_Entrega_2.Memo2.Text+' order by cidade';
     cidade.Params[0].AsString := '%'+Edit1.Text+'%';
     cidade.Open();
     if CIDADE.RecordCount <> 0 then
        DBGrid1.SelectedRows.CurrentRowSelected:=true;

end;

procedure TFrm_Cidades.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : integer;
begin
 if Memo1.Lines.Count<>0 then
 begin
     Frm_Entrega_2.Memo5.Lines.Clear;
      Frm_Entrega_2.Memo5.Lines.Add(' and (');
      Frm_Entrega_2.Memo5.Lines.Add('( RELATORIO_CARGAS_PEDIDOS.cidade  ='''+cidade.FieldByName('REGIAO').AsString+''') ');

      if Memo1.Lines.Count>1 then
      begin

              for i := 0 to Memo1.Lines.Count -1 do

                Frm_Entrega_2.Memo5.Lines.Add(' OR (RELATORIO_CARGAS_PEDIDOS.cidade ='''+ Memo1.Lines[i]+''')');




       Frm_Entrega_2.Memo5.Lines.Add(')');
      end
      else
       Frm_Entrega_2.Memo5.Lines.Add(')');
       Frm_Entrega_2.Memo4.Lines.Text:=Memo1.Lines.Text;
 end
 else
 begin
   Frm_Entrega_2.Memo5.Lines.clear;
   Frm_Entrega_2.Memo4.Lines.clear;
 end;
end;

procedure TFrm_Cidades.FormShow(Sender: TObject);
begin
Edit1Change(sender);

end;

end.
