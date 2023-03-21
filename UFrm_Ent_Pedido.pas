unit UFrm_Ent_Pedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzButton;

type
  TFrm_Ent_Pedido = class(TForm)
    RzComboBox3: TRzComboBox;
    Button2: TButton;
    Button1: TButton;
    Memo1: TMemo;
    RzBitBtn1: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ent_Pedido: TFrm_Ent_Pedido;

implementation

{$R *.dfm}

uses UDM, UFrm_Entrega_2;

procedure TFrm_Ent_Pedido.Button1Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TFrm_Ent_Pedido.Button2Click(Sender: TObject);
var
  s: String;
  i1, i2: Integer;
begin
  i2 := -1;
  s := Memo1.Lines.Text;
  i1 := Pos(LowerCase(RzComboBox3.Text), LowerCase(s));
  if i1 = 0 then
  begin
  Memo1.Lines.Add(RzComboBox3.Text);
  end;
end;

procedure TFrm_Ent_Pedido.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : integer;
begin
 if Memo1.Lines.Count<>0 then
 begin
     Frm_Entrega_2.Memo7.Lines.Clear;
      Frm_Entrega_2.Memo7.Lines.Add(' and (');
      Frm_Entrega_2.Memo7.Lines.Add('( RELATORIO_CARGAS_PEDIDOS.pedido  ='''+RzComboBox3.Text+''') ');

      if Memo1.Lines.Count>1 then
      begin

              for i := 0 to Memo1.Lines.Count -1 do

                Frm_Entrega_2.Memo7.Lines.Add(' OR (RELATORIO_CARGAS_PEDIDOS.pedido ='''+ Memo1.Lines[i]+''')');




       Frm_Entrega_2.Memo7.Lines.Add(')');
      end
      else
       Frm_Entrega_2.Memo7.Lines.Add(')');
       Frm_Entrega_2.Memo6.Lines.Text:=Memo1.Lines.Text;
 end
 else
 begin
   Frm_Entrega_2.Memo7.Lines.clear;
   Frm_Entrega_2.Memo6.Lines.clear;
 end;
end;

procedure TFrm_Ent_Pedido.FormShow(Sender: TObject);
var
pedidos : TFDQuery;
uf : TStringList;
begin
     uf :=TStringList.Create;


     pedidos :=TFDQuery.Create(nil);
     pedidos.Connection := dm.FDConnection1;
     pedidos.SQL.Text:='select distinct(RELATORIO_CARGAS_PEDIDOS.pedido) '+
                      'from RELATORIO_CARGAS_PEDIDOS ' +
                      'where RELATORIO_CARGAS_PEDIDOS.pedido is not null '+
                      Frm_Entrega_2.Memo5.Text;
     pedidos.Open();



         RzComboBox3.Items.Clear;
         RzComboBox3.Values.Clear;

     pedidos.First;
     while not pedidos.Eof do
       begin
         RzComboBox3.Items.Add(pedidos.FieldByName('pedido').Text);
         pedidos.Next;

       end;
end;

end.
