unit UFrm_Splah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzStatus, Vcl.ExtCtrls, Vcl.DBCtrls,
  RzLabel, Vcl.Imaging.pngimage, Vcl.StdCtrls, RzPanel;

type
  TFrm_Splah = class(TForm)
    Image1: TImage;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzPanel3: TRzPanel;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    DBText1: TDBText;
    Label4: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    RzVersionInfoStatus2: TRzVersionInfoStatus;
    Timer1: TTimer;
    RzVersionInfo1: TRzVersionInfo;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Splah: TFrm_Splah;
  T : INTEGER;
implementation

{$R *.dfm}

uses UFrm_Login;

procedure TFrm_Splah.FormCreate(Sender: TObject);
begin
 Left := Round((Screen.Width - Width)/2);
  Top := Round((Screen.Height - Height)/6);

end;

procedure TFrm_Splah.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=vk_f4 then
    Application.Terminate;
end;

procedure TFrm_Splah.Timer1Timer(Sender: TObject);
begin
 T:=T+1;



  if T >= 5 then
    begin
    Label3.Caption:='Aguardando Autenticação...';
    Frm_Login:=TFrm_Login.Create(self);
    Timer1.Enabled:=false;

    Frm_Login.ShowModal;
     close;


    end;

end;

end.
