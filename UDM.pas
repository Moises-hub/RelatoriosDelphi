unit UDM;

interface

uses   registry, MidasLib, Midas,
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.SqlExpr, Data.DB,
  IBX.IBDatabase, Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    SQLConnection1: TSQLConnection;
    IBTransaction1: TIBTransaction;
    Emitente: TSQLDataSet;
    EmitenteID_EMPRESA: TIntegerField;
    EmitenteTIPO_ATIVIDADE: TSmallintField;
    EmitenteNOME_EMPRESA: TStringField;
    EmitenteRAZAO_SOCIAL: TStringField;
    EmitenteENDERECO: TStringField;
    EmitenteBAIRRO: TStringField;
    EmitenteCOMPLEMENTO: TStringField;
    EmitenteID_REGIAO: TFMTBCDField;
    EmitenteCNPJ: TStringField;
    EmitenteCEP: TStringField;
    EmitenteEMAIL: TStringField;
    EmitenteWEB: TStringField;
    EmitenteFONE1: TStringField;
    EmitenteFONE2: TStringField;
    EmitenteFAX: TStringField;
    EmitentePRACA: TStringField;
    EmitenteLOGOTIPO: TBlobField;
    EmitenteCHAVE1: TStringField;
    EmitenteCHAVE2: TStringField;
    EmitenteIE: TStringField;
    EmitenteTIPO_DOC: TSmallintField;
    EmitenteSMTP_ENDERECO: TStringField;
    EmitenteSMTP_USUARIO: TStringField;
    EmitenteSMTP_SENHA: TStringField;
    EmitenteRESPONSAVEL: TStringField;
    EmitenteSUBSTITUTO: TSmallintField;
    EmitenteCONTRIB_IPI: TSmallintField;
    EmitenteTIPO_MF: TSmallintField;
    EmitenteSMTP_PORTA: TIntegerField;
    EmitenteREG_TRIBUTARIO: TSmallintField;
    EmitenteNUMERO: TStringField;
    EmitenteIM: TStringField;
    EmitenteSMTP_SSL: TSmallintField;
    EmitenteCODE: TStringField;
    DS_Emitente: TDataSource;
    Cobranca: TSQLDataSet;
    CD_Cobranca: TClientDataSet;
    DS_CD_Cobranca: TDataSource;
    Prov_Cobranca: TDataSetProvider;
    CD_CobrancaNOME: TStringField;
    CD_CobrancaID_CLIENTE: TFMTBCDField;
    CD_CobrancaCEP: TStringField;
    CD_CobrancaCELULAR: TStringField;
    CD_CobrancaFONE_RES: TStringField;
    CD_CobrancaID_CONTA: TFMTBCDField;
    CD_CobrancaID_PEDIDO: TFMTBCDField;
    CD_CobrancaDESCRICAO: TStringField;
    CD_CobrancaDATA_EMISSAO: TDateField;
    CD_CobrancaDATA_VENCIMENTO: TDateField;
    CD_CobrancaPEDIDO: TStringField;
    CD_CobrancaNOTA_FISCAL: TStringField;
    CD_CobrancaID_ESPECIE: TIntegerField;
    CD_CobrancaN_DOC: TStringField;
    CD_CobrancaPARCELA: TStringField;
    CD_CobrancaID_PLANO: TIntegerField;
    CD_CobrancaID_MOEDA: TIntegerField;
    CD_CobrancaJUROS_ANTES: TSingleField;
    CD_CobrancaJUROS_DEPOIS: TSingleField;
    CD_CobrancaMULTA: TSingleField;
    CD_CobrancaVALOR: TFMTBCDField;
    CD_CobrancaDATA_PAGAMENTO: TDateField;
    CD_CobrancaVALOR_PAGO: TFMTBCDField;
    CD_CobrancaDC: TSmallintField;
    CD_CobrancaBAIXA: TSmallintField;
    CD_CobrancaOBS: TBlobField;
    CD_CobrancaSELECIONA: TSmallintField;
    CD_CobrancaTIPO: TSmallintField;
    CD_CobrancaID_CHEQUE: TIntegerField;
    CD_CobrancaID_DEPTO: TIntegerField;
    CD_CobrancaDESCONTO: TSingleField;
    CD_CobrancaID_PORTADOR: TIntegerField;
    CD_CobrancaAUTENTICACAO: TIntegerField;
    CD_CobrancaID_FECHAMENTO: TIntegerField;
    CD_CobrancaID_VENDEDOR: TIntegerField;
    CD_CobrancaID_CARTAO: TIntegerField;
    CD_CobrancaVALOR_JUROS: TFMTBCDField;
    CD_CobrancaVALOR_DESCONTO: TFMTBCDField;
    CD_CobrancaNEGATIVADO: TSmallintField;
    CD_CobrancaDATA_NEGATIVACAO: TDateField;
    CD_CobrancaAGENDADO: TSmallintField;
    CD_CobrancaNOMINAL: TSmallintField;
    CD_CobrancaDADOS_NOMINAL: TStringField;
    CD_CobrancaDATA_COMUNICACAO: TDateField;
    CD_CobrancaDATA_AGENDAMENTO: TDateField;
    CD_CobrancaSERIE: TStringField;
    CD_CobrancaDETALHADO: TSmallintField;
    CD_CobrancaID_LIQUIDA_LOTE: TIntegerField;
    CD_CobrancaMOVIMENTO: TSmallintField;
    CD_CobrancaID_NEGOCIACAO: TIntegerField;
    CD_CobrancaBAIXAR: TSmallintField;
    CD_CobrancaID_PROPRIEDADE: TIntegerField;
    CD_CobrancaID_USUARIO: TIntegerField;
    CD_CobrancaTIPO_AUT: TSmallintField;
    CD_CobrancaID_CC: TIntegerField;
    CD_CobrancaID_CONVENIO: TIntegerField;
    CD_CobrancaID_CAIXA: TIntegerField;
    CD_CobrancaID_MOVIMENTO: TIntegerField;
    CD_CobrancaID_ENTREGA: TIntegerField;
    CD_CobrancaNOSSO_NUMERO: TStringField;
    CD_CobrancaID_CEDENTE: TIntegerField;
    CD_CobrancaDATA_BAIXAR: TDateField;
    CD_CobrancaTIPO_BAIXA: TSmallintField;
    CD_CobrancaVALOR_NEGOCIADO: TFMTBCDField;
    CD_CobrancaCORRECAO_SERASA: TSmallintField;
    CD_CobrancaID_OP: TIntegerField;
    CD_CobrancaDAV: TIntegerField;
    CD_CobrancaNPV: TIntegerField;
    CD_CobrancaTIPO_PEDIDO: TSmallintField;
    CD_CobrancaID_USUARIO_BAIXA: TIntegerField;
    CD_CobrancaID_EMPRESA_BAIXA: TIntegerField;
    CD_CobrancaID_EMPRESA: TIntegerField;
    CD_CobrancaSALDO: TFMTBCDField;
    CD_CobrancaSALDO_MOV: TFMTBCDField;
    CD_CobrancaNOTA_FISCAL_SERV: TStringField;
    CD_CobrancaSTATUS_ANTERIOR: TSmallintField;
    CD_CobrancaID_CUPOM: TIntegerField;
    CD_CobrancaID_ECF: TIntegerField;
    CD_CobrancaCOO: TStringField;
    CD_CobrancaCCF: TStringField;
    CD_CobrancaGNF: TStringField;
    CD_CobrancaCODE: TStringField;
    CD_CobrancaCRZ: TStringField;
    CD_CobrancaMODELO_NF: TStringField;
    CD_CobrancaREMESSA: TSmallintField;
    CD_CobrancaID_LAN_CHEQUE: TIntegerField;
    CD_CobrancaVALOR_SALDO: TFMTBCDField;
    CD_CobrancaREIMPRESSO: TSmallintField;
    CD_CobrancaDIAS_CARENCIA: TSmallintField;
    CD_CobrancaDESCONTO_VALOR: TFMTBCDField;
    CD_CobrancaDESCONTO_DATA: TDateField;
    CD_CobrancaNFCE_NUMERO: TStringField;
    CD_CobrancaID_OPERADORA: TIntegerField;
    CD_CobrancaID_BANDEIRA: TIntegerField;
    CD_CobrancaINTEGRA_BOLETO: TStringField;
    CD_CobrancaID_CLIENTE_1: TFMTBCDField;
    CD_CobrancaNUMERO: TStringField;
    CD_CobrancaCOMPLEMENTO: TStringField;
    CD_CobrancaBAIRRO: TStringField;
    CD_CobrancaCIDADE: TStringField;
    CD_CobrancaENDERECO: TStringField;
    CD_CobrancaUF: TStringField;
    CD_CobrancaDATA_BOLETO: TDateField;
    Pos_Pedido: TSQLDataSet;
    CD_PosPedido: TClientDataSet;
    DS_PosPedido: TDataSource;
    Prov_PosPed: TDataSetProvider;
    Permissao: TSQLDataSet;
    ID: TSQLQuery;
    Funcionarios: TSQLDataSet;
    Prov_Funcionarios: TDataSetProvider;
    CD_Funcionarios: TClientDataSet;
    CD_FuncionariosID_FUNCIONARIO: TIntegerField;
    CD_FuncionariosNOME: TStringField;
    DS_CD_Funcionarios: TDataSource;
    Prov_Comissao: TDataSetProvider;
    CD_Comissao: TClientDataSet;
    DS_CD_Comissao: TDataSource;
    CD_ComissaoID: TIntegerField;
    CD_ComissaoVMIN: TFloatField;
    CD_ComissaoVMAX: TFloatField;
    CD_ComissaoPORCENTAGEM: TFMTBCDField;
    CD_ComissaoID_FUNCIONARIO: TIntegerField;
    CD_ComissaoNOME: TStringField;
    DS_Comissao: TSQLDataSet;
    CD_ComissaoTIPO: TIntegerField;
    CD_PosPedidoCUSTO: TFloatField;
    CD_PosPedidoDESCONTO: TFloatField;
    CD_PosPedidoTOTAL: TFMTBCDField;
    CD_PosPedidoSALDO: TFloatField;
    CD_PosPedidoDIFERENCA: TFloatField;
    CD_PosPedidoPERCENTUAL: TFloatField;
    CD_PosPedidoQNT: TFloatField;
    CD_PosPedidoCATEGORIA: TStringField;
    CD_PosPedidoID_VENDEDOR: TIntegerField;
    CD_PosPedidoVENDEDOR: TStringField;
    PROV_CAD_COMISSAO: TDataSetProvider;
    CD_CAD_COMISSAO: TClientDataSet;
    DS_CD_CAD_COMISSAO: TDataSource;
    DS_CAD_COMISSAO: TSQLDataSet;
    CD_CAD_COMISSAOID: TIntegerField;
    CD_CAD_COMISSAOVMIN: TFloatField;
    CD_CAD_COMISSAOVMAX: TFloatField;
    CD_CAD_COMISSAOPORCENTAGEM: TFMTBCDField;
    CD_CAD_COMISSAONOME: TStringField;
    CD_CAD_COMISSAOTIPO: TIntegerField;
    CD_CAD_COMISSAOID_ESPECIE: TIntegerField;
    CD_CAD_COMISSAOID_FORMAPAGA: TIntegerField;
    FDConnection1: TFDConnection;
    Query_Clientes: TFDQuery;
    Query_ClientesID_CLIENTE: TIntegerField;
    Query_ClientesNOME: TStringField;
    DS_clientes: TDataSource;
    FDTransaction1: TFDTransaction;
    procedure SQLConnection1AfterConnect(Sender: TObject);
    procedure CD_ComissaoAfterInsert(DataSet: TDataSet);
    procedure CD_ComissaoAfterDelete(DataSet: TDataSet);
    procedure CD_CAD_COMISSAOBeforeInsert(DataSet: TDataSet);
    procedure CD_CAD_COMISSAOAfterInsert(DataSet: TDataSet);
    procedure CD_CAD_COMISSAOAfterPost(DataSet: TDataSet);
    procedure CD_CAD_COMISSAOAfterDelete(DataSet: TDataSet);
    procedure CD_CAD_COMISSAOBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CD_ComissaoAfterPost(DataSet: TDataSet);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFrm_RelComissao, UFrm_CadComissao, UFrmPrincipal, UFrm_CadCom_especie;

