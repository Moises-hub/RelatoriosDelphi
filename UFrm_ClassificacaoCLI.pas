unit UFrm_ClassificacaoCLI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Cobranca, Vcl.StdCtrls, RzCmboBx;

type
  TFrm_ClassificacaoCLI = class(TForm)
    RzComboBox1: TRzComboBox;
    Memo1: TMemo;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ClassificacaoCLI: TFrm_ClassificacaoCLI;

implementation

{$R *.dfm}

procedure TFrm_ClassificacaoCLI.Button1Click(Sender: TObject);
begin
 Frm_Cobranca.Memo2.lines.Clear;
 Frm_Cobranca.Memo1.lines.Clear;
Memo1.lines.Clear;
end;

procedure TFrm_ClassificacaoCLI.Button2Click(Sender: TObject);
begin
if Memo1.Lines.Count<=11 then
begin
  Memo1.Lines.Add(RzComboBox1.Text);

if Frm_Cobranca.Memo2.Lines.Count=0 then
   Frm_Cobranca.Memo2.lines.Add(' and (CLASSIFICACAO <>'+RzComboBox1.value+')')
   ELSE
   Frm_Cobranca.Memo2.lines.Add(' AND (CLASSIFICACAO <>'+RzComboBox1.value+')');
end;

Frm_Cobranca.Memo1.Text:=Memo1.text;
end;

end.
