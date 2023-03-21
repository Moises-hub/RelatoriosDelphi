unit UFrm_ListaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, RzButton, RzRadChk, Vcl.ExtCtrls, RzPanel, RzRadGrp,
  Vcl.StdCtrls, RLReport;

type
  TFrm_ListaProduto = class(TForm)
    FDQuery1: TFDQuery;
    RzRadioGroup1: TRzRadioGroup;
    RzCheckBox1: TRzCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    FDQuery1ID_PRODUTO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1PRECO_MINIMO: TBCDField;
    FDQuery1PRECO_TABELA: TBCDField;
    FDQuery1ESTOQUE: TSingleField;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    DataSource1: TDataSource;
    RLSystemInfo1: TRLSystemInfo;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    procedure Button1Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ListaProduto: TFrm_ListaProduto;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_ListaProduto.Button1Click(Sender: TObject);
begin
   FDQuery1.Close;
   if RzRadioGroup1.ItemIndex = 0 then
         FDQuery1.SQL.Text:='select produtos.id_produto, ' +
                            '       produtos.descricao,' +
                            '       produto_precos.preco_minimo, ' +
                            '       produto_precos.preco_tabela, ' +
                            '       produtos.estoque ' +
                            '       from produtos ' +
                            'left join produto_precos on produto_precos.id_produto = produtos.id_produto ' +
                            'where produtos.tipo<>4 and produtos.id_produto >='+edit1.text +' and produtos.id_produto <='+edit2.text+
                            '  and produtos.estoque >0 order by produtos.id_produto'


          else
           if RzRadioGroup1.ItemIndex =1 then
                 FDQuery1.SQL.Text:='select produtos.id_produto, ' +
                                    '       produtos.descricao,' +
                                    '       produto_precos.preco_minimo, ' +
                                    '       produto_precos.preco_tabela, ' +
                                    '       produtos.estoque ' +
                                    '       from produtos ' +
                                    'left join produto_precos on produto_precos.id_produto = produtos.id_produto ' +
                                    'where produtos.tipo<>4 and produtos.id_produto >='+edit1.text +' and produtos.id_produto <='+edit2.text+
                                    ' and produtos.estoque <= 0 order by produtos.id_produto'
           else
           if RzRadioGroup1.ItemIndex = 2 then
                 FDQuery1.SQL.Text:='select produtos.id_produto, ' +
                                    '       produtos.descricao,' +
                                    '       produto_precos.preco_minimo, ' +
                                    '       produto_precos.preco_tabela, ' +
                                    '       produtos.estoque ' +
                                    '       from produtos ' +
                                    'left join produto_precos on produto_precos.id_produto = produtos.id_produto ' +
                                    'where produtos.tipo<>4 and produtos.id_produto >='+edit1.text +' and produtos.id_produto <='+edit2.text+
                                    ' order by produtos.id_produto';




         fdquery1.open;

        if RzCheckBox1.Checked = false then
           begin
             RLDBText4.Visible:=false;
             RLLabel4.Visible:=false;
           end
           else
         if RzCheckBox1.Checked = true then
           begin
             RLDBText4.Visible:=true;
             RLLabel4.Visible:=true;
           end;
           RLReport1.PreviewModal;

end;

procedure TFrm_ListaProduto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if  not ( Key in ['0'..'9', Chr(8)] ) then

          Key := #0;
end;

procedure TFrm_ListaProduto.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
          if  not ( Key in ['0'..'9', Chr(8)] ) then

          Key := #0;
end;

procedure TFrm_ListaProduto.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   if rlband2.Color = clWhite then
      RLBand2.Color:=clMenuBar
      else
   if rlband2.Color =clMenuBar then
      RLBand2.Color:=  clWhite;

end;

end.
