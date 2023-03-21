unit UFrm_UF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton;

type
  TFrm_UF = class(TForm)
    RzComboBox3: TRzComboBox;
    Button2: TButton;
    Button1: TButton;
    Memo1: TMemo;
    RzBitBtn1: TRzBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_UF: TFrm_UF;

implementation

{$R *.dfm}

uses UFrm_Entrega_2;

procedure TFrm_UF.Button1Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TFrm_UF.Button2Click(Sender: TObject);
begin
    Memo1.Lines.Add(RzComboBox3.Text);






end;

procedure TFrm_UF.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : integer;
begin
 if Memo1.Lines.Count<>0 then
 begin
     Frm_Entrega_2.Memo2.Lines.Clear;
    Frm_Entrega_2.Memo2.Lines.Add(' and (');
      Frm_Entrega_2.Memo2.Lines.Add('(UF='''+RzComboBox3.Text+''')');

      if Memo1.Lines.Count>1 then
      begin

              for i := 0 to Memo1.Lines.Count -1 do

                Frm_Entrega_2.Memo2.Lines.Add(' OR (UF='''+ Memo1.Lines[i]+''')');




       Frm_Entrega_2.Memo2.Lines.Add(')');
      end
      else
       Frm_Entrega_2.Memo2.Lines.Add(')');
 end
 else
  Frm_Entrega_2.Memo2.Lines.Clear;



  Frm_Entrega_2.Memo1.lines.Text:=Memo1.Lines.Text;

end;

procedure TFrm_UF.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
