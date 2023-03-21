unit UFrm_Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider, Vcl.CheckLst, RzLabel,
  Vcl.Buttons, Vcl.Mask, RzEdit, RzDBEdit, Vcl.DBCtrls;

type
  TFrm_Funcionario = class(TForm)
    Proc: TSQLStoredProc;
    PROV_CAD_COMISSAO: TDataSetProvider;
    CD_CAD_COMISSAO: TClientDataSet;
    CD_CAD_COMISSAOID: TIntegerField;
    CD_CAD_COMISSAOVMIN: TFloatField;
    CD_CAD_COMISSAOVMAX: TFloatField;
    CD_CAD_COMISSAOPORCENTAGEM: TFMTBCDField;
    CD_CAD_COMISSAONOME: TStringField;
    CD_CAD_COMISSAOTIPO: TIntegerField;
    DS_CD_CAD_COMISSAO: TDataSource;
    DS_CAD_COMISSAO: TSQLDataSet;
    R_VERIFICA: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    VERIFICA: TClientDataSet;
    CheckListBox1: TCheckListBox;
    DataSet: TSQLDataSet;
    RzPanel1: TRzPanel;
    Image1: TImage;
    RzLabel2: TRzLabel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    RzPanel4: TRzPanel;
    BitBtn2: TBitBtn;
    Button2: TButton;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    var
    T:integer;
  end;

var
  Frm_Funcionario: TFrm_Funcionario;

implementation

{$R *.dfm}

uses UDM, UFrm_CadComissao, UFrmPrincipal, UFrm_Vendedor;

procedure TFrm_Funcionario.Button1Click(Sender: TObject);
var
busca : TSQLDataSet;
i:integer;
nometipo : string;
begin
     dm.CD_Funcionarios.Open;
     FRM_VENDEDOR:=TFrm_Vendedor.Create(SELF);
     FRM_VENDEDOR.ShowModal;


                  DataSet.Close;
                  DataSet.CommandText:='SELECT rel_cad_comicao.id, rel_cad_comicao.nome, REL_CAD_COMICAO.TIPO from rel_cad_comicao';
                  dataset.Open;
                  i:=0;
                  dataset.First;
                  CheckListBox1.Items.Clear;
                  busca:=TSQLDataSet.Create(self);
                  busca.SQLConnection:=dm.SQLConnection1;
                  while not dataset.eof do
                    begin


                        CheckListBox1.Items.Add(DataSet.FieldByName('id').AsString+' - '+DataSet.FieldByName('nome').AsString);
                        busca.Close;
                        busca.CommandText:='SELECT COUNT(*) FROM rel_comicao where id_funcionario ='+rzdbedit1.Text+' and id ='+DataSet.FieldByName('id').AsString;
                        busca.Open;

                        if busca.FieldByName('count').AsInteger<>0  then
                            CheckListBox1.Checked[i]:=true;

                         i:=i+1;

                         dataset.Next;

                    end;

                    busca.Destroy;























//ATÉ AQUI

       
{



 if dm.CD_Funcionarios.RecordCount<>0 then
 begin


	for i := 0 to DBGrid1.SelectedRows.Count - 1 do
	begin
      dm.CD_Funcionarios.GotoBookmark(pointer(DBGrid1.SelectedRows.Items[i]));
       VERIFICA.Close;
       VERIFICA.CommandText:='select ID_FUNCIONARIO from rel_comicao WHERE ID =:I AND ID_FUNCIONARIO =:F';
       if FrmPrincipal.tipo = 3 then
        VERIFICA.Params[0].AsInteger:=dm.CD_Rel_CadComicao_EspID.AsInteger
         else
       VERIFICA.Params[0].AsInteger:=dm.CD_CAD_COMISSAOID.AsInteger;
       VERIFICA.Params[1].AsInteger:=dm.CD_FuncionariosID_FUNCIONARIO.AsInteger;
      verifica.Open;
    if verifica.RecordCount<>0 then
        ELSE
        begin

          if FrmPrincipal.tipo = 3 then
             begin
              dm.CD_FunCom_Especie.Open;
              dm.CD_FunCom_Especie.Insert;

              dm.CD_FunCom_EspecieID.AsInteger:=dm.CD_Rel_CadComicao_EspID.AsInteger;
           //dm.CD_FunCom_EspecieVMIN.Value:= dm.CD_CAD_COMISSAOVMIN.Value;
           //   dm.CD_FunCom_Especiedm.CD_ComissaoVMAX.Value:= dm.CD_CAD_COMISSAOVMAX.Value;
              dm.CD_FunCom_EspeciePORCENTAGEM.AsFloat:= dm.CD_Rel_CadComicao_EspCOMISSAO.AsFloat;
              dm.cD_FunCom_EspecieNOME.AsString:=dm.CD_FuncionariosNOME.AsString;
              dm.CD_FunCom_EspecieID_FUNCIONARIO.AsString:=dm.CD_FuncionariosID_FUNCIONARIO.AsString;
              dm.CD_FunCom_EspecieTIPO.AsInteger:=3;
              dm.CD_FunCom_Especie.post;
              dm.CD_FunCom_Especie.ApplyUpdates(0);
             end

          else
          begin

          dm.CD_Comissao.open;
          dm.CD_Comissao.Insert;
          dm.CD_ComissaoID.AsInteger:=dm.CD_CAD_COMISSAOID.AsInteger;
          dm.CD_ComissaoVMIN.Value:= dm.CD_CAD_COMISSAOVMIN.Value;
          dm.CD_ComissaoVMAX.Value:= dm.CD_CAD_COMISSAOVMAX.Value;
          dm.CD_ComissaoPORCENTAGEM.Value:= dm.CD_CAD_COMISSAOPORCENTAGEM.Value;
          dm.CD_ComissaoNOME.AsString:=dm.CD_FuncionariosNOME.AsString;
          dm.CD_ComissaoID_FUNCIONARIO.AsString:=dm.CD_FuncionariosID_FUNCIONARIO.AsString;
          dm.CD_Comissao.post;
          dm.CD_Comissao.ApplyUpdates(0);
          end;
        end;

  end;
 end;          }



