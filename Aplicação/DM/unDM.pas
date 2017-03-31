unit unDM;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable, DBClient,
  MConnect, ADODB, Provider;

type
  TDM = class(TDataModule)
    zConnection: TZConnection;
    qryUsuarios: TZQuery;
    qryUsuariosCODIGO: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosEMAIL: TStringField;
    qryUsuariosSENHA: TStringField;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosCODIGO: TIntegerField;
    cdsUsuariosNOME: TStringField;
    cdsUsuariosEMAIL: TStringField;
    cdsUsuariosSENHA: TStringField;
    qryTiposCampos: TZQuery;
    dspTiposCampos: TDataSetProvider;
    cdsTiposCampos: TClientDataSet;
    qryTiposCamposCODIGO: TIntegerField;
    qryTiposCamposDESCRICAO: TStringField;
    cdsTiposCamposCODIGO: TIntegerField;
    cdsTiposCamposDESCRICAO: TStringField;
    qryCampos: TZQuery;
    dspCampos: TDataSetProvider;
    cdsCampos: TClientDataSet;
    qryContatos: TZQuery;
    dspContatos: TDataSetProvider;
    cdsContatos: TClientDataSet;
    qryContatosCampos: TZQuery;
    dspContatosCampos: TDataSetProvider;
    cdsContatosCampos: TClientDataSet;
    qryContatosCamposCODIGO: TIntegerField;
    qryContatosCamposCODIGO_CONTATO: TIntegerField;
    qryContatosCamposCODIGO_CAMPO: TIntegerField;
    qryContatosCamposVALOR: TStringField;
    qryContatosCamposDATA_CADASTRO: TDateTimeField;
    cdsContatosCamposCODIGO: TIntegerField;
    cdsContatosCamposCODIGO_CONTATO: TIntegerField;
    cdsContatosCamposCODIGO_CAMPO: TIntegerField;
    cdsContatosCamposVALOR: TStringField;
    cdsContatosCamposDATA_CADASTRO: TDateTimeField;
    qryExecutar: TZQuery;
    qryContatosCODIGO: TIntegerField;
    qryContatosCODIGO_USUARIO: TIntegerField;
    qryContatosNOME: TStringField;
    qryContatosEMAIL: TStringField;
    qryContatosDATA_CADASTRO: TDateTimeField;
    cdsContatosCODIGO: TIntegerField;
    cdsContatosCODIGO_USUARIO: TIntegerField;
    cdsContatosNOME: TStringField;
    cdsContatosEMAIL: TStringField;
    cdsContatosDATA_CADASTRO: TDateTimeField;
    qryCamposCODIGO: TIntegerField;
    qryCamposCODIGO_USUARIO: TIntegerField;
    qryCamposCODIGO_TIPO_CAMPO: TIntegerField;
    qryCamposNOME: TStringField;
    qryCamposdesc_tipo_campo: TStringField;
    cdsCamposCODIGO: TIntegerField;
    cdsCamposCODIGO_USUARIO: TIntegerField;
    cdsCamposCODIGO_TIPO_CAMPO: TIntegerField;
    cdsCamposNOME: TStringField;
    cdsCamposdesc_tipo_campo: TStringField;
    qryCamposConfigContato: TZQuery;
    dspCamposConfigContato: TDataSetProvider;
    cdsCamposConfigContato: TClientDataSet;
    qryCamposConfigContatocodigo_campo: TIntegerField;
    qryCamposConfigContatonome_campo: TStringField;
    qryCamposConfigContatocodigo_tipo_campo: TIntegerField;
    qryCamposConfigContatodescricao_tipo_campo: TStringField;
    qryCamposConfigContatocodigo_contato_campo: TIntegerField;
    qryCamposConfigContatocodigo_contato: TIntegerField;
    qryCamposConfigContatovalor: TStringField;
    cdsCamposConfigContatocodigo_campo: TIntegerField;
    cdsCamposConfigContatonome_campo: TStringField;
    cdsCamposConfigContatocodigo_tipo_campo: TIntegerField;
    cdsCamposConfigContatodescricao_tipo_campo: TStringField;
    cdsCamposConfigContatocodigo_contato_campo: TIntegerField;
    cdsCamposConfigContatocodigo_contato: TIntegerField;
    cdsCamposConfigContatovalor: TStringField;
    qryCamposDATA_CADASTRO: TDateTimeField;
    cdsCamposDATA_CADASTRO: TDateTimeField;
    qryCriarCamposConfig: TZQuery;
    dspCriarCamposConfig: TDataSetProvider;
    cdsCriarCamposConfig: TClientDataSet;
    qryCriarCamposConfigcodigo_campo: TIntegerField;
    qryCriarCamposConfignome_campo: TStringField;
    qryCriarCamposConfigcodigo_tipo_campo: TIntegerField;
    qryCriarCamposConfigdescricao_tipo_campo: TStringField;
    cdsCriarCamposConfigcodigo_campo: TIntegerField;
    cdsCriarCamposConfignome_campo: TStringField;
    cdsCriarCamposConfigcodigo_tipo_campo: TIntegerField;
    cdsCriarCamposConfigdescricao_tipo_campo: TStringField;
    procedure cdsCamposNewRecord(DataSet: TDataSet);
    procedure cdsContatosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  unUsuarioSingleton, unConstantes;

{$R *.dfm}

procedure TDM.cdsCamposNewRecord(DataSet: TDataSet);
begin
  cdsCampos.FieldByName('codigo_usuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  cdsCampos.FieldByName('codigo').AsInteger := nNUMERO_INDEFINIDO;
  cdsCampos.FieldByName('data_cadastro').AsDateTime := Now;
end;

procedure TDM.cdsContatosNewRecord(DataSet: TDataSet);
begin
  cdsContatos.FieldByName('codigo').AsInteger := nNUMERO_INDEFINIDO;
  cdsContatos.FieldByName('codigo_usuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  cdsContatos.FieldByName('data_cadastro').AsDateTime := Now;
end;

end.
