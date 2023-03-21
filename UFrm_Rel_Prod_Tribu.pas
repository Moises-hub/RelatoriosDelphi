unit UFrm_Rel_Prod_Tribu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, RLReport, Vcl.StdCtrls, RzCmboBx,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrm_Rel_Prod_Tribu = class(TForm)
    FDQuery1: TFDQuery;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1REF: TStringField;
    FDQuery1NCM: TStringField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1ESTOQUE: TSingleField;
    FDQuery1TRIBUTACAO: TStringField;
    FDQuery1ID_CATEGORIA: TIntegerField;
    FDQuery1MARCA: TStringField;
    DataSource1: TDataSource;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    FDQuery1CATEGORIA: TStringField;
    FDQuery1ID_DEPTO: TIntegerField;
    RLLabel10: TRLLabel;
    RLLabel5: TRLLabel;
    FDQuery1DEPARTAMENTO: TStringField;
    RLDBText7: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    RLBand6: TRLBand;
    FDQuery1ESTOQUE_FISCAL: TBCDField;
    FDQuery1ESTOQUE_REAL: TBCDField;
    FDQuery1TIPO: TIntegerField;
    FDQuery2: TFDQuery;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    FDQuery1ST: TSmallintField;
    Label4: TLabel;
    RzComboBox4: TRzComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Prod_Tribu: TFrm_Rel_Prod_Tribu;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Prod_Tribu.Button1Click(Sender: TObject);
begin
      FDQUERY1.Close;
      FDQUERY1.SQL.Text:='select * from REL_PRODUTO_AGRUPADO_TRIBUTACAO ' +
                         'WHERE TIPO <> 4 '+RzComboBox1.Value+RzComboBox2.Value+RzComboBox3.Value+RzComboBox4.Value+
                         ' ORDER BY ST, DESCRICAO, DEPARTAMENTO, CATEGORIA';
     FDQUERY1.OPEN;


      FDQuery2.Close;
      FDQuery2.SQL.Text:='select sum(REL_PRODUTO_AGRUPADO_TRIBUTACAO.estoque_fiscal)as fiscal,' +
                         '       sum(REL_PRODUTO_AGRUPADO_TRIBUTACAO.estoque_real)as e_real, ' +
                         '       sum(REL_PRODUTO_AGRUPADO_TRIBUTACAO.estoque)as estoque ' +
                         '       from REL_PRODUTO_AGRUPADO_TRIBUTACAO ' +
                         'where tipo <> 4 and st =:f '+RzComboBox1.Value+RzComboBox2.Value+RzComboBox3.Value+RzComboBox4.Value;




     if CheckBox1.Checked = FALSE then
         BEGIN
            RLLABEL9.Visible:=FALSE;
            RLDBText6.Visible:=False;
            RLLabel8.Visible:=false;
         END
         else
         BEGIN
            RLLABEL9.Visible:=TRUE;
            RLDBText6.Visible:=TRUE;
            RLLabel8.Visible:=TRUE;
         END;


     if CheckBox2.Checked = FALSE then
         BEGIN
            RLLABEL3.Visible:=FALSE;
            RLDBText3.Visible:=False;
            RLLabel11.Visible:=false;
         END
         else
         BEGIN
            RLLABEL3.Visible:=TRUE;
            RLDBText3.Visible:=TRUE;
            RLLabel11.Visible:=TRUE;
         END;
     RLLabel7.Caption:='TRIBUTAÇÃO: '+RzComboBox4.Text+'  CATEGORIA: '+RzComboBox1.Text+'  MARCA: '+RzComboBox2.Text+'  DEPARTAMENTO: '+RzComboBox3.Text;
     RLReport1.PreviewModal;
end;

procedure TFrm_Rel_Prod_Tribu.FormShow(Sender: TObject);
var
combo : tfdquery;
i : integer;
begin
      combo:=TFDQuery.Create(self);
      combo.Connection:=dm.FDConnection1;
      combo.SQL.text:='select id_categoria,descricao from categorias';
      combo.Open();

      combo.first;

      RzComboBox1.Items.Clear;
      RzComboBox1.Values.Clear;
      RzComboBox1.Items.Add('<TODOS>');
      RzComboBox1.Values.Add(' ');
     while not Combo.eof do
       begin
         RzComboBox1.Items.Add(combo.FieldByName('DESCRICAO').AsString);
         RzComboBox1.Values.Add(' AND ID_CATEGORIA ='+IntToStr(combo.FieldByName('ID_CATEGORIA').Asinteger));
         combo.Next;
       end;

       RzComboBox1.ItemIndex := 0;
       COMBO.Close;
       combo.SQL.text:='select ID_LABORATORIO,NOME from LABORATORIOS';
      combo.Open();

      combo.first;

      RzComboBox2.Items.Clear;
      RzComboBox2.Values.Clear;
      RzComboBox2.Items.Add('<TODOS>');
      RzComboBox2.Values.Add(' ');
      while not Combo.eof do
       begin
         RzComboBox2.Items.Add(combo.FieldByName('NOME').AsString);
         RzComboBox2.Values.Add(' AND MARCA ='''+combo.FieldByName('NOME').AsString+'''');
         combo.Next;
       end;
        RzComboBox2.ItemIndex := 0;


       COMBO.Close;
       combo.SQL.text:='select ID_DEPTO,DESCRICAO from DEPARTAMENTOS';
       combo.Open();

      combo.first;

      RzComboBox3.Items.Clear;
      RzComboBox3.Values.Clear;
      RzComboBox3.Items.Add('<TODOS>');
      RzComboBox3.Values.Add(' ');
      while not Combo.eof do
       begin
         RzComboBox3.Items.Add(combo.FieldByName('DESCRICAO').AsString);
         RzComboBox3.Values.Add(' AND ID_DEPTO ='+IntToStr(combo.FieldByName('ID_DEPTO').AsInteger));
         combo.Next;
       end;
        RzComboBox3.ItemIndex := 0;




     COMBO.Free;

end;

procedure TFrm_Rel_Prod_Tribu.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     fdquery2.Close;
     fdquery2.Params[0].AsInteger:=FDQuery1ST.AsInteger;
     fdquery2.Open();
     RLLabel8.Caption:=fdquery2.FieldByName('e_real').AsString;
     RLLabel11.Caption:=fdquery2.FieldByName('fiscal').AsString;
     RLLabel12.Caption:=fdquery2.FieldByName('estoque').AsString;


end;

end.
