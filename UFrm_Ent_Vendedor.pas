unit UFrm_Ent_Vendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Ent_Vendedor = class(TForm)
    Memo1: TMemo;
    RzBitBtn1: TRzBitBtn;
    Button1: TButton;
    Button2: TButton;
    RzComboBox3: TRzComboBox;
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
  Frm_Ent_Vendedor: TFrm_Ent_Vendedor;

implementation

{$R *.dfm}

uses UDM, UFrm_Entrega_2;

procedure TFrm_Ent_Vendedor.Button1Click(Sender: TObject);
begin
Memo1.Lines.Clear;
end;

procedure TFrm_Ent_Vendedor.Button2Click(Sender: TObject);
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

procedure TFrm_Ent_Vendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
i : integer;
begin
 if Memo1.Lines.Count<>0 then
 begin
     Frm_Entrega_2.Memo11.Lines.Clear;
      Frm_Entrega_2.Memo11.Lines.Add(' and (');
      Frm_Entrega_2.Memo11.Lines.Add('( RELATORIO_CARGAS_PEDIDOS.cidade  ='''+RzComboBox3.text+''') ');

      if Memo1.Lines.Count>1 then
      begin

              for i := 0 to Memo1.Lines.Count -1 do

                Frm_Entrega_2.Memo11.Lines.Add(' OR (RELATORIO_CARGAS_PEDIDOS.cidade ='''+ Memo1.Lines[i]+''')');




       Frm_Entrega_2.Memo11.Lines.Add(')');
      end
      else
       Frm_Entrega_2.Memo11.Lines.Add(')');
       Frm_Entrega_2.Memo10.Lines.Text:=Memo1.Lines.Text;
 end
 else
 begin
   Frm_Entrega_2.Memo11.Lines.clear;
   Frm_Entrega_2.Memo10.Lines.clear;
 end;
end;

procedure TFrm_Ent_Vendedor.FormShow(Sender: TObject);
var
produto : TFDQuery;
uf : TStringList;
begin
     uf :=TStringList.Create;


     produto :=TFDQuery.Create(nil);
     produto.Connection := dm.FDConnection1;
     produto.SQL.Text:='select distinct(RELATORIO_CARGAS_PEDIDOS.vendedor) '+
                       'from RELATORIO_CARGAS_PEDIDOS ' +
                       'where RELATORIO_CARGAS_PEDIDOS.vendedor is not null '+
                      Frm_Entrega_2.Memo5.Text+' order by vendedor';
     produto.Open();



         RzComboBox3.Items.Clear;
         RzComboBox3.Values.Clear;

     produto.First;
     while not produto.Eof do
       begin
         RzComboBox3.Items.Add(produto.FieldByName('vendedor').Text);
         produto.Next;

       end;

end;

end.
