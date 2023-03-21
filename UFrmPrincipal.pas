unit UFrmPrincipal;

interface

uses  registry, INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzGroupBar, Vcl.ExtCtrls, RzPanel,
  System.ImageList, Vcl.ImgList, RLFilters, RLPDFFilter, Vcl.Imaging.jpeg,
  RLRichFilter, RLHTMLFilter, RzStatus, Vcl.StdCtrls, RzLabel,
  Vcl.Imaging.pngimage, Vcl.Menus, RLReport, RLXLSFilter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.VCLUI.Script, FireDAC.Comp.UI, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr,
  Datasnap.Provider, dxPrnDlg, dxPSCore, dxPScxCommon, dxPScxTLLnk, cxClasses,
  cxInplaceContainer, cxDBTL, cxTLData, dxGDIPlusClasses, UFrm_Minuta,
  UFrm_RelProd_FrmPaga;

type
  TFrmPrincipal = class(TForm)
    RzPanel1: TRzPanel;
    ImageList1: TImageList;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RzVersionInfo1: TRzVersionInfo;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    RzPanel4: TRzPanel;
    RzLabel2: TRzLabel;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Config1: TMenuItem;
    RzPanel5: TRzPanel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    RLXLSFilter1: TRLXLSFilter;
    Utilitrio1: TMenuItem;
    Comisses1: TMenuItem;
    Cadastro1: TMenuItem;
    Configurar1: TMenuItem;
    FDConnection1: TFDConnection;
    FDScript1: TFDScript;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    RzGroupBar2: TRzGroupBar;
    RzGroup2: TRzGroup;
    RzGroup3: TRzGroup;
    RzGroup4: TRzGroup;
    RzGroup5: TRzGroup;
    RzGroup6: TRzGroup;
    Image1: TImage;
    ImageList2: TImageList;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    DRE2Config1: TMenuItem;
    RzGroup1: TRzGroup;
    Panel1: TPanel;
    Button1: TButton;
    PermissesEmpresa1: TMenuItem;
    ImageList3: TImageList;
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure RzGroup1Items2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzGroup1Items4Click(Sender: TObject);
    procedure RzGroup1Items3Click(Sender: TObject);
    procedure RzGroup1Items6Click(Sender: TObject);
    procedure RzGroup1Items5Click(Sender: TObject);
    procedure RzGroup1Items7Click(Sender: TObject);
    procedure RzGroup1Items8Click(Sender: TObject);
    procedure RzGroup1Items10Click(Sender: TObject);
    procedure RzGroup1Items9Click(Sender: TObject);
    procedure RzGroup1Items11Click(Sender: TObject);
    procedure RzGroup1Items13Click(Sender: TObject);
    procedure RzGroup1Items12Click(Sender: TObject);
    procedure Config1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzGroup1Items16Click(Sender: TObject);
    procedure RzGroup1Items15Click(Sender: TObject);
   procedure InputBoxSet(var Msg: TMessage);
    procedure RzGroup1Items17Click(Sender: TObject);
    procedure RzGroup1Items14Click(Sender: TObject);
    procedure RzGroup1Items18Click(Sender: TObject);
    procedure RzGroup1Items19Click(Sender: TObject);
    procedure RzGroup1Items21Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure RzGroup1Items20Click(Sender: TObject);
    procedure RzGroup1Items24Click(Sender: TObject);
    procedure RzGroup1Items22Click(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure RzGroup1Items25Click(Sender: TObject);
    procedure RzGroup2Items0Click(Sender: TObject);
    procedure RzGroup2Items1Click(Sender: TObject);
    procedure RzGroup2Items2Click(Sender: TObject);
    procedure RzGroup2Items3Click(Sender: TObject);
    procedure RzGroup2Items4Click(Sender: TObject);
    procedure RzGroup2Items5Click(Sender: TObject);
    procedure RzGroup2Items6Click(Sender: TObject);
    procedure RzGroup3Items0Click(Sender: TObject);
    procedure RzGroup3Items1Click(Sender: TObject);
    procedure RzGroup3Items2Click(Sender: TObject);
    procedure RzGroup3Items3Click(Sender: TObject);
    procedure RzGroup3Items5Click(Sender: TObject);
    procedure RzGroup3Items4Click(Sender: TObject);
    procedure RzGroup4Items0Click(Sender: TObject);
    procedure RzGroup4Items1Click(Sender: TObject);
    procedure RzGroup3Items6Click(Sender: TObject);
    procedure RzGroup5Items0Click(Sender: TObject);
    procedure RzGroup5Items1Click(Sender: TObject);
    procedure RzGroup5Items2Click(Sender: TObject);
    procedure RzGroup5Items3Click(Sender: TObject);
    procedure RzGroup6Items0Click(Sender: TObject);
    procedure RzGroup6Items1Click(Sender: TObject);
    procedure RzGroup5Items4Click(Sender: TObject);
    procedure RzGroup5Items5Click(Sender: TObject);
    procedure RzGroup5Items6Click(Sender: TObject);
    procedure RzGroup5Items7Click(Sender: TObject);
    procedure RzGroup2Items7Click(Sender: TObject);
    procedure RzGroup3Items7Click(Sender: TObject);
    procedure RzGroup2Items8Click(Sender: TObject);
    procedure RzGroup2Items9Click(Sender: TObject);
    procedure RzGroup2Items10Click(Sender: TObject);
    procedure RzGroup2Items11Click(Sender: TObject);
    procedure RzGroup5Items8Click(Sender: TObject);
    procedure RzGroup2Items12Click(Sender: TObject);
    procedure RzGroup5Items9Click(Sender: TObject);
    procedure RzGroup2Items13Click(Sender: TObject);
    procedure RzGroup5Items10Click(Sender: TObject);
    procedure RzGroup2Items14Click(Sender: TObject);
    procedure RzGroup5Items11Click(Sender: TObject);
    procedure RzGroup2Items15Click(Sender: TObject);
    procedure RzGroup5Items12Click(Sender: TObject);
    procedure RzGroup5Items13Click(Sender: TObject);
    procedure RzGroup5Items14Click(Sender: TObject);
    procedure RzGroup5Items15Click(Sender: TObject);
    procedure RzGroup3Items8Click(Sender: TObject);
    procedure RzGroup2Items16Click(Sender: TObject);
    procedure RzGroup3Items9Click(Sender: TObject);
    procedure RzGroup4Items2Click(Sender: TObject);
    procedure RzGroup5Items16Click(Sender: TObject);
    procedure RzGroup5Items17Click(Sender: TObject);
    procedure RzGroup3Items10Click(Sender: TObject);
    procedure RzGroup2Items17Click(Sender: TObject);
    procedure RzGroup3Items11Click(Sender: TObject);
    procedure RzGroup2Items18Click(Sender: TObject);
    procedure RzGroup3Items12Click(Sender: TObject);
    procedure DRE2Config1Click(Sender: TObject);
    procedure RzGroup2Items19Click(Sender: TObject);
    procedure RzGroup2Items20Click(Sender: TObject);
    procedure permissoes;
    procedure RzGroup2Items21Click(Sender: TObject);
    procedure RzGroup5Items18Click(Sender: TObject);
    procedure RzGroup5Items19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RzGroup5Items20Click(Sender: TObject);
    procedure RzGroup5Items21Click(Sender: TObject);
    procedure RzGroup2Items22Click(Sender: TObject);
    procedure RzGroup4Items3Click(Sender: TObject);
    procedure PermissesEmpresa1Click(Sender: TObject);
    procedure RzGroup2Items23Click(Sender: TObject);
  private
    { Private declarations }
  public
   var
   p:integer;
   LOGIN, EMPRESA : INTEGER;
   RELCOMISSAO : STRING;
   DEPTO : STRING;
   tipo : integer;
   Const
    InputBoxMsg = WM_USER + 123;

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UfrmRel, UFrmPoEstoque, UFrm_Rellog, UDM, UUFrmRelCondicional,
  UFrmRelVendas, UFrmNF_Produtor, UFrmRelLocacao, UFrmRelMovEstoque, UFrmRel_R,
  UFrm_CadRelLote, UFrmRel_Clientes, UFrm_Cobranca, UFrm_PosPed, UFrm_Acessos,
  UFrm_Login, UFrm_Splah, UFrm_RelComissao, UFrm_PedidoComissao,
  UFrm_RelProdutos, UFrm_Senha, UFrm_DRE, UFrm_RelConsultoria, UFrm_AltProduto,
  UFrm_CadComissao, UFrm_RelVPorEspecie, UFrm_GradeCom_Esp, UFrm_CadCom_especie,
  UFrm_Funcionario, UFrm_RelProd_SemMov, UFrm_AltdePreco, UFrm_Rel_Rec_Contas,
  UFrm_Condicional, UFrm_Cond_Marca, UFrm_VMarca, UFrm_Rel_Rec_Contas1,
  UFrm_Estoque, UFrm_Rel_LOTE, UFrm_RelRankinProd, UFrmLocal, URel_Prod_Itens,
  UFrm_Clientes, UFrm_ListaProduto, UFrm_Apresentacao, UFrm_RelVNumero,
  UFrm_RelMOV_NCM, UFrm_ListProdTributaria, UFrm_Clientes2, UFrm_RelReal_Fiscal,
  URel_ItensVenda, UFrm_Rel_Rancking, UFrm_RelEntregas,
  UFrm_Rel_EntregaMotorista, UFrm_Rel_ContasPlanoContas, UFrm_Rel_Prod_Tribu,
  UFrm_Rel_Comissao_Item, UFrm_Rel_Fiscal, UFrm_Entrega_2, UFrm_Rel_Vendas2,
  UFrm_Rel_Titulos2, UFrm_PosicaoEstoque_2, UFrm_Relatorio_Credito,
  UFrm_SemRotatividade, UFrm_DRE2, UFrm_Conf_DR2, UFrm_Mov_Estoque,
  UFrm_Rel_Produtos_Foto, UFrm_Rel_Ind_Fromulas_Preco, UFrm_Estoque_Gerencia,
  UFrm_Pedidos_formadepaga, UFrm_Rel_Forma_Pagamento, UFrm_Relatorio_V_Cartoes,
  UFrm_Rel_V_Analitico, UFrm_Rel_SimilarDEPTO, Frm_Relatorio_V_PisCofins,
  UFrm_Permissao_Empresa, UFrm_Login_2;






 procedure TFrmPrincipal.InputBoxSet(var Msg: TMessage);
var
  i: integer;
begin
  for i:=0 to Screen.Forms[0].ComponentCount-1 do
  begin
    if Screen.Forms[0].Components[i] is TEdit then
    begin
      With TEdit( Screen.Forms[0].Components[i] ) do
      begin
        PasswordChar := '*'; //Aqui está o caractere q irá aparecer na inputbox
        Clear;               //Limpamos a caixa de digitação da senha.
      end;
    end;
  end;
end;


procedure TFrmPrincipal.PermissesEmpresa1Click(Sender: TObject);
begin


              Frm_Permissao_Empresa:=TFrm_Permissao_Empresa.CREATE(SELF);
              Frm_Permissao_Empresa.ShowModal;
              Frm_Permissao_Empresa.Free;


end;

procedure TFrmPrincipal.permissoes;
var
config_2:tfdquery;
begin                       (*
                    if LOGIN <> 1 then
                      begin
                          CONFIG_2:=TFDQUERY.Create(NIL);
                          CONFIG_2.Connection:=DM.FDConnection1;
                          CONFIG_2.SQL.Text:='SELECT razao_social FROM empresa where id_empresa =:d ';
                          config_2.Params[0].AsInteger:=EMPRESA;
                          CONFIG_2.Open();

                           if config_2.FieldByName('razao_social').AsString = 'ROGAJO CONSULTORIA' then
                              begin
                                RzGroup1.Visible:=false;
                                RzGroup2.Visible:=false;
                                RzGroup3.Visible:=false;
                                RzGroup4.Visible:=false;
                                RzGroup5.Visible:=false;
                                Utilitrio1.Visible:=false;
                              end;
                           CONFIG_2.free;
                      end;
                             *)



           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =4500'+' and id_grupo ='+IntToStr(p);
           dm.permissao.open;

           if dm.Permissao.FieldByName('count').AsInteger <>0 then
              Comisses1.Visible:=TRUE
              ELSE
              Comisses1.Visible:=FALSE;


     // Pedidos

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5010 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[0].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5003 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[1].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5024 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[2].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5025 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[3].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5026 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[4].Visible:=true;

                         dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5012 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[5].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5004 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[6].Visible:=true;

                   dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5009 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[7].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5033 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[8].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5035 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[9].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5037 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[10].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5039 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[11].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5041 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[12].Visible:=true;

      {     dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5042 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[13].Visible:=true;  }


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5043 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[14].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5044 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[15].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5049 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[16].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5050 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[17].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5059 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[18].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5060 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[19].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5061 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[20].Visible:=true;


                  dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5062 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup5.Items[21].Visible:=true;

     // estoque


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5019 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[0].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5008 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[1].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5001 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[2].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5015 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[3].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5006 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[4].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5007 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[5].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5021 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[6].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5027 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[7].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5029 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[8].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5030 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[9].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5031 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[10].Visible:=true;

            dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5032 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[11].Visible:=true;



            dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5034 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[12].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5036 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[13].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5038 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[14].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5040 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[15].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5046 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[16].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5052 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[17].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5054 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[18].Visible:=true;



           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5055 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[19].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5056 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[20].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5058 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[21].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5063 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[22].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5066 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup2.Items[23].Visible:=true;

         //Financeiro


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5023 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[0].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5013 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[1].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5014 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[2].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5017 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[3].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5020 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[4].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5011 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[5].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5016 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[6].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5028 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[7].Visible:=true;




           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5045 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[8].Visible:=true;

            dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5047 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[9].Visible:=true;


            dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5051 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[10].Visible:=true;

            dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5053 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup3.Items[11].Visible:=true;
             //FIscal

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5000 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup4.Items[0].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5005 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup4.Items[1].Visible:=true;

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5048 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup4.Items[2].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5064 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup4.Items[3].Visible:=true;

             //gerenciamento

           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5018 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup6.Items[0].Visible:=true;


           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5002 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup6.Items[1].Visible:=true;

           // INFO INDUSTRIA

            dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5057 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           RzGroup1.Items[0].Visible:=true;


           //PERMISSAO
           dm.permissao.close;
           dm.Permissao.CommandText:='SELECT COUNT(*) FROM acessos where id_modulo =5065 and id_grupo ='+IntToStr(p);
           dm.permissao.open;
        if dm.Permissao.RecordCount<>0 then
           PermissesEmpresa1.Visible:=true
           else
           PermissesEmpresa1.Visible:=false;

end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmPrincipal.Cadastro1Click(Sender: TObject);
begin
Frm_CadCom_especie:=TFrm_CadCom_especie.Create(self);
Frm_CadCom_especie.ShowModal;
Frm_CadCom_especie.Destroy;
end;

procedure TFrmPrincipal.Config1Click(Sender: TObject);
var
  senha: string;
begin

       if login = 1 then
          begin
             Frm_Acessos:=TFrm_Acessos.Create(self);
              Frm_acessos.ShowModal;
              Frm_Acessos.Destroy;
              permissoes;
          end
          else
          begin

          frm_senha:=TFrm_Senha.Create(self);
          Frm_Senha.ShowModal;
            if (Frm_Senha.Edit1.Text<>'464544'+copy(FormatDateTime('hh""mm',time),3,2)) then
            begin //no lugar de Master digite sua senha
            SHOWMESSAGE('SENHA INCORRETA');

            end
            else
            begin

              Frm_Acessos:=TFrm_Acessos.Create(self);
              Frm_acessos.ShowModal;
              Frm_Acessos.Destroy;
              permissoes;
            end;
              frm_senha.Destroy;
          end;
end;

procedure TFrmPrincipal.Configurar1Click(Sender: TObject);
begin
 Frm_Funcionario:=TFrm_Funcionario.Create(self);
   tipo:=3;
   Frm_Funcionario.ShowModal;
end;

procedure TFrmPrincipal.DRE2Config1Click(Sender: TObject);
begin
Frm_Conf_DR2:=TFrm_Conf_DR2.Create(self);
Frm_Conf_DR2.ShowModal;
end;

procedure TFrmPrincipal.FDConnection1BeforeConnect(Sender: TObject);
begin
FDConnection1.Params.Values['DataBase'] :=dm.SQLConnection1.Params.Values['DataBase'];
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if MessageDlg('Deseja Realmente Sair?',mtConfirmation,[mbYes,mbNo],0)=mryes then
   Application.Terminate
   else
   Action:=caNone;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
VAR
VERSAO : TINIFILE;
VER : STRING;
CONFIG : TFDQUERY;
begin
    CONFIG:=TFDQUERY.Create(NIL);

    CONFIG.Connection:=DM.FDConnection1;
    CONFIG.SQL.Text:=' SELECT COUNT(*) ' +
                     ' FROM RDB$RELATIONS ' +
                     'WHERE RDB$FLAGS=1 and RDB$RELATION_NAME=''REL_CONFIG''';
      CONFIG.Open();

  //     ShowMessage(DM.FDConnection1.Params.Values['database']);

      if CONFIG.FieldByName('COUNT').AsInteger = 0 then
         BEGIN
               CONFIG.CLOSE;
               CONFIG.SQL.Text:=' CREATE TABLE REL_CONFIG (' +
                                ' ID  INTEGER NOT NULL, ' +
                                ' VERSAO   VARCHAR(20), ' +
                                ' DATA_ATUALIZACAO  TIMESTAMP ' +
                                ')';
               CONFIG.ExecSQL;

               DM.FDConnection1.Commit;

              

                       Frm_Apresentacao:=TFrm_Apresentacao.Create(SELF);
                       Frm_Apresentacao.ShowModal;
                       Frm_Apresentacao.Free;


         END
         ELSE
         BEGIN



               CONFIG.CLOSE;
               DM.FDConnection1.Commit;
                   CONFIG.Connection:=DM.FDConnection1;

               CONFIG.SQL.Text:='SELECT VERSAO FROM REL_CONFIG ';
               CONFIG.OPEN;
              // ShowMessage(CONFIG.FieldByName('VERSAO').AsString);

               IF CONFIG.FieldByName('VERSAO').AsString = RzVersionInfo1.FileVersion THEN
                  BEGIN




                                Frm_login:=TFrm_login.Create(self);
                                Frm_login.ShowModal;





                  END
                  ELSE
                   if FileExists(DM.SQLConnection1.Params.Values['database']) then
                      BEGIN
                       TRY
                       Frm_Apresentacao:=TFrm_Apresentacao.Create(SELF);
                       Frm_Apresentacao.ShowModal;
                       Frm_Apresentacao.Free;




                                Frm_login:=TFrm_login.Create(self);
                                Frm_login.ShowModal;


                       EXCEPT
                          Application.Terminate;
                       END;


                      END
                      ELSE
                      BEGIN
                        MessageDlg('TERMINAL DESATUALIZADO '+#13+
                        'Versão do BD: '+CONFIG.FieldByName('VERSAO').AsString+#13+
                        'Versão do Sistema: '+RzVersionInfo1.FileVersion,mtWarning,[mbOK],0);
                        Application.Terminate;
                      END;







         END;






        CONFIG.FREE;








  {

if NOT FileExists(ExtractFilePath(Application.ExeName)+'\VERSAO.DLL') then
       BEGIN

       END
       ELSE
       BEGIN
            VERSAO:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\VERSAO.DLL');
            VER :=VERSAO.ReadString('','VERSAO','');

             IF  VER<>RzVersionInfo1.FileVersion THEN
                BEGIN
                 Frm_Apresentacao:=TFrm_Apresentacao.Create(SELF);
                 Frm_Apresentacao.ShowModal;
                 Frm_Apresentacao.Free;
                 VERSAO.Free;

                END;
       END;


         }


end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin





       permissoes;








rzlabel1.CAPTION:='Banco de Dados: '+DM.SQLConnection1.Params.Values['DataBase'];
end;

procedure TFrmPrincipal.RzGroup1Items0Click(Sender: TObject);
begin
     Frm_Rel_Ind_Fromulas_Preco:=TFrm_Rel_Ind_Fromulas_Preco.Create(self);
     Frm_Rel_Ind_Fromulas_Preco.ShowModal;
     Frm_Rel_Ind_Fromulas_Preco.Free;
end;

procedure TFrmPrincipal.RzGroup1Items10Click(Sender: TObject);
begin
FrmRel_Clientes:=TFrmRel_Clientes.Create(self);
FrmRel_Clientes.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items11Click(Sender: TObject);
begin
Frm_Cobranca:=TFrm_Cobranca.Create(self);
Frm_Cobranca.ShowModal;
Frm_Cobranca.Destroy;
end;

procedure TFrmPrincipal.RzGroup1Items13Click(Sender: TObject);
begin
Frm_RelComissao:=TFrm_RelComissao.Create(self);
tipo:=1;
Frm_RelComissao.ShowModal;
Frm_RelComissao.Destroy;
end;

procedure TFrmPrincipal.RzGroup1Items14Click(Sender: TObject);
begin
Frm_PedidoComissao:=TFrm_PedidoComissao.Create(self);
tipo:=2;
relcomissao := 'D';
Frm_PedidoComissao.ShowModal;
Frm_Pedidocomissao.destroy;
end;

procedure TFrmPrincipal.RzGroup1Items12Click(Sender: TObject);
begin
    Frm_PosPed:=TFrm_PosPed.Create(SELF);
    Frm_PosPed.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items15Click(Sender: TObject);
begin
Frm_RelProdutos:=TFrm_RelProdutos.Create(self);
Frm_RelProdutos.ShowModal;
Frm_RelProdutos.Destroy;
end;

procedure TFrmPrincipal.RzGroup1Items16Click(Sender: TObject);
begin
    Frm_DRE:=TFrm_DRE.Create(self);
        Frm_dre.ShowModal;
        Frm_Dre.Destroy;




end;

procedure TFrmPrincipal.RzGroup1Items17Click(Sender: TObject);
begin
Frm_PedidoComissao:=TFrm_PedidoComissao.Create(self);
relcomissao := 'R';
Frm_PedidoComissao.ShowModal;
Frm_Pedidocomissao.destroy;
end;

procedure TFrmPrincipal.RzGroup1Items18Click(Sender: TObject);
begin
        Frm_Consultoria:=tfrm_Consultoria.create(self);
        Frm_Consultoria.showmodal;
        Frm_Consultoria.destroy;
end;

procedure TFrmPrincipal.RzGroup1Items19Click(Sender: TObject);
begin
Frm_AltProduto:=TFrm_AltProduto.Create(self);

Frm_AltProduto.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items1Click(Sender: TObject);
begin
     FrmPoEstoque:=TFrmPoEstoque.Create(self);
     FrmPoEstoque.ShowModal;
     FrmPoEstoque:=nil;
end;

procedure TFrmPrincipal.RzGroup1Items20Click(Sender: TObject);
begin
Frm_RelVPorEspecie:=TFrm_RelVPorEspecie.Create(self);
Frm_RelVPorEspecie.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items21Click(Sender: TObject);
begin
Frm_RelProd_SemMov:=TFrm_RelProd_SemMov.Create(self);
Frm_RelProd_SemMov.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items22Click(Sender: TObject);
begin
Frm_AltdePreco:=TFrm_AltdePreco.Create(self);
Frm_AltdePreco.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items24Click(Sender: TObject);
begin
close;
end;

procedure TFrmPrincipal.RzGroup1Items25Click(Sender: TObject);
begin
Frm_Rel_Rec_Contas:=TFrm_Rel_Rec_Contas.Create(self);
Frm_Rel_Rec_Contas.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items2Click(Sender: TObject);
begin
    Frm_Rellog:=TFrm_Rellog.Create(SELF);
    Frm_Rellog.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items3Click(Sender: TObject);
begin
UFrmRelCondicional:=TUFrmRelCondicional.Create(self);
UFrmRelCondicional.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items4Click(Sender: TObject);
begin
    FrmRelVendas:=TFrmRelVendas.Create(self);
    frmrelvendas.ShowModal;
    frmrelvendas:=nil;
end;

procedure TFrmPrincipal.RzGroup1Items5Click(Sender: TObject);
begin
FrmNF_Produtor:=TFrmNF_Produtor.Create(self);
FrmNF_Produtor.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items6Click(Sender: TObject);
begin
   FrmRelLocacao:=TFrmRelLocacao.Create(self);
   FrmRelLocacao.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items7Click(Sender: TObject);
begin

      FrmRelMovEstoque:=tFrmRelMovEstoque.Create(self);
      FrmRelMovEstoque.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items8Click(Sender: TObject);
begin
FrmRel_R:=TFrmRel_R.Create(self);
FrmRel_R.ShowModal;
end;

procedure TFrmPrincipal.RzGroup1Items9Click(Sender: TObject);
begin
   Frm_CadRelLote:=TFrm_CadRelLote.Create(self);
   Frm_CadRelLote.ShowModal;
   Frm_CadRelLote:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items0Click(Sender: TObject);
begin
  FrmPoEstoque:=TFrmPoEstoque.Create(self);
     FrmPoEstoque.ShowModal;
     FrmPoEstoque:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items10Click(Sender: TObject);
begin
FrmLocal:=tfrmlocal.Create(self);
FrmLocal.ShowModal;
FrmLocal.Free;
end;

procedure TFrmPrincipal.RzGroup2Items11Click(Sender: TObject);
begin
      Frm_Rel_ProdItem:=tfrm_rel_prodItem.Create(self);
      Frm_rel_prodItem.ShowModal;
      Frm_Rel_prodItem.Free;
end;

procedure TFrmPrincipal.RzGroup2Items12Click(Sender: TObject);
begin
     Frm_ListaProduto:=TFrm_ListaProduto.Create(SELF);
     Frm_ListaProduto.ShowModal;
     Frm_ListaProduto.Free;
end;

procedure TFrmPrincipal.RzGroup2Items13Click(Sender: TObject);
begin
     Frm_RelVNumero:=TFrm_RelVNumero.Create(self);
     Frm_RelVNumero.ShowModal;
     Frm_RelVNumero.Free;
end;

procedure TFrmPrincipal.RzGroup2Items14Click(Sender: TObject);
begin
         Frm_ListProdTributaria:=TFrm_ListProdTributaria.Create(self);
         Frm_ListProdTributaria.ShowModal;
         Frm_ListProdTributaria:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items15Click(Sender: TObject);
begin
Frm_RelReal_Fiscal:=TFrm_RelReal_Fiscal.Create(SELF);
Frm_RelReal_Fiscal.ShowModal;
Frm_RelReal_Fiscal.Free;
end;

procedure TFrmPrincipal.RzGroup2Items16Click(Sender: TObject);
begin
      Frm_Rel_Prod_Tribu:=TFrm_Rel_Prod_Tribu.Create(self);
      Frm_Rel_Prod_Tribu.ShowModal;
      Frm_Rel_Prod_Tribu.Free;
end;

procedure TFrmPrincipal.RzGroup2Items17Click(Sender: TObject);
begin
    Frm_PosicaoEstoque_2:=TFrm_PosicaoEstoque_2.Create(self);
    Frm_PosicaoEstoque_2.ShowModal;
    Frm_PosicaoEstoque_2.Free;
end;

procedure TFrmPrincipal.RzGroup2Items18Click(Sender: TObject);
begin
Frm_SemRotatividade:=TFrm_SemRotatividade.Create(self);
Frm_SemRotatividade.ShowModal;
Frm_SemRotatividade.Free;
end;

procedure TFrmPrincipal.RzGroup2Items19Click(Sender: TObject);
begin
Frm_Mov_Estoque:=TFrm_Mov_Estoque.Create(self);
Frm_Mov_Estoque.ShowModal;
end;

procedure TFrmPrincipal.RzGroup2Items1Click(Sender: TObject);
begin
    FrmRelMovEstoque:=tFrmRelMovEstoque.Create(self);
      FrmRelMovEstoque.ShowModal;
    FrmRelMovEstoque:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items20Click(Sender: TObject);
begin
Frm_Rel_Produtos_Foto:=TFrm_Rel_Produtos_Foto.Create(self);
Frm_Rel_Produtos_Foto.ShowModal;
Frm_Rel_Produtos_Foto.Free;
end;

procedure TFrmPrincipal.RzGroup2Items21Click(Sender: TObject);
begin
     Frm_Estoque_Gerencia:=TFrm_Estoque_Gerencia.Create(self);
     Frm_Estoque_Gerencia.ShowModal;
     Frm_Estoque_Gerencia.free;
end;

procedure TFrmPrincipal.RzGroup2Items22Click(Sender: TObject);
begin
Frm_Rel_SimilarDEPTO:=TFrm_Rel_SimilarDEPTO.Create(self);
Frm_Rel_SimilarDEPTO.ShowModal;
end;

procedure TFrmPrincipal.RzGroup2Items23Click(Sender: TObject);
begin
Frm_RelProd_FrmPaga:=tFrm_RelProd_FrmPaga.Create(self);
Frm_RelProd_FrmPaga.ShowModal;
Frm_RelProd_FrmPaga.Free;
end;

procedure TFrmPrincipal.RzGroup2Items2Click(Sender: TObject);
begin
Frm_RelProdutos:=TFrm_RelProdutos.Create(self);
Frm_RelProdutos.ShowModal;
Frm_RelProdutos.Destroy;
end;

procedure TFrmPrincipal.RzGroup2Items3Click(Sender: TObject);
begin
Frm_AltProduto:=TFrm_AltProduto.Create(self);

Frm_AltProduto.ShowModal;
Frm_AltProduto:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items4Click(Sender: TObject);
begin
FrmRel_R:=TFrmRel_R.Create(self);
FrmRel_R.ShowModal;
FrmRel_R:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items5Click(Sender: TObject);
begin
Frm_RelProd_SemMov:=TFrm_RelProd_SemMov.Create(self);
Frm_RelProd_SemMov.ShowModal;
Frm_RelProd_SemMov:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items6Click(Sender: TObject);
begin
   FrmRelLocacao:=TFrmRelLocacao.Create(self);
   FrmRelLocacao.ShowModal;
   FrmRelLocacao:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items7Click(Sender: TObject);
begin
Frm_VMarca:=TFrm_VMarca.Create(self);
Frm_VMarca.ShowModal;
Frm_VMarca:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items8Click(Sender: TObject);
begin
   Frm_Estoque:=TFrm_Estoque.Create(self);
   Frm_Estoque.ShowModal;
   Frm_Estoque:=nil;
end;

procedure TFrmPrincipal.RzGroup2Items9Click(Sender: TObject);
begin
Frm_Rel_LOTE:=TFrm_Rel_LOTE.Create(self);
Frm_Rel_LOTE.ShowModal;
Frm_Rel_LOTE:=nil;
end;

procedure TFrmPrincipal.RzGroup3Items0Click(Sender: TObject);
begin
Frm_Rel_Rec_Contas1:=TFrm_Rel_Rec_Contas1.Create(SELF);
Frm_Rel_Rec_Contas1.ShowModal;
Frm_Rel_Rec_Contas1:=NIL;

end;

procedure TFrmPrincipal.RzGroup3Items10Click(Sender: TObject);
begin
  Frm_Rel_Titulos2:=TFrm_Rel_Titulos2.Create(self);
  Frm_Rel_Titulos2.ShowModal;
  Frm_Rel_Titulos2.Free;
end;

procedure TFrmPrincipal.RzGroup3Items11Click(Sender: TObject);
begin
Frm_Relatorio_Credito:=TFrm_Relatorio_Credito.Create(self);
Frm_Relatorio_Credito.ShowModal;
Frm_Relatorio_Credito.Free;

end;

procedure TFrmPrincipal.RzGroup3Items12Click(Sender: TObject);
begin
Frm_DRE2:=TFrm_DRE2.Create(self);
Frm_DRE2.ShowModal;
end;

procedure TFrmPrincipal.RzGroup3Items1Click(Sender: TObject);
begin
Frm_RelComissao:=TFrm_RelComissao.Create(self);
tipo:=1;
Frm_RelComissao.ShowModal;
Frm_RelComissao.Destroy;
end;

procedure TFrmPrincipal.RzGroup3Items2Click(Sender: TObject);
begin
Frm_PedidoComissao:=TFrm_PedidoComissao.Create(self);
tipo:=2;
relcomissao := 'D';
Frm_PedidoComissao.ShowModal;
Frm_Pedidocomissao.destroy;
end;

procedure TFrmPrincipal.RzGroup3Items3Click(Sender: TObject);
begin
Frm_PedidoComissao:=TFrm_PedidoComissao.Create(self);
relcomissao := 'R';

Frm_PedidoComissao.CheckBox1.Checked:=false;
Frm_PedidoComissao.CheckBox1.Enabled:=false;
Frm_PedidoComissao.ShowModal;
Frm_Pedidocomissao.destroy;
end;

procedure TFrmPrincipal.RzGroup3Items4Click(Sender: TObject);
begin
Frm_RelVPorEspecie:=TFrm_RelVPorEspecie.Create(self);
Frm_RelVPorEspecie.ShowModal;
Frm_RelVPorEspecie:=nil;
end;

procedure TFrmPrincipal.RzGroup3Items5Click(Sender: TObject);
begin
Frm_Cobranca:=TFrm_Cobranca.Create(self);
Frm_Cobranca.ShowModal;
Frm_Cobranca.Destroy;
end;

procedure TFrmPrincipal.RzGroup3Items6Click(Sender: TObject);
begin
  Frm_DRE:=TFrm_DRE.Create(self);
        Frm_dre.ShowModal;
        Frm_Dre.Destroy;


end;

procedure TFrmPrincipal.RzGroup3Items7Click(Sender: TObject);
begin



Frm_Rel_Rec_Contas:=TFrm_Rel_Rec_Contas.Create(self);
Frm_Rel_Rec_Contas.ShowModal;
Frm_Rel_Rec_Contas:=nil;
end;

procedure TFrmPrincipal.RzGroup3Items8Click(Sender: TObject);
begin
Frm_Rel_ContasPlanoContas:=TFrm_Rel_ContasPlanoContas.Create(SELF);
Frm_Rel_ContasPlanoContas.ShowModal;
Frm_Rel_ContasPlanoContas.Free;
end;

procedure TFrmPrincipal.RzGroup3Items9Click(Sender: TObject);
begin
Frm_Rel_Comissao_Item:=TFrm_Rel_Comissao_Item.Create(SELF);
Frm_Rel_Comissao_Item.ShowModal;
end;

procedure TFrmPrincipal.RzGroup4Items0Click(Sender: TObject);
begin
   Form1:=TForm1.Create(self);
     Form1.ShowModal;
     Form1:=nil;
end;

procedure TFrmPrincipal.RzGroup4Items1Click(Sender: TObject);
begin
FrmNF_Produtor:=TFrmNF_Produtor.Create(self);
FrmNF_Produtor.ShowModal;
FrmNF_Produtor:=nil;
end;

procedure TFrmPrincipal.RzGroup4Items2Click(Sender: TObject);
begin
Frm_Rel_Fiscal:=TFrm_Rel_Fiscal.Create(self);
Frm_Rel_Fiscal.ShowModal;
end;

procedure TFrmPrincipal.RzGroup4Items3Click(Sender: TObject);
begin
Frm_Relatorio_V_Pis_Cofins:=TFrm_Relatorio_V_Pis_Cofins.Create(self);
Frm_Relatorio_V_Pis_Cofins.ShowModal;
Frm_Relatorio_V_Pis_Cofins.Free;
end;

procedure TFrmPrincipal.RzGroup5Items0Click(Sender: TObject);
begin

          FrmRel_Clientes:=TFrmRel_Clientes.Create(self);
          FrmRel_Clientes.ShowModal;
          FrmRel_Clientes:=nil;




end;

procedure TFrmPrincipal.RzGroup5Items10Click(Sender: TObject);
begin
Frm_RelMOV_NCM:=TFrm_RelMOV_NCM.Create(self);
Frm_RelMOV_NCM.ShowModal;
Frm_RelMOV_NCM.Free;
end;

procedure TFrmPrincipal.RzGroup5Items11Click(Sender: TObject);
begin
      Frm_Clientes2:=TFrm_Clientes2.Create(SELF);
      Frm_Clientes2.ShowModal;
      Frm_Clientes2.Free;
end;

procedure TFrmPrincipal.RzGroup5Items12Click(Sender: TObject);
begin
Rel_ItensVenda:=tRel_ItensVenda.Create(self);
Rel_ItensVenda.ShowModal;
Rel_ItensVenda.Free;
end;

procedure TFrmPrincipal.RzGroup5Items13Click(Sender: TObject);
begin
Frm_Rel_Rancking  := TFrm_Rel_Rancking.Create(SELF);
Frm_Rel_Rancking.ShowModal;
Frm_Rel_Rancking.Free;
end;

procedure TFrmPrincipal.RzGroup5Items14Click(Sender: TObject);
begin
Frm_RelEntregas:=TFrm_RelEntregas.Create(self);
Frm_RelEntregas.ShowModal;
Frm_RelEntregas.Free;
end;

procedure TFrmPrincipal.RzGroup5Items15Click(Sender: TObject);
begin
Frm_Rel_EntregaMotorista:=TFrm_Rel_EntregaMotorista.Create(self);
Frm_Rel_EntregaMotorista.ShowModal;
Frm_Rel_EntregaMotorista.Free;
end;

procedure TFrmPrincipal.RzGroup5Items16Click(Sender: TObject);
begin
Frm_Entrega_2:=TFrm_Entrega_2.Create(self);
Frm_Entrega_2.ShowModal;
Frm_Entrega_2.Free;
end;

procedure TFrmPrincipal.RzGroup5Items17Click(Sender: TObject);
begin
Frm_Rel_Vendas2:=tFrm_Rel_Vendas2.Create(self);
Frm_Rel_Vendas2.ShowModal;
Frm_Rel_Vendas2.Free;
end;

procedure TFrmPrincipal.RzGroup5Items18Click(Sender: TObject);
begin
Frm_Pedidos_formadepaga:=TFrm_Pedidos_formadepaga.Create(self);
Frm_Pedidos_formadepaga.ShowModal;
Frm_Pedidos_formadepaga.free;
end;

procedure TFrmPrincipal.RzGroup5Items19Click(Sender: TObject);
begin
Frm_Rel_Forma_Pagamento:=TFrm_Rel_Forma_Pagamento.Create(self);
Frm_Rel_Forma_Pagamento.ShowModal;
end;

procedure TFrmPrincipal.RzGroup5Items1Click(Sender: TObject);
begin
UFrmRelCondicional:=TUFrmRelCondicional.Create(self);
UFrmRelCondicional.ShowModal;
UFrmRelCondicional:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items20Click(Sender: TObject);
begin
Frm_Relatorio_V_Cartoes:=TFrm_Relatorio_V_Cartoes.Create(self);
Frm_Relatorio_V_Cartoes.ShowModal;
Frm_Relatorio_V_Cartoes.Free;
end;

procedure TFrmPrincipal.RzGroup5Items21Click(Sender: TObject);
begin
Frm_Rel_V_Analitico:=TFrm_Rel_V_Analitico.Create(self);
Frm_Rel_V_Analitico.ShowModal;
Frm_Rel_V_Analitico.Free;
end;

procedure TFrmPrincipal.RzGroup5Items2Click(Sender: TObject);
begin
   FrmRelVendas:=TFrmRelVendas.Create(self);
    frmrelvendas.ShowModal;
    frmrelvendas:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items3Click(Sender: TObject);
begin
 Frm_CadRelLote:=TFrm_CadRelLote.Create(self);
   Frm_CadRelLote.ShowModal;
   Frm_CadRelLote:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items4Click(Sender: TObject);
begin
    Frm_PosPed:=TFrm_PosPed.Create(SELF);
    Frm_PosPed.ShowModal;
    Frm_PosPed:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items5Click(Sender: TObject);
begin
Frm_Condicional:=TFrm_Condicional.Create(self);
relcomissao := 'D';
Frm_Condicional.ShowModal;
Frm_Condicional:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items6Click(Sender: TObject);
begin
Frm_Condicional:=TFrm_Condicional.Create(self);
relcomissao := 'R';
Frm_Condicional.ShowModal;
Frm_Condicional:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items7Click(Sender: TObject);
begin
Frm_Cond_Marca:=TFrm_Cond_Marca.Create(SELF);
Frm_Cond_Marca.ShowModal;
end;

procedure TFrmPrincipal.RzGroup5Items8Click(Sender: TObject);
begin
Frm_Clientes:=TFrm_Clientes.Create(self);
Frm_CLientes.ShowModal;
Frm_clientes:=nil;
end;

procedure TFrmPrincipal.RzGroup5Items9Click(Sender: TObject);
begin
frm_minuta:=tfrm_minuta.create(self);
Frm_minuta.showmodal;
end;

procedure TFrmPrincipal.RzGroup6Items0Click(Sender: TObject);
begin
      Frm_Consultoria:=tfrm_Consultoria.create(self);
        Frm_Consultoria.showmodal;
        Frm_Consultoria.destroy;
end;

procedure TFrmPrincipal.RzGroup6Items1Click(Sender: TObject);
begin
 Frm_Rellog:=TFrm_Rellog.Create(SELF);
    Frm_Rellog.ShowModal;
     Frm_Rellog:=nil;
end;

end.

