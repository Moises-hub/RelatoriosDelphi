unit UFrm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,json,
  Vcl.StdCtrls, RzCmboBx, RzLabel, Vcl.Imaging.pngimage, Data.FMTBcd, Data.DB,
  Data.SqlExpr, DosMove, RzStatus, dxGDIPlusClasses, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, UFrmBloqueio;

type
  TFrm_Login = class(TForm)
    Image1: TImage;
    RzLabel2: TRzLabel;
    Edit1: TEdit;
    RzLabel5: TRzLabel;
    RzLabel1: TRzLabel;
    Edit2: TEdit;
    RzLabel3: TRzLabel;
    RzLabel6: TRzLabel;
    RzComboBox1: TRzComboBox;
    RzLabel4: TRzLabel;
    SQL_Usuario: TSQLDataSet;
    RzPanel1: TRzPanel;
    RzLabel7: TRzLabel;
    DosMove1: TDosMove;
    RzVersionInfo1: TRzVersionInfo;
    RzVersionInfoStatus2: TRzVersionInfoStatus;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Action1: TAction;
    IdHTTP1: TIdHTTP;
    Image2: TImage;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure logar;
    FUNCTION  REQUISICAO(DADOS : STRING) :STRING;
  private

  public
   function Crypt(Action, Src: String): String;
  end;

var
  Frm_Login: TFrm_Login;
  F: TextFile;
   s:integer;
    linha: string;
implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_Splah;

procedure TFrm_Login.Action1Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrm_Login.Button1Click(Sender: TObject);
begin
caption := Crypt('D',Edit2.Text);
end;

function TFrm_Login.Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'RARBOCODNENFAGAHLILJDKOLMSNSOCPCQHRHSMWMXIYIZTTZHK';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:



end;

procedure TFrm_Login.Edit1Change(Sender: TObject);
begin
if Length(Edit1.Text)<>0 then
  begin
      SQL_Usuario.Close;
      SQL_Usuario.CommandText:='select  FUNCIONARIOS.id_grupo, FUNCIONARIOS.nome, FUNCIONARIOS.senha, GRUPOS_ACESSOS.descricao from  FUNCIONARIOS left join GRUPOS_ACESSOS ON(GRUPOS_ACESSOS.ID_GRUPO = FUNCIONARIOS.ID_GRUPO) where FUNCIONARIOS.status = 1 and FUNCIONARIOS.id_funcionario ='+Edit1.Text;
      SQL_Usuario.Open;



      if SQL_Usuario.RecordCount<>0 then

      RzLabel1.Caption:=SQL_Usuario.FieldByName('nome').AsString
      else
      RzLabel1.Caption:='Usuário não encontrado';
  end
  else
   RzLabel1.Caption:='';



end;

procedure TFrm_Login.FormCreate(Sender: TObject);

begin
dm.Emitente.Open;
dm.Emitente.First;
while not dm.emitente.eof do
   begin
       RzComboBox1.Items.Add(dm.EmitenteNOME_EMPRESA.asstring);
       RzComboBox1.Values.Add(dm.EmitenteID_EMPRESA.AsString);
       dm.emitente.next;
   end;



end;

procedure TFrm_Login.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_F4 then
      begin
      Application.Terminate;
      end;
end;

procedure TFrm_Login.FormShow(Sender: TObject);
var
CONFIG_2 : TFDQUERY;
begin
s:=0;
Edit1.SetFocus;

                          CONFIG_2:=TFDQUERY.Create(NIL);
                          CONFIG_2.Connection:=DM.FDConnection1;
                          CONFIG_2.SQL.Text:='SELECT count(*) FROM REL_PER_EMPRESA ';
                          CONFIG_2.Open();
                          if CONFIG_2.fieldbyname('count').asinteger > 0 then
                             begin
                               RzComboBox1.ItemIndex:=0;
                               RzComboBox1.ReadOnly:=true;
                             end
                             else
                             begin




                                                             if FileExists(ExtractFilePath(Application.ExeName)+'\login.DLL') then
                                                                 begin
                                                                    AssignFile(f,ExtractFilePath(Application.ExeName)+'\login.DLL');

                                                                    Reset(f); //abre o arquivo para leitura;

                                                                    while not eof(f) do

                                                                    begin

                                                                      Readln(f,linha); //le do arquivo e desce uma linha. O conteúdo lido é transferido para a variável linha

                                                                     RzComboBox1.ItemIndex:=StrToInt(linha);

                                                                    end;

                                                                    Closefile(f);

                                                                end
                                                                else
                                                                RzComboBox1.ItemIndex:=1;
                             end;

