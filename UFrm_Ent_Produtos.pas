unit UFrm_Ent_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Ent_Produtos = class(TForm)
    RzComboBox3: TRzComboBox;
    Button2: TButton;
    Button1: TButton;
    Memo1: TMemo;
    RzBitBtn1: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ent_Produtos: TFrm_Ent_Produtos;

implementation

{$R *.dfm}

uses UDM, UFrm_Entrega_2;

procedure TFrm_Ent_Produtos.Button1Click(Sender: TObject);
begin
Memo1.Lines.Clear;
end;

procedure TFrm_Ent_Produtos.Button2Click(Sender: TObject);
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

procedure TFrm_Ent_Produtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
i : integer;
begin
 if Memo1.Lines.Count<>0 then
 begin
     Frm_Entrega_2.Memo9.Lines.Clear;
      Frm_Entrega_2.Memo9.Lines.Add(' and (');
      Frm_Entrega_2.Memo9.Lines.Add('( RELATORIO_CARGAS_PEDIDOS.produto  ='''+RzComboBox3.Text+''') ');



      if Memo1.Lines.Count>1 then
      begin

              for i := 0 to Memo1.Lines.Count -1 do

                Frm_Entrega_2.Memo9.Lines.Add(' OR (RELATORIO_CARGAS_PEDIDOS.produto ='''+ Memo1.Lines[i]+''')');




       Frm_Entrega_2.Memo9.Lines.Add(')');
      end
      else
       Frm_Entrega_2.Memo9.Lines.Add(')');
       Frm_Entrega_2.Memo8.Lines.Text:=Memo1.Lines.Text;
 end
 else
 begin
   Frm_Entrega_2.Memo9.Lines.clear;
   Frm_Entrega_2.Memo8.Lines.clear;
 end;

end;

procedure TFrm_Ent_Produtos.FormShow(Sender: TObject);
var
produto : TFDQuery;
uf : TStringList;
begin
     uf :=TStringList.Create;


     produto :=TFDQuery.Create(nil);
     produto.Connection := dm.FDConnection1;
     produto.SQL.Text:='select distinct(RELATORIO_CARGAS_PEDIDOS.produto) '+
                       'from RELATORIO_CARGAS_PEDIDOS ' +
                       'where RELATORIO_CARGAS_PEDIDOS.produto is not null '+
                      Frm_Entrega_2.Memo5.Text+' order by produto';
     produto.Open();



         RzComboBox3.Items.Clear;
         RzComboBox3.Values.Clear;

     produto.First;
     while not produto.Eof do
       begin
         RzComboBox3.Items.Add(produto.FieldByName('produto').Text);
         produto.Next;

       end;

end;

end.