end;

procedure TFrm_Funcionario.Button2Click(Sender: TObject);
var
busca : TSQLDataSet;
i:integer;
func,min,max,porce :string;
begin



 busca:=TSQLDataSet.Create(self);
        busca.SQLConnection:=dm.SQLConnection1;
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin
               func:=StringReplace(Copy(CheckListBox1.Items.Strings[i],1,4),'-','',[rfReplaceAll]);
               func:=StringReplace(func,' ','',[rfReplaceAll]);

              if CheckListBox1.Checked[i]=true then
                 begin




                    busca.Close;
                    busca.CommandText:='SELECT COUNT(*) FROM rel_comicao where id_funcionario ='+rzdbEdit1.Text+' and id ='+func;
                    busca.Open;
                    if busca.FieldByName('count').AsInteger=0 then
                      begin

                           { memo1.Lines.Clear;
                            Memo1.Lines.Add('insert into rel_comicao(' +
                                            'id,id_funcionario,nome,tipo,vmin,vmax,porcentagem) ' +
                                            'values('+dataset.FieldByName('id').AsString+',' +
                                                    edit1.Text+','''+Edit2.Text+''','+
                                                    IntToStr(FrmPrincipal.tipo)+',' +
                                                    'coalesce('+dataset.FieldByName('vmin').AsString+',0), '+
                                                    'coalesce('+dataset.FieldByName('vmax').AsString+',0), '+
                                                    'coalesce('+dataset.FieldByName('porcentagem').AsString+',0))');    }

                                DataSet.Close;
                                DataSet.CommandText:='SELECT * from rel_cad_comicao where id ='+func;
                                dataset.Open;
                                if dataset.FieldByName('vmin').AsString='' then
                                   min:='0'
                                   else
                                    min:=dataset.FieldByName('vmin').AsString;
                                if dataset.FieldByName('vmax').AsString='' then
                                   max:='0'
                                   else
                                   max:=dataset.FieldByName('vmax').AsString;

                                 if dataset.FieldByName('porcentagem').AsString='' then
                                   porce:='0'
                                   else
                                   porce:=dataset.FieldByName('porcentagem').AsString;


                             busca.Close;
                             busca.CommandText:='insert into rel_comicao(' +
                                            'id,id_funcionario,nome,tipo) ' +
                                            'values('+dataset.FieldByName('id').AsString+',' +
                                                    rzdbedit1.Text+','''+rzdbEdit2.Text+''','+
                                                    IntToStr(FrmPrincipal.tipo)+')';


                              busca.ExecSQL();






                      end;
                 end
                 else
                 if CheckListBox1.Checked[i]=false then
                 begin
                            busca.Close;
                            busca.CommandText:='delete from rel_comicao where id_funcionario ='+rzdbedit1.Text+' and id ='+func;
                            busca.ExecSQL();
                 end;




            end;
                              ShowMessage('Alterações Salva Com Sucesso!');



end;

procedure TFrm_Funcionario.CheckBox1Click(Sender: TObject);
var
i : integer;
begin

for i := 0 to CheckListBox1.Items.Count - 1 do
    begin
      if CheckBox1.Checked = true then
         begin
         CheckListBox1.Checked[i]:=true;
         CheckBox1.Caption:='Desmarcar tudo';
         end
         else
         begin
         CheckListBox1.Checked[i]:=false;
         CheckBox1.Caption:='Selecionar Tudo';
         end;
    end;

end;

procedure TFrm_Funcionario.DBGrid1CellClick(Column: TColumn);
begin                    {
CD_CAD_COMISSAO.Close;
CD_CAD_COMISSAO.CommandText:='select * from rel_comicao WHERE ID_FUNCIONARIO ='+dm.CD_FuncionariosID_FUNCIONARIO.AsString +' and tipo ='+IntToStr(FrmPrincipal.tipo);
CD_CAD_COMISSAO.Open;   }
end;

procedure TFrm_Funcionario.Edit1Change(Sender: TObject);
begin  {
dm.CD_Funcionarios.Close;
dm.CD_Funcionarios.CommandText:='select id_funcionario, nome from funcionarios where nome like:r and status =1 and tipo = 3';
dm.CD_Funcionarios.Params[0].AsString:='%'+Edit1.Text+'%';
dm.CD_Funcionarios.Open;

if dm.CD_Funcionarios.RecordCount<>0 then
   begin
    CD_CAD_COMISSAO.Close;
    CD_CAD_COMISSAO.CommandText:='select * from rel_comicao WHERE ID_FUNCIONARIO ='+dm.CD_FuncionariosID_FUNCIONARIO.AsString +' and tipo ='+IntToStr(FrmPrincipal.tipo);
    CD_CAD_COMISSAO.Open;
   end; }
end;

procedure TFrm_Funcionario.FormShow(Sender: TObject);
begin
dm.CD_Funcionarios.Close;
end;

end.



