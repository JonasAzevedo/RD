unit unClasseBasica;

interface

uses
  unFuncoes, unDM, ZDataset, Provider, DBClient, DB;

  type TBasica = class
    private
      FnCodigo: Integer;
      FsMensagem: String;

      function GetCodigo: Integer;
      function GetMensagem: String;
      function GetGenerator: String;
      function GetCdsDados: TClientDataSet;
      function GetFieldCodigo: TField;
      procedure SetMensagem(const psMensagem: String);
    protected
      FsGenerator: String;
      FoFuncoes: TFuncoes;
      FoQryExecutar: TZQuery;
      FoQryDados: TZQuery;
      FoDspDados: TDataSetProvider;
      FoCdsDados: TClientDataSet;
      FoFieldCodigo: TField;

      procedure SetCodigo(const pnCodigo: Integer);
      function Atualizar: Integer; virtual; abstract;
      function Inserir: Integer; virtual; abstract;
      function ValidarQryExecutarEstahAtivo: Boolean;
      function ValidarQryDadosEstahAtivo: Boolean;
      procedure IniciarTransacao;
      procedure ComitarTransacao;
      procedure RollbackTransacao;
      procedure DefinirComponentesAcessoDados; virtual;
      procedure DefinirFieldsAcessoDados; virtual;
      procedure DefinirComponentesDadosParaNil; virtual;
      function ValidarFieldsAtivos: Boolean; virtual;
      function ProcessarSalvamento: Integer; virtual;
      procedure DefinirGenerator(const psGenerator: String);
      function ValidarPodeSalvar: Boolean;
      function PegarCodigoUltimoRegistro: Integer;
      procedure AtualizarCodigoRegistroInserido(const pnCodigo: Integer);
    public
      property prpCodigo: Integer read GetCodigo;
      property prpMensagem: String read GetMensagem write SetMensagem;
      property prpGenerator: String read GetGenerator;
      property prpCdsDados: TClientDataSet read GetCdsDados;
      property prpFieldCodigo: TField read GetFieldCodigo;

      constructor Create;
      destructor Destroy; override;
      procedure Limpar; virtual;
      function Editar: Boolean; virtual; abstract;
      function Novo: Boolean; virtual; abstract;
      function Salvar: Boolean; virtual;
      function Deletar(const pnCodigo: Integer): Boolean; virtual; abstract;
      procedure Cancelar; virtual; abstract;
      procedure DeletarCdsDados;
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
  DefinirGenerator(sSTRING_INDEFINIDO);
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

function TBasica.GetGenerator: String;
begin
  Result := FsGenerator;
end;

function TBasica.GetCdsDados: TClientDataSet;
begin
  Result := FoCdsDados;
end;

function TBasica.GetFieldCodigo: TField;
begin
  Result := FoFieldCodigo;
end;

procedure TBasica.SetCodigo(const pnCodigo: Integer);
begin
  FnCodigo := pnCodigo;
end;

procedure TBasica.SetMensagem(const psMensagem: String);
begin
  FsMensagem := psMensagem;
end;

procedure TBasica.Limpar;
begin
  FnCodigo := nNUMERO_INDEFINIDO;
  prpMensagem := sSTRING_INDEFINIDO;
end;

function TBasica.Salvar: Boolean;
var
  nProcessarSalvamento: Integer;
begin
  nProcessarSalvamento := ProcessarSalvamento;
  Result := (nProcessarSalvamento <> nNUMERO_INDEFINIDO) and
    (nProcessarSalvamento <> nCANCELA_SALVAMENTO);
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

procedure TBasica.DeletarCdsDados;
begin
  if not(ValidarCdsDadosEstahAtivo) then
    Exit;

  FoCdsDados.Delete;
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

function TBasica.ProcessarSalvamento: Integer;
begin
  Result := nPROCESSANDO_SALVAMENTO;

  if not(ValidarPodeSalvar) then
    Result := nCANCELA_SALVAMENTO;
end;

procedure TBasica.DefinirGenerator(const psGenerator: String);
begin
  FsGenerator := psGenerator;
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

  (*if FoCdsDados.IsEmpty then
  begin
    prpMensagem := sMSG_NAO_HA_DADOS_PARA_SALVAR;
    Exit;
  end;*)

  Result := True;
end;

function TBasica.PegarCodigoUltimoRegistro: Integer;
begin
  Result := nNUMERO_INDEFINIDO;
  FoQryExecutar.Close;
  FoQryExecutar.SQL.Clear;
  FoQryExecutar.SQL.Add('SELECT gen_id(' + prpGenerator + ', 0) FROM RDB$DATABASE');
  FoQryExecutar.Open;

  if (FoQryExecutar.IsEmpty) then
    Exit;

  Result := FoQryExecutar.FieldByName('gen_id').AsInteger;
end;

procedure TBasica.AtualizarCodigoRegistroInserido(const pnCodigo: Integer);
begin
  if not(ValidarCdsDadosEstahAtivo) then
    Exit;

  if not(ValidarFieldCodigoEstahAtivo) then
    Exit;

  prpCdsDados.Edit;
  prpFieldCodigo.AsInteger := pnCodigo;
  prpCdsDados.Post;
end;

end.
