unit UFrm_RelReal_Fiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport, Vcl.StdCtrls,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzCmboBx;

type
  TFrm_RelReal_Fiscal = class(TForm)
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1CODIGO_BARRA: TStringField;
    FDQuery1ESTOQUE: TSingleField;
    FDQuery1ESTOQUEF: TSingleField;
    FDQuery1SOMA: TFloatField;
    FDQuery1UPPER: TStringField;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    Label1: TLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Label2: TLabel;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelReal_Fiscal: TFrm_RelReal_Fiscal;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_RelReal_Fiscal.Button1Click(Sender: TObject);
begin
FDQuery1.Close;
FDQuery1.SQL.Text:='select  produtos.id_produto, ' +
                   '        produtos.codigo_barra, ' +
                   '        upper(produtos.descricao), ' +
                   '        produtos.estoque, ' +
                   '        produtos.estoquef,' +
                   '        estoquef - estoque as soma ' +
                   '      from produtos ' +
                   ' where produtos.tipo <> 4 '+RzComboBox1.Value+' '+RzComboBox2.Value;
FDQuery1.OPEN;
RLLabel7.Caption:='MARCA: '+RzComboBox1.Text+' / '+'CATEGORIA: '+RzComboBox2.Text;
RLReport1.PreviewModal;

end;

procedure TFrm_RelReal_Fiscal.FormShow(Sender: TObject);
VAR
QUERY : TFDQUERY;
begin
       QUERY:=TFDQUERY.Create(SELF);
       QUERY.Connection:=DM.FDConnection1;
       QUERY.Close;
       QUERY.SQL.Text:='SELECT * FROM LABORATORIOS';
       QUERY.Open();
       RzComboBox2.Items.CLEAR;
       RzComboBox2.VALUES.CLEAR;

           RzComboBox1.Items.Add('<TODAS>');
           RzComboBox1.VALUES.Add('   ');

       QUERY.First;
       while NOT QUERY.Eof do
         BEGIN
           RzComboBox1.Items.Add(QUERY.FieldByName('NOME').AsString);
           RzComboBox1.VALUES.Add(' AND MARCA ='''+QUERY.FieldByName('NOME').AsString+'''');
           QUERY.NEXT;
         END;


       QUERY.Close;
       QUERY.SQL.Text:='SELECT * FROM CATEGORIAS';
       QUERY.Open();
       RzComboBox2.Items.CLEAR;
       RzComboBox2.VALUES.CLEAR;
           RzComboBox2.Items.Add('<TODAS>');
           RzComboBox2.VALUES.Add('   ');

       QUERY.First;
       while NOT QUERY.Eof do
         BEGIN
           RzComboBox2.Items.Add(QUERY.FieldByName('DESCRICAO').AsString);
           RzComboBox2.VALUES.Add(' AND ID_CATEGORIA ='+IntToStr(QUERY.FieldByName('ID_CATEGORIA').AsInteger));
           QUERY.NEXT;
         END;
         RzComboBox1.ItemIndex:=0;
         RzComboBox2.ItemIndex:=0;
end;

procedure TFrm_RelReal_Fiscal.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   if rlband2.Color = clWhite then
      RLBand2.Color:=clMenuBar
      else
   if rlband2.Color =clMenuBar then
      RLBand2.Color:=  clWhite;
end;

end.
