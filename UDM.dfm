object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 493
  Width = 915
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 112
    Top = 8
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'Database=database.fdb'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    AfterConnect = SQLConnection1AfterConnect
    Left = 32
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 176
    Top = 8
  end
  object Emitente: TSQLDataSet
    CommandText = 'EMPRESA'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 24
    Top = 65
    object EmitenteID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object EmitenteTIPO_ATIVIDADE: TSmallintField
      FieldName = 'TIPO_ATIVIDADE'
    end
    object EmitenteNOME_EMPRESA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object EmitenteRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object EmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object EmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object EmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object EmitenteID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      Precision = 18
      Size = 0
    end
    object EmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object EmitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object EmitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object EmitenteWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object EmitenteFONE1: TStringField
      FieldName = 'FONE1'
      Size = 18
    end
    object EmitenteFONE2: TStringField
      FieldName = 'FONE2'
      Size = 18
    end
    object EmitenteFAX: TStringField
      FieldName = 'FAX'
      Size = 18
    end
    object EmitentePRACA: TStringField
      FieldName = 'PRACA'
      Size = 50
    end
    object EmitenteLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object EmitenteCHAVE1: TStringField
      FieldName = 'CHAVE1'
      Size = 14
    end
    object EmitenteCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 14
    end
    object EmitenteIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object EmitenteTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
    end
    object EmitenteSMTP_ENDERECO: TStringField
      FieldName = 'SMTP_ENDERECO'
      Size = 100
    end
    object EmitenteSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object EmitenteSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
    end
    object EmitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object EmitenteSUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object EmitenteCONTRIB_IPI: TSmallintField
      FieldName = 'CONTRIB_IPI'
    end
    object EmitenteTIPO_MF: TSmallintField
      FieldName = 'TIPO_MF'
    end
    object EmitenteSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object EmitenteREG_TRIBUTARIO: TSmallintField
      FieldName = 'REG_TRIBUTARIO'
    end
    object EmitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object EmitenteIM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object EmitenteSMTP_SSL: TSmallintField
      FieldName = 'SMTP_SSL'
    end
    object EmitenteCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
  end
  object DS_Emitente: TDataSource
    DataSet = Emitente
    Left = 24
    Top = 112
  end
  object Cobranca: TSQLDataSet
    CommandText = 
      'select contas.*, '#13#10'         clientes.nome,'#13#10'         clientes.id' +
      '_cliente,'#13#10'         clientes_dados.endereco, '#13#10'         clientes' +
      '_dados.numero, '#13#10'         clientes_dados.complemento, '#13#10'        ' +
      ' clientes_dados.bairro, '#13#10'         regioes.cidade, '#13#10'         re' +
      'gioes.uf,'#13#10'         clientes_dados.celular,'#13#10'         clientes_d' +
      'ados.fone_res'#13#10'         from contas'#13#10'         left join clientes' +
      ' on(clientes.id_cliente = contas.id_cliente)'#13#10'         left join' +
      ' clientes_dados on(clientes_dados.id_cliente = clientes.id_clien' +
      'te)'#13#10'         left join regioes on(regioes.id_regiao = clientes.' +
      'id_regiao)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 264
    Top = 64
  end
  object CD_Cobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Cobranca'
    Left = 264
    Top = 176
    object CD_CobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_CobrancaID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      Precision = 18
      Size = 0
    end
    object CD_CobrancaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CD_CobrancaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 18
    end
    object CD_CobrancaFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Size = 18
    end
    object CD_CobrancaID_CONTA: TFMTBCDField
      FieldName = 'ID_CONTA'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_CobrancaID_PEDIDO: TFMTBCDField
      FieldName = 'ID_PEDIDO'
      Precision = 18
      Size = 0
    end
    object CD_CobrancaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CD_CobrancaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CD_CobrancaDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CD_CobrancaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 18
    end
    object CD_CobrancaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 18
    end
    object CD_CobrancaID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object CD_CobrancaN_DOC: TStringField
      FieldName = 'N_DOC'
    end
    object CD_CobrancaPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object CD_CobrancaID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
    end
    object CD_CobrancaID_MOEDA: TIntegerField
      FieldName = 'ID_MOEDA'
    end
    object CD_CobrancaJUROS_ANTES: TSingleField
      FieldName = 'JUROS_ANTES'
    end
    object CD_CobrancaJUROS_DEPOIS: TSingleField
      FieldName = 'JUROS_DEPOIS'
    end
    object CD_CobrancaMULTA: TSingleField
      FieldName = 'MULTA'
    end
    object CD_CobrancaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object CD_CobrancaDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object CD_CobrancaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object CD_CobrancaDC: TSmallintField
      FieldName = 'DC'
    end
    object CD_CobrancaBAIXA: TSmallintField
      FieldName = 'BAIXA'
    end
    object CD_CobrancaOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CD_CobrancaSELECIONA: TSmallintField
      FieldName = 'SELECIONA'
    end
    object CD_CobrancaTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_CobrancaID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
    end
    object CD_CobrancaID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
    end
    object CD_CobrancaDESCONTO: TSingleField
      FieldName = 'DESCONTO'
    end
    object CD_CobrancaID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object CD_CobrancaAUTENTICACAO: TIntegerField
      FieldName = 'AUTENTICACAO'
    end
    object CD_CobrancaID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object CD_CobrancaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object CD_CobrancaID_CARTAO: TIntegerField
      FieldName = 'ID_CARTAO'
    end
    object CD_CobrancaVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 18
      Size = 4
    end
    object CD_CobrancaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 18
      Size = 4
    end
    object CD_CobrancaNEGATIVADO: TSmallintField
      FieldName = 'NEGATIVADO'
    end
    object CD_CobrancaDATA_NEGATIVACAO: TDateField
      FieldName = 'DATA_NEGATIVACAO'
    end
    object CD_CobrancaAGENDADO: TSmallintField
      FieldName = 'AGENDADO'
    end
    object CD_CobrancaNOMINAL: TSmallintField
      FieldName = 'NOMINAL'
    end
    object CD_CobrancaDADOS_NOMINAL: TStringField
      FieldName = 'DADOS_NOMINAL'
      Size = 50
    end
    object CD_CobrancaDATA_COMUNICACAO: TDateField
      FieldName = 'DATA_COMUNICACAO'
    end
    object CD_CobrancaDATA_AGENDAMENTO: TDateField
      FieldName = 'DATA_AGENDAMENTO'
    end
    object CD_CobrancaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object CD_CobrancaDETALHADO: TSmallintField
      FieldName = 'DETALHADO'
    end
    object CD_CobrancaID_LIQUIDA_LOTE: TIntegerField
      FieldName = 'ID_LIQUIDA_LOTE'
    end
    object CD_CobrancaMOVIMENTO: TSmallintField
      FieldName = 'MOVIMENTO'
    end
    object CD_CobrancaID_NEGOCIACAO: TIntegerField
      FieldName = 'ID_NEGOCIACAO'
    end
    object CD_CobrancaBAIXAR: TSmallintField
      FieldName = 'BAIXAR'
    end
    object CD_CobrancaID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
    end
    object CD_CobrancaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object CD_CobrancaTIPO_AUT: TSmallintField
      FieldName = 'TIPO_AUT'
    end
    object CD_CobrancaID_CC: TIntegerField
      FieldName = 'ID_CC'
    end
    object CD_CobrancaID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object CD_CobrancaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
    end
    object CD_CobrancaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object CD_CobrancaID_ENTREGA: TIntegerField
      FieldName = 'ID_ENTREGA'
    end
    object CD_CobrancaNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
    end
    object CD_CobrancaID_CEDENTE: TIntegerField
      FieldName = 'ID_CEDENTE'
    end
    object CD_CobrancaDATA_BAIXAR: TDateField
      FieldName = 'DATA_BAIXAR'
    end
    object CD_CobrancaTIPO_BAIXA: TSmallintField
      FieldName = 'TIPO_BAIXA'
    end
    object CD_CobrancaVALOR_NEGOCIADO: TFMTBCDField
      FieldName = 'VALOR_NEGOCIADO'
      Precision = 18
      Size = 2
    end
    object CD_CobrancaCORRECAO_SERASA: TSmallintField
      FieldName = 'CORRECAO_SERASA'
    end
    object CD_CobrancaID_OP: TIntegerField
      FieldName = 'ID_OP'
    end
    object CD_CobrancaDAV: TIntegerField
      FieldName = 'DAV'
    end
    object CD_CobrancaNPV: TIntegerField
      FieldName = 'NPV'
    end
    object CD_CobrancaTIPO_PEDIDO: TSmallintField
      FieldName = 'TIPO_PEDIDO'
    end
    object CD_CobrancaID_USUARIO_BAIXA: TIntegerField
      FieldName = 'ID_USUARIO_BAIXA'
    end
    object CD_CobrancaID_EMPRESA_BAIXA: TIntegerField
      FieldName = 'ID_EMPRESA_BAIXA'
    end
    object CD_CobrancaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_CobrancaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object CD_CobrancaSALDO_MOV: TFMTBCDField
      FieldName = 'SALDO_MOV'
      Precision = 18
      Size = 2
    end
    object CD_CobrancaNOTA_FISCAL_SERV: TStringField
      FieldName = 'NOTA_FISCAL_SERV'
      Size = 18
    end
    object CD_CobrancaSTATUS_ANTERIOR: TSmallintField
      FieldName = 'STATUS_ANTERIOR'
    end
    object CD_CobrancaID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object CD_CobrancaID_ECF: TIntegerField
      FieldName = 'ID_ECF'
    end
    object CD_CobrancaCOO: TStringField
      FieldName = 'COO'
      Size = 6
    end
    object CD_CobrancaCCF: TStringField
      FieldName = 'CCF'
      Size = 6
    end
    object CD_CobrancaGNF: TStringField
      FieldName = 'GNF'
      Size = 6
    end
    object CD_CobrancaCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object CD_CobrancaCRZ: TStringField
      FieldName = 'CRZ'
      Size = 6
    end
    object CD_CobrancaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object CD_CobrancaREMESSA: TSmallintField
      FieldName = 'REMESSA'
    end
    object CD_CobrancaID_LAN_CHEQUE: TIntegerField
      FieldName = 'ID_LAN_CHEQUE'
    end
    object CD_CobrancaVALOR_SALDO: TFMTBCDField
      FieldName = 'VALOR_SALDO'
      Precision = 18
      Size = 2
    end
    object CD_CobrancaREIMPRESSO: TSmallintField
      FieldName = 'REIMPRESSO'
    end
    object CD_CobrancaDIAS_CARENCIA: TSmallintField
      FieldName = 'DIAS_CARENCIA'
    end
    object CD_CobrancaDESCONTO_VALOR: TFMTBCDField
      FieldName = 'DESCONTO_VALOR'
      Precision = 18
      Size = 2
    end
    object CD_CobrancaDESCONTO_DATA: TDateField
      FieldName = 'DESCONTO_DATA'
    end
    object CD_CobrancaNFCE_NUMERO: TStringField
      FieldName = 'NFCE_NUMERO'
      Size = 18
    end
    object CD_CobrancaID_OPERADORA: TIntegerField
      FieldName = 'ID_OPERADORA'
    end
    object CD_CobrancaID_BANDEIRA: TIntegerField
      FieldName = 'ID_BANDEIRA'
    end
    object CD_CobrancaINTEGRA_BOLETO: TStringField
      FieldName = 'INTEGRA_BOLETO'
    end
    object CD_CobrancaID_CLIENTE_1: TFMTBCDField
      FieldName = 'ID_CLIENTE_1'
      Precision = 18
      Size = 0
    end
    object CD_CobrancaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CD_CobrancaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_CobrancaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_CobrancaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CD_CobrancaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_CobrancaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_CobrancaDATA_BOLETO: TDateField
      FieldName = 'DATA_BOLETO'
    end
  end
  object DS_CD_Cobranca: TDataSource
    DataSet = CD_Cobranca
    Left = 264
    Top = 232
  end
  object Prov_Cobranca: TDataSetProvider
    DataSet = Cobranca
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 120
  end
  object Pos_Pedido: TSQLDataSet
    CommandText = 
      'select sum(REL_IC_VENDAS5_DESC_ITEM.valor_custo)as custo,'#13#10'sum(R' +
      'EL_IC_VENDAS5_DESC_ITEM.valor_desconto)as desconto,'#13#10'sum(REL_IC_' +
      'VENDAS5_DESC_ITEM.valor_total)as total,'#13#10'sum(REL_IC_VENDAS5_DESC' +
      '_ITEM.saldo)as saldo,'#13#10'sum(REL_IC_VENDAS5_DESC_ITEM.diferenca)as' +
      ' diferenca,'#13#10'sum(REL_IC_VENDAS5_DESC_ITEM.percentual)as percentu' +
      'al,'#13#10'sum(REL_IC_VENDAS5_DESC_ITEM.QTDE)as qnt,'#13#10'REL_IC_VENDAS5_D' +
      'ESC_ITEM.categoria,'#13#10'REL_IC_VENDAS5_DESC_ITEM.id_vendedor,'#13#10'REL_' +
      'IC_VENDAS5_DESC_ITEM.vendedor'#13#10' from REL_IC_VENDAS5_DESC_ITEM'#13#10'g' +
      'roup by  categoria, vendedor, id_vendedor'#13#10'order by vendedor'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 176
    Top = 64
  end
  object CD_PosPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_PosPed'
    Left = 168
    Top = 176
    object CD_PosPedidoCUSTO: TFloatField
      FieldName = 'CUSTO'
      currency = True
    end
    object CD_PosPedidoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object CD_PosPedidoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 18
      Size = 4
    end
    object CD_PosPedidoSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object CD_PosPedidoDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      currency = True
    end
    object CD_PosPedidoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object CD_PosPedidoQNT: TFloatField
      FieldName = 'QNT'
    end
    object CD_PosPedidoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object CD_PosPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object CD_PosPedidoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
  end
  object DS_PosPedido: TDataSource
    DataSet = CD_PosPedido
    Left = 168
    Top = 232
  end
  object Prov_PosPed: TDataSetProvider
    DataSet = Pos_Pedido
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 168
    Top = 120
  end
  object Permissao: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 104
    Top = 64
  end
  object ID: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 128
  end
  object Funcionarios: TSQLDataSet
    CommandText = 'select * from funcionarios where status =1 and tipo = 3'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 632
    Top = 64
  end
  object Prov_Funcionarios: TDataSetProvider
    DataSet = Funcionarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 632
    Top = 120
  end
  object CD_Funcionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Funcionarios'
    Left = 632
    Top = 176
    object CD_FuncionariosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_FuncionariosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object DS_CD_Funcionarios: TDataSource
    DataSet = CD_Funcionarios
    Left = 632
    Top = 232
  end
  object Prov_Comissao: TDataSetProvider
    DataSet = DS_Comissao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 368
    Top = 120
  end
  object CD_Comissao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = DS_CD_CAD_COMISSAO
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_Comissao'
    AfterInsert = CD_ComissaoAfterInsert
    AfterPost = CD_ComissaoAfterPost
    AfterDelete = CD_ComissaoAfterDelete
    Left = 368
    Top = 176
    object CD_ComissaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_ComissaoVMIN: TFloatField
      FieldName = 'VMIN'
    end
    object CD_ComissaoVMAX: TFloatField
      FieldName = 'VMAX'
    end
    object CD_ComissaoPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 18
      Size = 2
    end
    object CD_ComissaoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CD_ComissaoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = CD_Funcionarios
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 70
      Lookup = True
    end
    object CD_ComissaoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object DS_CD_Comissao: TDataSource
    DataSet = CD_Comissao
    Left = 360
    Top = 232
  end
  object DS_Comissao: TSQLDataSet
    CommandText = 'select * from rel_comicao'#13#10'order by nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 376
    Top = 64
  end
  object PROV_CAD_COMISSAO: TDataSetProvider
    DataSet = DS_CAD_COMISSAO
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 496
    Top = 120
  end
  object CD_CAD_COMISSAO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROV_CAD_COMISSAO'
    BeforeInsert = CD_CAD_COMISSAOBeforeInsert
    AfterInsert = CD_CAD_COMISSAOAfterInsert
    AfterPost = CD_CAD_COMISSAOAfterPost
    BeforeDelete = CD_CAD_COMISSAOBeforeDelete
    AfterDelete = CD_CAD_COMISSAOAfterDelete
    Left = 504
    Top = 176
    object CD_CAD_COMISSAOID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_CAD_COMISSAOVMIN: TFloatField
      FieldName = 'VMIN'
    end
    object CD_CAD_COMISSAOVMAX: TFloatField
      FieldName = 'VMAX'
    end
    object CD_CAD_COMISSAOPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 18
      Size = 2
    end
    object CD_CAD_COMISSAONOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_CAD_COMISSAOTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object CD_CAD_COMISSAOID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object CD_CAD_COMISSAOID_FORMAPAGA: TIntegerField
      FieldName = 'ID_FORMAPAGA'
    end
  end
  object DS_CD_CAD_COMISSAO: TDataSource
    DataSet = CD_CAD_COMISSAO
    Left = 504
    Top = 232
  end
  object DS_CAD_COMISSAO: TSQLDataSet
    CommandText = 'select * from REL_CAD_COMICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 504
    Top = 64
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    Left = 40
    Top = 224
  end
  object Query_Clientes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT id_cliente, nome from clientes'
      'ORDER BY NOME')
    Left = 40
    Top = 280
    object Query_ClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
  end
  object DS_clientes: TDataSource
    DataSet = Query_Clientes
    Left = 36
    Top = 336
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 120
    Top = 288
  end
end