{$R *.dfm}

procedure TDM.CD_CAD_COMISSAOAfterDelete(DataSet: TDataSet);
begin
CD_CAD_COMISSAO.ApplyUpdates(0);
end;

procedure TDM.CD_CAD_COMISSAOAfterInsert(DataSet: TDataSet);
begin
CD_CAD_COMISSAOID.AsInteger:=id.FieldByName('gen_id').AsInteger;
CD_CAD_COMISSAOTIPO.AsInteger:=1;

end;

procedure TDM.CD_CAD_COMISSAOAfterPost(DataSet: TDataSet);

begin
      dm.CD_CAD_COMISSAO.ApplyUpdates(0);



end;

procedure TDM.CD_CAD_COMISSAOBeforeDelete(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('delete from REL_COMICAO where id ='+CD_CAD_COMISSAOID.Asstring);

      id.ExecSQL();
end;

procedure TDM.CD_CAD_COMISSAOBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_REL_COMICAO_ID,1) from rdb$database');
      id.open;
end;

procedure TDM.CD_ComissaoAfterDelete(DataSet: TDataSet);
begin
CD_Comissao.ApplyUpdates(0);
end;

procedure TDM.CD_ComissaoAfterInsert(DataSet: TDataSet);
begin


   cd_comissaotipo.AsInteger:=CD_CAD_COMISSAOTIPO.AsInteger;

