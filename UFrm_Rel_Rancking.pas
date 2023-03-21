unit UFrm_Rel_Rancking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzCmboBx, Vcl.ExtCtrls, RzPanel,
  RzRadGrp, Vcl.DBCtrls, RzDBCmbo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Grids, Vcl.DBGrids, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.StorageBin;

type
  TFrm_Rel_Rancking = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button1: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Label1: TLabel;
    Label4: TLabel;
    FDQuery1DATA_FATURAMENTO: TDateField;
    FDQuery1QNT: TFloatField;
    FDQuery1TOTAL: TBCDField;
    FDQuery1PRODUTO: TStringField;
    FDQuery1ID_PRODUTO: TIntegerField;
    Label5: TLabel;
    FDQuery2: TFDQuery;
    DateField1: TDateField;
    FloatField1: TFloatField;
    BCDField1: TBCDField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Rancking: TFrm_Rel_Rancking;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Rel_Rancking.Button1Click(Sender: TObject);
var
client : string;
begin
       {  if RxDBLookupCombo1.Text <> 'TODOS' then
            CLIENT:=' AND ID_CLIENTE = '+IntToStr(DM.Query_ClientesID_CLIENTE.AsInteger)
            ELSE
            CLIENT:='';



          FDQuery1.Close;
          Fdquery1.SQL.Text:='SELECT REL_IC_VENDAS2.data_faturamento,' +
                             '       cast(SUM(REL_IC_VENDAS2.qtde_total) as currency(15,2)) AS QNT, ' +
                             '       SUM(REL_IC_VENDAS2.valor_total) AS TOTAL, ' +
                             '       REL_IC_VENDAS2.produto, ' +
                             '       REL_IC_VENDAS2.id_produto ' +
                             '       FROM REL_IC_VENDAS2 ' +
                             '       WHERE (TIPO_NT <> 2) AND ((PROCESSO = 1) AND (OPERACAO = 1)) AND (STATUS = 2) ' +
                             '       And (TIPO = 1) AND ((DATA_FATURAMENTO >=:i and DATA_FATURAMENTO <=:f)) '+
                             RzComboBox1.Value+RzComboBox2.Value+CLIENT+' '+
                             '       GROUP BY PRODUTO,DATA_FATURAMENTO,id_produto  ';
          Fdquery1.Params[0].AsDate:=RzDateTimeEdit1.AsDateTime;
          Fdquery1.Params[1].AsDate:=RzDateTimeEdit2.AsDateTime;
          Fdquery1.open;

         //RLLabel31.Caption:='PERÍODO '+RzDateTimeEdit1.Text+' À '+RzDateTimeEdit2.Text+#13+' CLIENTE:'+RzComboBox1.Text+' VENDEDOR:'+RzComboBox2.Text+' CLIENTE:'+RxDBLookupCombo1.Text;;
         //RLReport2.PreviewModal;


                      }



end;

procedure TFrm_Rel_Rancking.FormShow(Sender: TObject);
VAR
CARREGA : TFDQUERY;
begin
                   CARREGA:=TFDQuery.Create(SELF);
                   CARREGA.Connection:=FDQuery1.Connection;
                   CARREGA.SQL.Text:='SELECT PRODUTOS.descricao,PRODUTOS.id_produto FROM PRODUTOS WHERE PRODUTOS.TIPO <> 4 ORDER BY DESCRICAO';
                   CARREGA.Open();
                   RzComboBox1.Clear;
                   RzComboBox1.Values.Clear;
                   RzComboBox1.Items.Add('TODOS');
                   RzComboBox1.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox1.Items.Add(carrega.FieldByName('id_produto').AsString+' - '+carrega.FieldByName('descricao').AsString);
                      RzComboBox1.Values.Add(' and id_produto ='+carrega.FieldByName('id_produto').AsString);
                      carrega.Next;
                    end;
                    RzComboBox1.ItemIndex := 0;
                    carrega.Close;


                   CARREGA.SQL.Text:='SELECT id_funcionario,nome FROM funcionarios WHERE funcionarios.TIPO = 3 and status =1';
                   CARREGA.Open();
                   RzComboBox2.Clear;
                   RzComboBox2.Values.Clear;
                   RzComboBox2.Items.Add('TODOS');
                   RzComboBox2.Values.Add(' ');
                   carrega.First;
                   while not carrega.Eof do
                    begin
                      RzComboBox2.Items.Add(carrega.FieldByName('nome').AsString);
                      RzComboBox2.Values.Add(' and id_VENDEDOR ='+carrega.FieldByName('id_funcionario').AsString);
                      carrega.Next;
                    end;
                    RzComboBox2.ItemIndex := 0;


                    carrega.Close;
end;

end.
