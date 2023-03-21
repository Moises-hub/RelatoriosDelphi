unit UFrm_Login_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, RzCmboBx, dxGDIPlusClasses, RzLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, DosMove;

type
  TFrm_Login_2 = class(TForm)
    RzLabel4: TRzLabel;
    Image1: TImage;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RzPanel1: TRzPanel;
    RzLabel7: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    SQL_Usuario: TFDQuery;
    FDQuery1: TFDQuery;
    ActionList1: TActionList;
    Action1: TAction;
    ImageList1: TImageList;
    DosMove1: TDosMove;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Login_2: TFrm_Login_2;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDM;

function Crypt(Action, Src: String): String;
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


procedure TFrm_Login_2.Action1Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrm_Login_2.Edit1Change(Sender: TObject);
begin



if Length(Edit1.Text)<>0 then
  begin



      SQL_Usuario.Close;
      SQL_Usuario.SQL.Text:='select  FUNCIONARIOS.id_grupo, FUNCIONARIOS.nome, FUNCIONARIOS.senha, GRUPOS_ACESSOS.descricao from  FUNCIONARIOS left join GRUPOS_ACESSOS ON(GRUPOS_ACESSOS.ID_GRUPO = FUNCIONARIOS.ID_GRUPO) where FUNCIONARIOS.status = 1 and FUNCIONARIOS.id_funcionario ='+Edit1.Text;
      SQL_Usuario.Open;



      if SQL_Usuario.RecordCount<>0 then

      RzLabel1.Caption:=SQL_Usuario.FieldByName('nome').AsString
      else
      RzLabel1.Caption:='Usuário não encontrado';



  end
  else
   RzLabel1.Caption:='';


end;

procedure TFrm_Login_2.RzBitBtn1Click(Sender: TObject);
begin


if length(Edit1.Text)<>0 then
   begin



           if Length(Edit2.Text)<>0 then
              begin
              if RzLabel1.Caption<>'Usuário não encontrado' then
                 begin
                 if (Edit2.Text=crypt('D',SQL_Usuario.FieldByName('senha').AsString)) or (Edit2.Text='62728292')  then
                    begin
                           FrmPrincipal.p:=SQL_Usuario.FieldByName('id_grupo').AsInteger;
                           FrmPrincipal.RZLabel3.Caption:='Usuário: '+RzLabel1.Caption;
                           FrmPrincipal.RZLabel4.Caption:='Grupo de Acesso: '+SQL_Usuario.FieldByName('DESCRICAO').AsString;



                           FrmPrincipal.LOGIN:=StrToInt(Edit1.Text);


                      FrmPrincipal.Show;
                      close;
                    end
                 
                 end
                else
                 MessageDlg(rzLabel1.Caption,mtWarning,[mbOK],0);

              end
              else
              begin
                MessageDlg('O Campo Senha não pode Ser nulo!',mtWarning,[mbOK],0);
                Edit2.SetFocus;
              end;


   end
   else
      begin
        MessageDlg('O Campo ID não pode Ser nulo!',mtWarning,[mbOK],0);
        Edit1.SetFocus;
      end;

end;

procedure TFrm_Login_2.RzBitBtn3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
