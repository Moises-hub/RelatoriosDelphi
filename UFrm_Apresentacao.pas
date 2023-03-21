unit UFrm_Apresentacao;

interface

uses SHELLAPI, INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  RzPrgres, Vcl.StdCtrls, RzLabel, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, RzStatus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Apresentacao = class(TForm)
    RzLabel2: TRzLabel;
    Button1: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    RzProgressBar1: TRzProgressBar;
    RzVersionInfo1: TRzVersionInfo;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    procedure Button1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
     procedure RodaScript(Script, Descricao : String);
    function WinExecAndWait32(FileName: String; Visibility: Integer): Integer;
  public
    { Public declarations }
  end;

var
  Frm_Apresentacao: TFrm_Apresentacao;

implementation

{$R *.dfm}
{$R E:\Delphi_Projetos\Relatorio\RES\SCRIPT.RES}

uses UDM;



function TFrm_Apresentacao.WinExecAndWait32(FileName: String; Visibility: Integer): Integer;
var
 zAppName:array[0..255] of char;
 zCurDir:array[0..255] of char;
 WorkDir:String;
 StartupInfo:TStartupInfo;
 ProcessInfo:TProcessInformation;
 Resultado: DWord;

begin

StrPCopy(zAppName,FileName);
GetDir(0,WorkDir);
StrPCopy(zCurDir,WorkDir);
FillChar(StartupInfo,Sizeof(StartupInfo),#0);
StartupInfo.cb := Sizeof(StartupInfo);

StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Visibility;

if not CreateProcess(nil,
 zAppName,                      { pointer to command line string }
 nil,                           { pointer to process security attributes}
 nil,                           { pointer to thread security attributes}
 false,                         { handle inheritance flag }
 CREATE_NEW_CONSOLE or          { creation flags }
 NORMAL_PRIORITY_CLASS,
 nil,                           { pointer to new environment block }
 nil,                           { pointer to current directory name }
 StartupInfo,                   { pointer to STARTUPINFO }
 ProcessInfo) then Result := -1 { pointer to PROCESS_INF }

else
begin
 WaitforSingleObject(ProcessInfo.hProcess,INFINITE);
 GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
 Result := Resultado;

end;

Application.ProcessMessages;
end;



procedure TFrm_Apresentacao.Action1Execute(Sender: TObject);
begin
Application.Terminate
end;

procedure TFrm_Apresentacao.Button1Click(Sender: TObject);

begin
   if FileExists( 'ibescript.exe') then
       BEGIN
       RodaScript('RELATORIO','');
       RodaScript('view','');
       RodaScript('procedure','');
       END
       ELSE
       BEGIN
         Application.MessageBox('Arquivo Script não disponível, favor verificar','Erro ao Atualizar os Scripts',MB_ICONERROR+MB_OK);
         Application.Terminate;
       END;

end;

procedure TFrm_Apresentacao.FormShow(Sender: TObject);
begin
RzVersionInfo1.FilePath:= Application.ExeName;
end;

procedure TFrm_Apresentacao.RodaScript(Script, Descricao : String);
var
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile : string;
  PathToSave : String;
  Res : TResourceStream;
  SCR, FB_User, FB_Pass,BD : String;

VERSAO : TFDQUERY;
VER : STRING;


begin


   RzLabel2.Caption := 'Rodando Script ' + Descricao;
   RzLabel2.Refresh;
   Update;



         BD :=dm.FDConnection1.Params.Values['DataBase'];
         FB_User := 'SYSDBA';
         FB_Pass := 'masterkey';


         PathToSave :=ExtractFilePath(Application.ExeName)+Script+'.sql';


  If not FileExists(PathToSave) Then
    Begin
      Res := TResourceStream.Create(Hinstance, Script, 'TEXT');
      Try
        Res.SavetoFile(PathToSave);
      Finally
        Res.Free;
      End;
    end;





          SCR := PathToSave + ' -D' + BD + ' -U' + FB_User + ' -P' + FB_Pass + ' -N -S -CWIN1252';


  WinExecAndWait32('ibescript.exe ' + SCR, 0);
  rzProgressBar1.Percent:=rzProgressBar1.Percent+1;
  RzLabel2.Refresh;
  Update;
  DeleteFile(PathToSave);

         VERSAO:=TFDQUERY.CREATE(NIL);
         VERSAO.Connection:=DM.FDConnection1;



         VERSAO.SQL.Text:='select count(*) from  rel_config';
         VERSAO.open;

         if versao.FieldByName('count').AsInteger = 0 then
         BEGIN

           VERSAO.CLOSE;
           VERSAO.SQL.Text:='insert into rel_config(id,versao,data_atualizacao) ' +
                            '                values(:A,:B,current_timestamp) ';

           VERSAO.Params[0].AsInteger:=1;
           VERSAO.Params[1].AsString:=RzVersionInfo1.FileVersion;
           VERSAO.ExecSQL;
         END
         ELSE
         BEGIN
         VERSAO.CLOSE;
         VERSAO.SQL.Text:='UPDATE rel_config ' +
                          'SET VERSAO = '''+RzVersionInfo1.FileVersion+''',DATA_ATUALIZACAO = current_timestamp';
         VERSAO.ExecSQL;
         END;



         VERSAO.Free;

         Frm_Apresentacao.close;

end;





end.
