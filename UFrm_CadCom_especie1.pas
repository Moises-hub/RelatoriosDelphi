unit UFrm_CadCom_especie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, RzCmboBx, Vcl.ExtCtrls, RzPanel,
  Data.SqlExpr, RzDBCmbo, RzButton, dxGDIPlusClasses;

type
  TFrm_CadCom_especie = class(TForm)
    RzPanel2: TRzPanel;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzPanel3: TRzPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    RzDBComboBox2: TRzDBComboBox;
    Label5: TLabel;
    RzDBComboBox3: TRzDBComboBox;
    Label6: TLabel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    RzPanel1: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzDBComboBox3Select(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadCom_especie: TFrm_CadCom_especie;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_Funcionario;

procedure TFrm_CadCom_especie.Button1Click(Sender: TObject);
begin
if dm.CD_CAD_COMISSAO.State in[dsinsert,dsedit] then
   else
   begin
   dm.CD_CAD_COMISSAO.Insert;
   if (RzDBComboBox3.ItemIndex =0) or (RzDBComboBox3.ItemIndex =1) then
           begin
         //    DM.CD_CAD_COMISSAOID_ESPECIE.Clear;
         //    DM.CD_CAD_COMISSAOID_FORMAPAGA.Clear;
             RzDBComboBox1.ReadOnly:=true;
             RzDBComboBox2.ReadOnly:=true;
             DBEdit2.ReadOnly:=false;
             DBEdit3.ReadOnly:=false;


           end
           else
           begin
        //     dm.CD_CAD_COMISSAOVMIN.Clear;
         //    dm.CD_CAD_COMISSAOVMax.Clear;
             RzDBComboBox1.ReadOnly:=false;
             RzDBComboBox2.ReadOnly:=false;
             DBEdit2.ReadOnly:=true;
             DBEdit3.ReadOnly:=true;


           end;
   end;
end;

procedure TFrm_CadCom_especie.Button2Click(Sender: TObject);
begin



        if dm.CD_CAD_COMISSAO.State in[dsinsert,dsedit] then
           else
           begin
             if dm.CD_CAD_COMISSAO.RecordCount<>0 then
                dm.CD_CAD_COMISSAO.Edit
                else
                dm.CD_CAD_COMISSAO.insert;
           end;


           if (RzDBComboBox3.ItemIndex =0) or (RzDBComboBox3.ItemIndex =1) then
   begin
     DM.CD_CAD_COMISSAOID_ESPECIE.Clear;
     DM.CD_CAD_COMISSAOID_FORMAPAGA.Clear;
     RzDBComboBox1.ReadOnly:=true;
     RzDBComboBox2.ReadOnly:=true;
     DBEdit2.ReadOnly:=false;
     DBEdit3.ReadOnly:=false;


   end
   else
   begin
     dm.CD_CAD_COMISSAOVMIN.Clear;
     dm.CD_CAD_COMISSAOVMax.Clear;
     RzDBComboBox1.ReadOnly:=false;
     RzDBComboBox2.ReadOnly:=false;
     DBEdit2.ReadOnly:=true;
     DBEdit3.ReadOnly:=true;

   end;


end;

procedure TFrm_CadCom_especie.Button3Click(Sender: TObject);
var
entrada : TSQLDataSet;
begin
  if DM.CD_CAD_COMISSAO.State IN[DSINSERT,dsEdit] then
  BEGIN




      if DM.CD_CAD_COMISSAOtipo.AsInteger = 1 then
         DM.CD_CAD_COMISSAONOME.asstring:=FloatToStr(DM.CD_CAD_COMISSAOVMIN.AsFloat)+' X '+FloatToStr(DM.CD_CAD_COMISSAOVMAX.AsFloat)+'='+FloatToStr(DM.CD_CAD_COMISSAOPORCENTAGEM.AsFloat)+ ' (Venda)'
         ELSE
         if DM.CD_CAD_COMISSAOtipo.AsInteger = 2 then
         DM.CD_CAD_COMISSAONOME.asstring:=FloatToStr(DM.CD_CAD_COMISSAOVMIN.AsFloat)+' X '+FloatToStr(DM.CD_CAD_COMISSAOVMAX.AsFloat)+'='+FloatToStr(DM.CD_CAD_COMISSAOPORCENTAGEM.AsFloat)+ ' (Margem)'

         ELSE
         if DM.CD_CAD_COMISSAOtipo.AsInteger = 3 then
          BEGIN


         DM.CD_CAD_COMISSAONOME.asstring:=Frm_CadCom_especie.RzDBComboBox1.Text+' X '+Frm_CadCom_especie.RzDBComboBox2.Text+'='+FloatToStr(DM.CD_CAD_COMISSAOPORCENTAGEM.AsFloat)+ ' (Metodo de Pagamento)';
         DM.CD_CAD_COMISSAO.Post;
         end;
  END;




end;

procedure TFrm_CadCom_especie.Button4Click(Sender: TObject);
begin
if dm.CD_CAD_COMISSAO.State in[dsinsert,dsedit] then
   if MessageDlg('Deseja Cancelar as Alterções??',mtConfirmation,[mbYes,mbNo],0)=mryes  then
      dm.CD_CAD_COMISSAO.Cancel;
end;

procedure TFrm_CadCom_especie.Button5Click(Sender: TObject);
begin
if dm.CD_CAD_COMISSAO.State in[dsinsert,dsedit] then
else
   if dm.CD_CAD_COMISSAO.RecordCount <>0 then
     if MessageDlg('Deseja Realmente Excluir o Registro ??',mtConfirmation,[mbYes,mbNo],0)=mryes then
        dm.CD_CAD_COMISSAO.Delete;

end;

procedure TFrm_CadCom_especie.Button7Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CadCom_especie.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if DM.CD_CAD_COMISSAOTIPO.AsInteger = 1 then
   DBGrid1.Canvas.Brush.Color :=clActiveCaption
   ELSE
   if DM.CD_CAD_COMISSAOTIPO.AsInteger = 2 then
     DBGrid1.Canvas.Brush.Color :=clInactiveCaption
     ELSE
     if DM.CD_CAD_COMISSAOTIPO.AsInteger = 3 then
   DBGrid1.Canvas.Brush.Color :=clMoneyGreen;

    DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
end;

procedure TFrm_CadCom_especie.FormShow(Sender: TObject);
var
Alimenta : TSQLQUERY;
begin
dm.CD_CAD_COMISSAO.Open;

   if (RzDBComboBox3.ItemIndex =0) or (RzDBComboBox3.ItemIndex =1) then
   begin
 //    DM.CD_CAD_COMISSAOID_ESPECIE.Clear;
 //    DM.CD_CAD_COMISSAOID_FORMAPAGA.Clear;
     RzDBComboBox1.ReadOnly:=true;
     RzDBComboBox2.ReadOnly:=true;
     DBEdit2.ReadOnly:=false;
     DBEdit3.ReadOnly:=false;


   end
   else
   begin
//     dm.CD_CAD_COMISSAOVMIN.Clear;
 //    dm.CD_CAD_COMISSAOVMax.Clear;
     RzDBComboBox1.ReadOnly:=false;
     RzDBComboBox2.ReadOnly:=false;
     DBEdit2.ReadOnly:=true;
     DBEdit3.ReadOnly:=true;


   end;


   alimenta:=TSQLQuery.Create(self);

   alimenta.SQLConnection:=dm.SQLConnection1;




   ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select id_especie, descricao from ESPECIE_PGTO ');
   ALIMENTA.Open;


    RzDBComboBox1.Items.Clear;
    RzDBComboBox1.values.Clear;


    alimenta.First;
    while not ALIMENTA.Eof do
      BEGIN
      RzDBComboBox1.Items.Add(alimenta.FieldByName('descricao').AsString);
      RzDBComboBox1.Values.Add(alimenta.FieldByName('id_especie').AsString);
      alimenta.Next;

      END;




     ALIMENTA.close;
   alimenta.SQL.clear;
   alimenta.SQL.Add('select ID_FORMA, descricao from FORMA_PGTO');
   ALIMENTA.Open;


    RzDBComboBox2.Items.Clear;
    RzDBComboBox2.values.Clear;


    alimenta.First;
    while not ALIMENTA.Eof do
      BEGIN
      RzDBComboBox2.Items.Add(alimenta.FieldByName('descricao').AsString);
      RzDBComboBox2.Values.Add(alimenta.FieldByName('id_forma').AsString);
      alimenta.Next;

      END;



    alimenta.Destroy;





end;

procedure TFrm_CadCom_especie.Image1DblClick(Sender: TObject);
begin
    DM.CD_CAD_COMISSAO.First;
    while not DM.CD_CAD_COMISSAO.Eof do
        begin
           Button2Click(sender);
           Button3Click(sender);
           DM.CD_CAD_COMISSAO.next;
        end;
end;

procedure TFrm_CadCom_especie.RzBitBtn1Click(Sender: TObject);
begin
       Frm_Funcionario:=TFrm_Funcionario.Create(self);
       Frm_Funcionario.T:=3;
       Frm_Funcionario.ShowModal;

end;

procedure TFrm_CadCom_especie.RzDBComboBox3Select(Sender: TObject);
begin


if (RzDBComboBox3.ItemIndex =0) or (RzDBComboBox3.ItemIndex =1) then
   begin
     DM.CD_CAD_COMISSAOID_ESPECIE.Clear;
     DM.CD_CAD_COMISSAOID_FORMAPAGA.Clear;
     RzDBComboBox1.ReadOnly:=true;
     RzDBComboBox2.ReadOnly:=true;
     DBEdit2.ReadOnly:=false;
     DBEdit3.ReadOnly:=false;


   end
   else
   begin
     dm.CD_CAD_COMISSAOVMIN.Clear;
     dm.CD_CAD_COMISSAOVMax.Clear;
     RzDBComboBox1.ReadOnly:=false;
     RzDBComboBox2.ReadOnly:=false;
     DBEdit2.ReadOnly:=true;
     DBEdit3.ReadOnly:=true;

   end;

end;

end.
