unit UFrmBloqueio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Buttons, dxGDIPlusClasses;

type
  TFrmBloqueio = class(TForm)
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label1: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image2: TImage;
    RzGroupBox2: TRzGroupBox;
    BitBtn1: TBitBtn;
    Image3: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBloqueio: TFrmBloqueio;

implementation

{$R *.dfm}

procedure TFrmBloqueio.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrmBloqueio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFrmBloqueio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_f4 then
    abort;
end;

end.
