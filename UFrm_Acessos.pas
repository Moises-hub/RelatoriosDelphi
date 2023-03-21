unit UFrm_Acessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBckgnd,
  Vcl.ExtCtrls, RzPanel, RLReport, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, Vcl.CheckLst, Vcl.DBCtrls, RzDBCmbo, Vcl.Buttons, RzLabel;

type
  TFrm_Acessos = class(TForm)
    RzPanel1: TRzPanel;
    Image1: TImage;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    CheckListBox1: TCheckListBox;
    DataSet: TSQLDataSet;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    RzPanel4: TRzPanel;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Acessos: TFrm_Acessos;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_Grupos_de_Acessos;

procedure TFrm_Acessos.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Acessos.Button1Click(Sender: TObject);
var
i : integer;
busca : TSQLDataSet;
begin
Frm_Grupos_de_Acessos:=TFrm_Grupos_de_Acessos.Create(self);
Frm_grupos_de_acessos.ShowModal;
if (Frm_grupos_de_acessos.CD_Grupos.active=true) and (Frm_grupos_de_acessos.CD_Grupos.RecordCount<>0)  then
   begin
                  edit1.Text:=Frm_grupos_de_acessos.CD_GruposID_GRUPO.AsString;
                  edit2.Text:=Frm_grupos_de_acessos.CD_GruposDESCRICAO.AsString;
                  Frm_grupos_de_acessos.Destroy;

                  busca:=TSQLDataSet.Create(self);
                  busca.SQLConnection:=dm.SQLConnection1;
                  DataSet.Close;
                  DataSet.CommandText:='SELECT * FROM MODULOS WHERE ID_MODULO >= 4500 AND  ID_MODULO <= 6000 order by  ID_MODULO ';
                  dataset.Open;
                  i:=0;
                  dataset.First;
                  CheckListBox1.Items.Clear;
                  while not dataset.eof do
                    begin
                        CheckListBox1.Items.Add(DataSet.FieldByName('id_MODULO').AsString+' - '+DataSet.FieldByName('DESCRICAO').AsString);
                        busca.Close;
                        busca.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo ='+DataSet.FieldByName('id_MODULO').AsString+' and id_grupo ='+Edit1.Text;
                        busca.Open;

                        if busca.FieldByName('count').AsInteger<>0  then
                            CheckListBox1.Checked[i]:=true;

                         i:=i+1;

                         dataset.Next;

                    end;

                    busca.Destroy;
   end;


end;

procedure TFrm_Acessos.Button2Click(Sender: TObject);
var
i : integer;
busca : TSQLDataSet;
begin
if Edit1.Text<>'' then
  begin

        busca:=TSQLDataSet.Create(self);
        busca.SQLConnection:=dm.SQLConnection1;
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin


              if CheckListBox1.Checked[i]=true then
                 begin
                    busca.Close;
                    busca.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo ='+Copy(CheckListBox1.Items.Strings[i],1,4)+' and id_grupo ='+Edit1.Text;
                    busca.Open;
                    if busca.FieldByName('count').AsInteger=0 then
                      begin

                            busca.Close;
                            busca.CommandText:='INSERT INTO acessos (id_modulo, id_grupo) values('+Copy(CheckListBox1.Items.Strings[i],1,4)+', '+Edit1.Text+')';
                            busca.ExecSQL();
                      end;
                 end
                 else
                 if CheckListBox1.Checked[i]=false then
                 begin
                            busca.Close;
                            busca.CommandText:='delete from acessos where id_modulo ='+Copy(CheckListBox1.Items.Strings[i],1,4)+' and id_grupo ='+Edit1.Text;
                            busca.ExecSQL();
                 end;




            end;


                              ShowMessage('Alterações Salva Com Sucesso!');
  end;


end;

procedure TFrm_Acessos.CheckBox1Click(Sender: TObject);
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