end;

procedure TDM.CD_ComissaoAfterPost(DataSet: TDataSet);
begin
CD_Comissao.ApplyUpdates(0);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
 Registro : TRegistry;
begin


      Registro := TRegistry.Create;
        Registro.OpenKey('\Software\coliseu\Database',True);
        //DM.MdfeConnection.KeepConnection:=FALSE;
        if ParamStr(1) <> '' Then
           Begin
           if Registro.KeyExists('\Software\coliseu\Conexoes\Conexao' + ParamStr(1)) Then
              Registro.OpenKey('\Software\coliseu\Conexoes\Conexao' + ParamStr(1),True)
              else

           end
           else
           Registro.OpenKey('\Software\coliseu\Database',True);
        If Registro.ReadInteger('Conexao') = 0 Then
           begin
           SQLConnection1.Params.Values['DataBase']:=Registro.ReadString('BancoDados');
           IBDatabase1.DatabaseName :=registro.ReadString('BancoDados');

           end

           else
           begin
              SQLConnection1.Params.Values['DataBase']:= Registro.ReadString('Servidor')+':'+Registro.ReadString('BancoDados');

              Registro := TRegistry.Create;
              Registro.OpenKey('\Software\coliseu\Registro',True);
              Registro.Free;
           end;
           FDConnection1.Params.Values['DataBase']:=SQLConnection1.Params.Values['DataBase'];
           IBDatabase1.DatabaseName:=SQLConnection1.Params.Values['DataBase'];
           IBDatabase1.Open;
           SQLConnection1.Open;
           Emitente.Open;

end;

procedure TDM.FDConnection1AfterConnect(Sender: TObject);
begin
Query_Clientes.Open();
end;



procedure TDM.SQLConnection1AfterConnect(Sender: TObject);
begin
CD_Funcionarios.Open;

end;

end.
