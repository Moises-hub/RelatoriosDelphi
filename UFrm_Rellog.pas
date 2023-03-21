unit UFrm_Rellog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.ExtCtrls, RzPanel, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Vcl.DBCtrls, RLReport;

type
  TFrm_Rellog = class(TForm)
    DT_Relatorio: TSQLDataSet;
    Prov_Relatorio: TDataSetProvider;
    Cli_Relatorio: TClientDataSet;
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    SQLQuery1: TSQLQuery;
    GroupBox1: TGroupBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    DS_Relatorio: TDataSource;
    DBMemo1: TDBMemo;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    Button2: TButton;
    RLLabel8: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RzComboBox3: TRzComboBox;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rellog: TFrm_Rellog;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_Rellog.Button1Click(Sender: TObject);
begin





    Cli_Relatorio.Close;
    Cli_Relatorio.CommandText:='select '+
                              'log.DATA,'+
                               'log.hora, '+
                                'log.processo, '+
                               'log.tabela, '+
                                'log.id_chave, '+
                                'log.computador, '+
                                'log.dados,'+
                                'case '+
                                'when (LOG.processo = 01) then cast(''EXCLUSÃO'' as varchar(20))' +
                                'when (LOG.processo = 02) then cast(''CANCELAMENTO'' as varchar(20))'+
                                'when (LOG.processo = 03) then cast(''ALTERAÇÃO'' as varchar(20)) '+
                                'when (LOG.processo = 04) then cast(''LIQUIDAÇÃO'' as varchar(20))'+
                                'when (LOG.processo = 05) then cast(''INCLUSÃO'' as varchar(20))'+
                                'when (LOG.processo = 06) then cast(''INUTILIZAÇÃO'' as varchar(20))'+
                                'when (LOG.processo = 07) then cast(''CORREÇÃO'' as varchar(20))' +
                                'when (LOG.processo = 08) then cast(''DEVOLUÇÃO'' as varchar(20))'+
                                'when (LOG.processo = 09) then cast(''CLONAGEM'' as varchar(20))  ' +
                                'when (LOG.processo = 10) then cast(''IMPRESSÃO'' as varchar(20))   '+
                                'when (LOG.processo = 11) then cast(''REIMPRESSÃO'' as varchar(20))' +
                                'end,'+
                                'FUNCIONARIOS.nome '+
                                'from log '+
                                'inner join FUNCIONARIOS ON(FUNCIONARIOS.ID_FUNCIONARIO = LOG.ID_USER) '+
                                'WHERE LOG.DATA >:IN AND LOG.DATA <:FN AND FUNCIONARIOS.NOME LIKE '''+RzComboBox1.VALUE+''''+' AND LOG.COMPUTADOR LIKE '''+RzComboBox2.Value+'''';
                                if RzComboBox3.ItemIndex <> 0 then
                                   Cli_Relatorio.CommandText:=Cli_Relatorio.CommandText+' and LOG.processo ='+RzComboBox3.Value;

     Cli_Relatorio.PARAMS[0].AsDate:=RzDateTimeEdit1.Date-1;
     Cli_Relatorio.PARAMS[1].AsDate:=RzDateTimeEdit2.Date+1;

    Cli_Relatorio.OPEN;

end;

procedure TFrm_Rellog.Button2Click(Sender: TObject);
begin
     RLReport1.PreviewModal;
end;

procedure TFrm_Rellog.FormCreate(Sender: TObject);
begin
        RzDateTimeEdit1.Date:=DATE-5;
        RzDateTimeEdit2.Date:=DATE+5;


      if dm.SQLConnection1.Connected=true then
          begin
          RzComboBox1.Items.Add('<<TODOS>>');
          RzComboBox2.Items.Add('<<TODOS>>');


          RzComboBox1.values.Add('%');
          RzComboBox2.values.Add('%');




          SQLQuery1.Close;
          sqlquery1.SQL.Clear;
          sqlquery1.SQL.Add('select '+
                              'LOG.ID_USER, '+
                              'FUNCIONARIOS.NOME '+
                              'from Log INNER JOIN FUNCIONARIOS ON(FUNCIONARIOS.ID_FUNCIONARIO = LOG.ID_USER)'+
                              'GROUP BY LOG.ID_USER, FUNCIONARIOS.NOME');



          SQLQuery1.open;
          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox1.Items.Add(SQLQuery1.FieldByName('NOME').AsString);
            RzComboBox1.Values.Add('%'+SQLQuery1.FieldByName('NOME').AsString+'%');
            SQLQuery1.next;
            end;







          SQLQuery1.Close;
          sqlquery1.SQL.Clear;
          sqlquery1.SQL.Add('select DISTINCT '+
                              'LOG.COMPUTADOR '+
                              'from Log');



          SQLQuery1.open;
          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox2.Items.Add(SQLQuery1.FieldByName('COMPUTADOR').AsString);
            RzComboBox2.VALUES.Add(SQLQuery1.FieldByName('COMPUTADOR').AsString);
            SQLQuery1.next;
            end;


              RzComboBox1.ItemIndex:=0;
              RzComboBox2.ItemIndex:=0;













              RzComboBox1.ItemIndex:=0;
              RzComboBox2.ItemIndex:=0;
          end;
end;

procedure TFrm_Rellog.FormShow(Sender: TObject);
begin
RzComboBox3.ItemIndex := 0;
end;

procedure TFrm_Rellog.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin


      if RLBand2.Color=clWhite then
         RLBand2.Color:=clInfoBk
         else
         RLBand2.Color:=clwhite;

end;

end.
