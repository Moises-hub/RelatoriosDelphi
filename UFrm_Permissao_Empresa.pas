unit UFrm_Permissao_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.CheckLst,
  RzLabel, Vcl.ExtCtrls, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Permissao_Empresa = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel2: TRzLabel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    RzPanel3: TRzPanel;
    CheckListBox1: TCheckListBox;
    RzPanel4: TRzPanel;
    BitBtn2: TBitBtn;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Permissao_Empresa: TFrm_Permissao_Empresa;

implementation

{$R *.dfm}

uses UDM, UFrm_Grupos_de_Acessos, UFrm_Usuario, UFrmPrincipal;

procedure TFrm_Permissao_Empresa.Button1Click(Sender: TObject);
var
i : integer;
busca,DATASET : TFDQuery;
begin
Frm_Usuario:=TFrm_Usuario.Create(self);
Frm_Usuario.ShowModal;
if (Frm_Usuario.Query_Funcionario.active=true) and (Frm_Usuario.Query_Funcionario.RecordCount<>0)  then
   begin
                  edit1.Text:=Frm_Usuario.Query_FuncionarioID_FUNCIONARIO.AsString;
                  edit2.Text:=Frm_Usuario.Query_FuncionarioNOME.AsString;
                  Frm_Usuario.Free;

                  busca:=TFDQuery.Create(self);
                  busca.Connection:=dm.FDConnection1;

                  DATASET:=TFDQuery.Create(self);
                  DATASET.Connection:=dm.FDConnection1;


                  DataSet.Close;
                  DataSet.SQL.Text:='SELECT centro_custos.id_centro,centro_custos.descricao FROM centro_custos order by centro_custos.id_centro';
                  dataset.Open;
                  i:=0;
                  dataset.First;
                  CheckListBox1.Items.Clear;
                  while not dataset.eof do
                    begin
                        CheckListBox1.Items.Add(DataSet.FieldByName('id_centro').AsString+' - '+DataSet.FieldByName('DESCRICAO').AsString);
                        busca.Close;
                        busca.SQL.Text:='SELECT COUNT(*) FROM rel_per_empresa where id_empresa ='+DataSet.FieldByName('id_centro').AsString+' and id_funcionario ='+Edit1.Text;
                        busca.Open;

                        if busca.FieldByName('count').AsInteger<>0  then
                            CheckListBox1.Checked[i]:=true;

                         i:=i+1;

                         dataset.Next;

                    end;

                    busca.Destroy;
   end;

end;

procedure TFrm_Permissao_Empresa.Button2Click(Sender: TObject);
var
i : integer;
busca : Tfdquery;
begin
if Edit1.Text<>'' then
  begin

        busca:=Tfdquery.Create(self);
        busca.Connection:=dm.FDConnection1;
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin


              if CheckListBox1.Checked[i]=true then
                 begin
                    busca.Close;
                    busca.sql.Text:='SELECT COUNT(*) FROM REL_PER_EMPRESA where id_empresa ='+Copy(CheckListBox1.Items.Strings[i],1,pos('-',CheckListBox1.Items.Strings[i])-1)+' and ID_FUNCIONARIO ='+Edit1.Text;

                    busca.Open;
                    if busca.FieldByName('count').AsInteger=0 then
                      begin

                            busca.Close;
                            busca.sql.Text:='INSERT INTO REL_PER_EMPRESA (id_empresa, id_funcionario) values('+Copy(CheckListBox1.Items.Strings[i],1,pos('-',CheckListBox1.Items.Strings[i])-1)+', '+Edit1.Text+')';
                            busca.ExecSQL();
                      end;
                 end
                 else
                 if CheckListBox1.Checked[i]=false then
                 begin
                            busca.Close;
                            busca.sql.Text:='delete from REL_PER_EMPRESA where id_empresa ='+Copy(CheckListBox1.Items.Strings[i],1,pos('-',CheckListBox1.Items.Strings[i])-1)+' and ID_FUNCIONARIO ='+Edit1.Text;
                            busca.ExecSQL();
                 end;




            end;


                              ShowMessage('Alterações Salva Com Sucesso!');
  end;



end;

procedure TFrm_Permissao_Empresa.CheckBox1Click(Sender: TObject);
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

end.
