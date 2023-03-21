unit UFrmNatOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel;

type
  TFrmNatOperacao = class(TForm)
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    DataSource1: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNatOperacao: TFrmNatOperacao;

implementation

{$R *.dfm}

uses UfrmRel;

procedure TFrmNatOperacao.Button1Click(Sender: TObject);
begin

if Form1.Memo2.Lines.Count=0 then
   Form1.Memo2.TEXT:='(NOTA_FISCAL.ID_NATUREZA ='''+Form1.Query_Nat.FieldByName('ID_NATUREZA').Text+''''+')'
   ELSE
   Form1.Memo2.TEXT:=Form1.Memo2.TEXT+' or (NOTA_FISCAL.ID_NATUREZA ='''+Form1.Query_Nat.FieldByName('ID_NATUREZA').Text+''''+')';






if Form1.Memo1.Lines.Count=0 then
   Form1.Memo1.Lines.Add(Form1.Query_Nat.FieldByName('DESCRICAO').Text)
   ELSE
   Form1.Memo1.lines.Add(form1.Query_Nat.FieldByName('DESCRICAO').Text);


 if Form1.Memo3.Lines.Count=0 then
   Form1.Memo3.Lines.Add(Form1.Query_Nat.FieldByName('CODIGO_FISCAL').Text)
   ELSE
   Form1.Memo3.lines.Add(form1.Query_Nat.FieldByName('CODIGO_FISCAL').Text);



end;

procedure TFrmNatOperacao.Edit1Change(Sender: TObject);
begin
Form1.Query_Nat.Close;
form1.Query_Nat.SQL.Clear;
form1.Query_Nat.SQL.add('select * from NATUREZA_OPERACAO');
if RadioGroup1.ItemIndex=0 then
   begin
   if Length(Edit1.Text)<>0 then
      form1.Query_Nat.SQL.add('where codigo_fiscal ='+Edit1.Text)
   end
    else
     form1.Query_Nat.SQL.add('where DESCRICAO LIKE'''+'%'+Edit1.Text+'%'+'''');


Form1.Query_Nat.Open;



end;

procedure TFrmNatOperacao.FormShow(Sender: TObject);
begin
Form1.Query_Nat.Open;
end;

end.
