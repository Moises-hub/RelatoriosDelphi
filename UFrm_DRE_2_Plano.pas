unit UFrm_DRE_2_Plano;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzButton, Vcl.ExtCtrls;

type
  TFrm_DRE_2_Plano = class(TForm)
    CheckListBox1: TCheckListBox;
    Panel1: TPanel;
    RzButton1: TRzButton;
    procedure FormShow(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DRE_2_Plano: TFrm_DRE_2_Plano;

implementation

{$R *.dfm}

uses UDM, UFrm_Conf_DR2;

procedure TFrm_DRE_2_Plano.FormShow(Sender: TObject);
var
i : integer;
listar, dupli : Tfdquery;
begin





                  listar:=Tfdquery.Create(nil);
                  listar.Connection:=dm.FDConnection1;

                  dupli:=Tfdquery.Create(nil);
                  dupli.Connection:=dm.FDConnection1;


                  dupli.Close;
                  dupli.sql.Text:='select plano_contas.id_plano,plano_contas.classe||'' ''||plano_contas.descricao as plano from plano_contas' +
                                      ' where  not exists(select dre_2_plano.id_plano from dre_2_plano where dre_2_plano.id_plano = plano_contas.id_plano ' +
                                      ' and dre_2_plano.id_depto =:d and dre_2_plano.dre <>:r and dre_2_plano.tipo <>:t)';


                  dupli.Params[0].AsInteger:=StrToInt(Frm_Conf_DR2.RzComboBox1.Value);
                  dupli.Params[1].AsInteger:=StrToInt(Frm_Conf_DR2.RzComboBox3.Value);
                  dupli.Params[2].AsInteger:=StrToInt(Frm_Conf_DR2.RzComboBox2.Value);
                 // ShowMessage(dupli.sql.Text);
                  dupli.Open;
                  i:=0;
                  dupli.First;
                  CheckListBox1.Items.Clear;
                  while not dupli.eof do
                    begin
                        CheckListBox1.Items.Add(dupli.FieldByName('id_plano').AsString+' - '+StringReplace(dupli.FieldByName('plano').AsString,'-',' ',[rfReplaceAll]));
                        listar.Close;
                        listar.sql.Text:='SELECT COUNT(*) FROM dre_2_plano where id_plano ='+dupli.FieldByName('id_plano').AsString+
                                       ' and ID_DEPTO ='+Frm_Conf_DR2.RzComboBox1.Value+' and dre_2_plano.dre ='+Frm_Conf_DR2.RzComboBox3.Value;
                        
                        listar.Open;

                        if listar.FieldByName('count').AsInteger<>0  then
                            CheckListBox1.Checked[i]:=true;

                         i:=i+1;

                         dupli.Next;

                    end;



                    listar.Destroy;



end;

procedure TFrm_DRE_2_Plano.RzButton1Click(Sender: TObject);
var
i : integer;
busca : TFDQUERY;
iPos: Integer;
begin



      busca:=TFDQuery.Create(nil);
        busca.Connection:=dm.FDConnection1;
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin


              if CheckListBox1.Checked[i]=true then
                 begin
                    busca.Close;
                    busca.sql.Text:='SELECT COUNT(*) FROM DRE_2_PLANO where id_plano ='+Trim(Copy(CheckListBox1.Items.Strings[i],1,Pos('-',CheckListBox1.Items.Strings[i])-1))+' and id_depto ='+Frm_Conf_DR2.RzComboBox1.Value;
                    busca.Open;
                    if busca.FieldByName('count').AsInteger=0 then
                      begin

                            busca.Close;
                            busca.sql.Text:='INSERT INTO DRE_2_PLANO (id_depto, tipo,id_plano,dre) '+
                                                             'values('+Frm_Conf_DR2.RzComboBox1.Value+', '+
                                                             Frm_Conf_DR2.RzComboBox2.Value+', '+
                                                             Trim(Copy(CheckListBox1.Items.Strings[i],1,Pos('-',CheckListBox1.Items.Strings[i])-1))+', '+
                                                             Frm_Conf_DR2.RzComboBox3.Value+')';

                            busca.ExecSQL();
                      end;
                 end
                 else
                 if CheckListBox1.Checked[i]=false then
                         begin
                                    busca.Close;
                                    busca.sql.Text:='delete from DRE_2_PLANO where id_plano ='+Trim(Copy(CheckListBox1.Items.Strings[i],1,Pos('-',CheckListBox1.Items.Strings[i])-1))+' and id_depto ='+Frm_Conf_DR2.RzComboBox1.Value;
                                    busca.ExecSQL();
                         end;




            end;
                             // ShowMessage('Alterações Salva Com Sucesso!');
                              close;


end;

end.