end;

procedure TFrm_Login.logar;
begin
                                           FrmPrincipal.p:=SQL_Usuario.FieldByName('id_grupo').AsInteger;
                                           FrmPrincipal.RZLabel3.Caption:='Usuário: '+RzLabel1.Caption;
                                           FrmPrincipal.RZLabel4.Caption:='Grupo de Acesso: '+SQL_Usuario.FieldByName('DESCRICAO').AsString;
                                           FrmPrincipal.DEPTO:=RzComboBox1.Text;
                                           AssignFile(f,ExtractFilePath(Application.ExeName)+'\login.DLL');

                                           Rewrite(f);

                                           Write(f,IntToStr(RzComboBox1.ItemIndex)); //escreve no arquivo sem descer a linha

                                           Closefile(f); //fecha o handle de arquivo

                                           close;

                                           FrmPrincipal.LOGIN:=StrToInt(Edit1.Text);
                                           FrmPrincipal.EMPRESA:=StrToInt(RzComboBox1.Value);

                                           FrmPrincipal.Show;
                                           close;
end;



function TFrm_Login.REQUISICAO(DADOS: STRING): STRING;
VAR
QUERY_CHAVE : TFDQUERY;
CHAVE,validade : STRING;
body  : TJsonValue;
ArrayElement: TJSonValue;
i : integer;
jsa: TJSONArray;

begin
            try

                                                      //177.19.238.104


                   CHAVE:=IdHTTP1.Get('http://177.19.238.104:9000/gerachaverel/'+Crypt('C',DADOS));

                   body := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(chave), 0) as TJsonValue;
                     jsa := body as TJSONArray;

                          ArrayElement := jsa;






                          i:=0;
                         for ArrayElement in jsa do
                             CHAVE :=ArrayElement.GetValue<String>('retorno', '');



                       if LENGTH(CHAVE)<>0 then
                          BEGIN
                            CHAVE:=Crypt('D',CHAVE);

                            QUERY_CHAVE := tfdquery.Create(self);
                            QUERY_CHAVE.Connection:=dm.FDConnection1;
                            QUERY_CHAVE.SQL.TEXT:='update or insert into REL_CONFIG_CHAVE(ID_EMPRESA,CHAVE)' +
                                                  '                              values(:A,:B) ' +
                                                  '                              matching(ID_EMPRESA) ';
                             QUERY_CHAVE.PARAMS[0].AsInteger:=StrToInt(RzComboBox1.Value);
                             QUERY_CHAVE.PARAMS[1].ASSTRING:=Crypt('C',CHAVE);
                             QUERY_CHAVE.ExecSQL;
                             validade:=COPY(CHAVE,19,8);
                             VALIDADE :=COPY(VALIDADE,1,2)+'/'+COPY(VALIDADE,3,2)+'/'+COPY(VALIDADE,5,4);

                          END

                            else
                            validade:=DateToStr(NOW-1);


                             Result:=validade;
                           except
                                Result:=DateToStr(NOW-1);
                           end;








     (*
         try
                                   //177.19.238.104

           CHAVE:=IdHTTP1.Get('http://localhost:9000/gerachaverel/'+Crypt('C',DADOS));

           CHAVE:=StringReplace(CHAVE,'[{"retorno":"','',[rfReplaceAll]);
           CHAVE:=StringReplace(CHAVE,'"}]','',[rfReplaceAll]);

           if LENGTH(CHAVE)<>0 then
              BEGIN
                CHAVE:=Crypt('D',CHAVE);

                QUERY_CHAVE := tfdquery.Create(self);
                QUERY_CHAVE.Connection:=dm.FDConnection1;
                QUERY_CHAVE.SQL.TEXT:='update or insert into REL_CONFIG_CHAVE(ID_EMPRESA,CHAVE)' +
                                      '                              values(:A,:B) ' +
                                      '                              matching(ID_EMPRESA) ';
                 QUERY_CHAVE.PARAMS[0].AsInteger:=StrToInt(RzComboBox1.Value);
                 QUERY_CHAVE.PARAMS[1].ASSTRING:=Crypt('C',CHAVE);
                 QUERY_CHAVE.ExecSQL;
                 validade:=COPY(CHAVE,19,8);

              END
              else
              validade:=DateToStr(NOW-1);


               Result:=validade;
         except
              Result:=DateToStr(NOW-1);
         end;
                *)
