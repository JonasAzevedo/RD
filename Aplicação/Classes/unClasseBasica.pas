unit unClasseBasica;

interface

uses
  unFuncoes, ZDataset, unDM, Provider, DBClient, DB;

  type TBasica = class
    private
      FnCodigo: Integer;
      FsMensagem: String;

      function GetCodigo: Integer;
      function GetMensagem: String;
      function GetCdsDados: TClientDataSet;
      function GetFieldCodigo: TField;
      procedure SetMensagem(const psMensagem: String);
    protected
      FoFuncoes: TFuncoes;
      FoQryExecutar: TZQuery;
      FoQryDados: TZQuery;
      FoDspDados: TDataSetProvider;
      FoCdsDados: TClientDataSet;
      FoFieldCodigo: TField;

      procedure SetCodigo(const piCodigo: Integer);
      function Atualizar: Boolean; virtual; abstract;
      function Inserir: Boolean; virtual; abstract;
      function ValidarQryExecutarEstahAtivo: Boolean;
      function ValidarQryDadosEstahAtivo: Boolean;
      procedure IniciarTransacao;
      procedure ComitarTransacao;
      procedure RollbackTransacao;
      procedure DefinirComponentesAcessoDados; virtual;
      procedure DefinirFieldsAcessoDados; virtual;
      procedure DefinirComponentesDadosParaNil; virtual;
      function ValidarFieldsAtivos: Boolean; virtual;
      function ValidarPodeSalvar: Boolean;
    public
      property prpCodigo: Integer read GetCodigo;
      property prpMensagem: String read GetMensagem write SetMensagem;
      property prpCdsDados: TClientDataSet read GetCdsDados;
      property prpFieldCodigo: TField read GetFieldCodigo;

      constructor Create;
      destructor Destroy; override;
      procedure Limpar; virtual;
      function Editar: Boolean; virtual; abstract;
      function Novo: Boolean; virtual; abstract;
      function Salvar: Boolean; virtual;
      function Deletar(const piCodigo: Integer): Boolean; virtual; abstract;
      procedure DeletarCdsDados; virtual; abstract;
      procedure Cancelar; virtual; abstract;
      function ValidarCdsDadosEstahAtivo: Boolean;
      function ValidarFieldCodigoEstahAtivo: Boolean;      
  end;

implementation

uses
  unConstantes, SysUtils;

{ TBasica }

constructor TBasica.Create;
begin
  inherited;
  FoFuncoes := TFuncoes.Create;
  Limpar;
  DefinirComponentesDadosParaNil;
  DefinirComponentesAcessoDados;
  DefinirFieldsAcessoDados;
end;

destructor TBasica.Destroy;
begin
  DefinirComponentesDadosParaNil;
  if Assigned(FoFuncoes) then
    FreeAndNil(FoFuncoes);
  inherited;
end;

function TBasica.GetCodigo: Integer;
begin
  Result := FnCodigo;
end;

function TBasica.GetMensagem: String;
begin
  Result := FsMensagem;
end;

function TBasica.GetCdsDados: TClientDataSet;
begin
  Result := FoCdsDados;
end;

function TBasica.GetFieldCodigo: TField;
begin
  Result := FoFieldCodigo;
end;

procedure TBasica.SetCodigo(const piCodigo: Integer);
begin
  FnCodigo := piCodigo;
end;

procedure TBasica.SetMensagem(const psMensagem: String);
begin
  FsMensagem := psMensagem;
end;

procedure TBasica.Limpar;
begin
  FnCodigo := nNUMERO_INDEFINIDO;
  FsMensagem := sSTRING_INDEFINIDO;
end;

function TBasica.Salvar: Boolean;
begin
  Result := ValidarPodeSalvar;
end;

procedure TBasica.DefinirComponentesAcessoDados;
begin
  FoQryExecutar := DM.qryExecutar;
end;

procedure TBasica.DefinirFieldsAcessoDados;
begin
  if not(ValidarCdsDadosEstahAtivo) then
    Exit;

  if (FoCdsDados.FindField(sFIELD_CODIGO) <> nil) then
  FoFieldCodigo := FoCdsDados.FindField(sFIELD_CODIGO);
end;

procedure TBasica.DefinirComponentesDadosParaNil;
begin
  FoQryExecutar := nil;
  FoQryDados := nil;
  FoCdsDados := nil;
  FoFieldCodigo := nil;
end;

function TBasica.ValidarQryExecutarEstahAtivo: Boolean;
begin
  Result := (FoQryExecutar <> nil);
end;

function TBasica.ValidarQryDadosEstahAtivo: Boolean;
begin
  Result := (FoQryDados <> nil);
end;

function TBasica.ValidarCdsDadosEstahAtivo: Boolean;
begin
  Result := (FoCdsDados <> nil);
end;

procedure TBasica.IniciarTransacao;
begin
  DM.zConnection.StartTransaction;
end;

procedure TBasica.ComitarTransacao;
begin
  DM.zConnection.Commit;
end;

procedure TBasica.RollbackTransacao;
begin
  DM.zConnection.Rollback;
end;

function TBasica.ValidarFieldCodigoEstahAtivo: Boolean;
begin
  Result := Assigned(FoFieldCodigo);
end;

function TBasica.ValidarFieldsAtivos: Boolean;
begin
  Result := ValidarFieldCodigoEstahAtivo;
end;

function TBasica.ValidarPodeSalvar: Boolean;
begin
  Result := False;

  if not(ValidarCdsDadosEstahAtivo) then
  begin
    prpMensagem := sMSG_OCORREU_PARA_ACESSAR_DADOS;
    Exit;
  end;

  if not(ValidarFieldsAtivos) then
  begin
    prpMensagem := sMSG_OCORREU_PARA_ACESSAR_DADOS;
    Exit;
  end;

  if FoCdsDados.IsEmpty then
  begin
    prpMensagem := sMSG_NAO_HA_DADOS_PARA_SALVAR;
    Exit;
  end;

  Result := True;
end;

end.