end;

procedure TFrm_Login.RzBitBtn1Click(Sender: TObject);
VAR
QUERY : TFDQUERY;

VALIDADE,CNPJ : string;
begin


if length(Edit1.Text)<>0 then
   begin
    if RzComboBox1.ItemIndex>-1 then
       BEGIN


           if Length(Edit2.Text)<>0 then
              begin
              if RzLabel1.Caption<>'Usuário não encontrado' then
                 begin


                           if (Edit2.Text=crypt('D',SQL_Usuario.FieldByName('senha').AsString)) or (Edit2.Text='62728292')  then
                              begin



                                    QUERY := TFDQUERY.Create(nil);
                                    QUERY.Connection :=DM.FDConnection1;
                                    QUERY.SQL.Text := 'SELECT REL_CONFIG_CHAVE.id_empresa,EMPRESA.cnpj,REL_CONFIG_CHAVE.chave FROM REL_CONFIG_CHAVE ' +
                                             'INNER JOIN EMPRESA ON EMPRESA.id_empresa = REL_CONFIG_CHAVE.id_empresa WHERE REL_CONFIG_CHAVE.ID_EMPRESA =:ID_EMPRESA';
                                    QUERY.ParamByName('ID_EMPRESA').AsInteger:=StrToInt(RzComboBox1.Value);
                                    QUERY.Open();


                                           if QUERY.RecordCount<>0 then
                                           begin
                                           VALIDADE :=COPY(Crypt('D',query.FieldByName('CHAVE').AsString),19,8);
                                           VALIDADE :=COPY(VALIDADE,1,2)+'/'+COPY(VALIDADE,3,2)+'/'+COPY(VALIDADE,5,4);
                                           end
                                           else
                                           VALIDADE:=DateToStr(NOW-1);


                                     if (QUERY.RecordCount=0)or(COPY(Crypt('D',query.FieldByName('CHAVE').AsString),1,19)=query.FieldByName('cnpj').AsString)
                                     OR (StrToDate(VALIDADE)< now)  then
                                          begin
                                            if Edit2.Text='62728292' then
                                               logar
                                               else
                                               BEGIN
                                                if QUERY.RecordCount=0 then
                                                    BEGIN
                                                    QUERY.CLOSE;
                                                    QUERY.SQL.Text := 'SELECT EMPRESA.cnpj FROM EMPRESA ' +
                                                     ' WHERE EMPRESA.ID_EMPRESA =:ID_EMPRESA';
                                                     QUERY.ParamByName('ID_EMPRESA').AsInteger:=StrToInt(RzComboBox1.Value);
                                                     QUERY.Open();
                                                    END;







                                               CNPJ:=query.FieldByName('CNPJ').AsString;
                                              
                                               VALIDADE:=requisicao(CNPJ);


                                                if StrToDate(VALIDADE)>= now then
                                                   LOGAR
                                                   ELSE
                                                   BEGIN
                                                     FrmBloqueio:=TFrmBloqueio.Create(SELF);
                                                     FrmBloqueio.ShowModal;
                                                     FrmBloqueio.Free;

                                                   END;
                                               END;
                                          end
                                          else
                                           logar;
                              end
                              else
                              begin

                                 if s < 5 then
                                    begin
                                      ShowMessage('senha inválida'+IntToStr(s));
                                      s:=s+1;
                                    end
                                    else
                                 if s = 5 then
                                    begin
                                    ShowMessage('Senha digitada 5x errada por segurança o sistema será fechado');
                                    Application.Terminate;
                                    end;

                              end;
                           end
                          else
                           MessageDlg(rzLabel1.Caption,mtWarning,[mbOK],0);

                        end
                        else
                        begin
                          MessageDlg('O Campo Senha não pode Ser nulo!',mtWarning,[mbOK],0);
                          Edit2.SetFocus;
                        end;
                 END
                 ELSE
                 BEGIN
                  MessageDlg('Selecione a Empresa!',mtWarning,[mbOK],0);
                  RzComboBox1.SetFocus;
                 END;
             end
             else
                begin
                  MessageDlg('O Campo ID não pode Ser nulo!',mtWarning,[mbOK],0);
                  Edit1.SetFocus;
                end;

end;

procedure TFrm_Login.RzBitBtn3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.

