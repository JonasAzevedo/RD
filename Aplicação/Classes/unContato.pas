unit unContato;

interface

uses
  unClasseBasica, ZDataset, DB, DBClient;

  type TContato = class(TBasica)
    private
      FsNome: String;
      FsEmail: String;
      FoQryCamposConfigContato: TZQuery;
      FoCdsCamposConfigContato: TClientDataSet;
      FoQryCriarCamposConfig: TZQuery;
      FoCdsCriarCamposConfig: TClientDataSet;
      FoFieldCodigoUsuario: TField;
      FoFieldNome: TField;
      FoFieldEmail: TField;

      function GetNome: String;
      function GetEmail: String;
      function GetCdsCamposConfigContato: TClientDataSet;
      function GetCdsCriarCamposConfig: TClientDataSet;
      procedure SetNome(const psNome: String);
      procedure SetEmail(const psEmail: String);
    protected
      function Atualizar: Boolean; override;
      function Inserir: Boolean; override;
      procedure DefinirComponentesAcessoDados; override;
      procedure DefinirFieldsAcessoDados; override;
      procedure DefinirComponentesDadosParaNil; override;
      function ValidarFieldsAtivos: Boolean; override;
    public
      property prpNome: String read GetNome write SetNome;
      property prpEmail: String read GetEmail write SetEmail;
      property prpCdsCamposConfigContato: TClientDataSet read GetCdsCamposConfigContato;
      property prpCdsCriarCamposConfig: TClientDataSet read GetCdsCriarCamposConfig;

      constructor Create;
      destructor Destroy; override;
      procedure Limpar; override;
      function Editar: Boolean; override;
      function Novo: Boolean;override;
      function Salvar: Boolean; override;
      function Deletar(const piCodigo: Integer): Boolean; override;
      procedure DeletarCdsDados; override;
      procedure Cancelar; override;
      procedure CarregarContatosParaCadastro;
      function ValidarCdsCamposConfigContatoEstahAtivo: Boolean;
      function ValidarCdsCriarCamposConfig: Boolean;
      procedure CarregarCamposConfiguraveis;
      procedure CarregarValoresCamposConfiguraveis(const piCodigoContato: Integer);
  end;

implementation

uses
  unConstantes, unDM,  unUsuarioSingleton;

{ TContato }

constructor TContato.Create;
begin
  inherited;
end;

destructor TContato.Destroy;
begin
  inherited;
end;

function TContato.GetEmail: String;
begin
  Result := FsEmail;
end;

function TContato.GetCdsCamposConfigContato: TClientDataSet;
begin
  Result := FoCdsCamposConfigContato;
end;

function TContato.GetCdsCriarCamposConfig: TClientDataSet;
begin
  Result := FoCdsCriarCamposConfig
end;

function TContato.GetNome: String;
begin
  Result := FsNome;
end;

procedure TContato.SetEmail(const psEmail: String);
begin
  FsEmail := psEmail;
end;

procedure TContato.SetNome(const psNome: String);
begin
  FsNome := psNome;
end;

procedure TContato.Limpar;
begin
  inherited;
  prpNome := sSTRING_INDEFINIDO;
  prpEmail := sSTRING_INDEFINIDO;
end;

function TContato.Editar: Boolean;
begin
  Result := False;
  if not(ValidarCdsDadosEstahAtivo) then
    Exit;

  FoCdsDados.Edit;
  Result := True;
end;

function TContato.Novo: Boolean;
begin
  Result := False;
  if not(ValidarCdsDadosEstahAtivo) then
    Exit;

  FoCdsDados.Append;
  Result := True;
end;

function TContato.Salvar: Boolean;
begin
  Result := inherited Salvar;

  if not(Result) then
    Exit;

  IniciarTransacao;
  try
    try
      FoCdsDados.First;
      while not(FoCdsDados.Eof) do
      begin
        if (FoFieldCodigo.AsInteger = nNUMERO_INDEFINIDO) then
          Result := Inserir
        else
          Result := Atualizar;

        if not(Result) then
        begin
          prpMensagem := sMSG_OCORREU_ERRO_SALVAR_CONTATO;
          Exit;
        end;

        FoCdsDados.Next;
      end;
    finally
      if not(Result) then
        RollbackTransacao
      else
        ComitarTransacao;
    end;
  except
    prpMensagem := sMSG_OCORREU_ERRO_SALVAR_CONTATO;
    RollbackTransacao;
  end;

  Result := True;
end;

function TContato.Deletar(const piCodigo: Integer): Boolean;
begin
  Result := False;
  try
    IniciarTransacao;

    //xxxxx - deletar todos os campos do contato

    FoQryExecutar.Close;
    FoQryExecutar.SQL.Clear;
    FoQryExecutar.SQL.Add('DELETE FROM contatos ');
    FoQryExecutar.SQL.Add('WHERE codigo = :pCodigo');
    FoQryExecutar.ParamByName('pCodigo').AsInteger := piCodigo;
    FoQryExecutar.ExecSQL;

    ComitarTransacao;
    Result := True;
  except
    prpMensagem := sMSG_OCORREU_ERRO_DELETAR_CONTATO;
    RollbackTransacao;
  end;
end;

procedure TContato.DeletarCdsDados;
begin
//xxxxxxxxxf
end;

procedure TContato.Cancelar;
begin
  FoCdsDados.Cancel;
end;

function TContato.Atualizar: Boolean;
begin
  Result := False;
  FoQryExecutar.Close;
  FoQryExecutar.SQL.Clear;
  FoQryExecutar.SQL.Add('UPDATE contatos ');
  FoQryExecutar.SQL.Add('SET nome = :pNome, email = :pEmail ');
  FoQryExecutar.SQL.Add('WHERE codigo = :pCodigo');
  FoQryExecutar.ParamByName('pNome').AsString := FoFieldNome.AsString;
  FoQryExecutar.ParamByName('pEmail').AsString := FoFieldEmail.AsString;
  FoQryExecutar.ParamByName('pCodigo').AsInteger := FoFieldCodigo.AsInteger;
  FoQryExecutar.ExecSQL;
  Result := True;
end;

function TContato.Inserir: Boolean;
begin
  Result := False;
  FoQryExecutar.Close;
  FoQryExecutar.SQL.Clear;
  FoQryExecutar.SQL.Add('INSERT INTO contatos (codigo_usuario, nome, email) ');
  FoQryExecutar.SQL.Add('VALUES (:pCodigoUsuario, :pNome, :pEmail)');
  FoQryExecutar.ParamByName('pCodigoUsuario').AsInteger := FoFieldCodigoUsuario.AsInteger;
  FoQryExecutar.ParamByName('pNome').AsString := FoFieldNome.AsString;
  FoQryExecutar.ParamByName('pEmail').AsString := FoFieldEmail.AsString;
  FoQryExecutar.ExecSQL;
  Result := True;
end;

procedure TContato.DefinirComponentesAcessoDados;
begin
  inherited;
  FoQryDados := DM.qryContatos;
  FoDspDados := DM.dspContatos;
  FoCdsDados := DM.cdsContatos;
  FoQryCamposConfigContato := DM.qryCamposConfigContato;
  FoCdsCamposConfigContato := DM.cdsCamposConfigContato;
  FoQryCriarCamposConfig := DM.qryCriarCamposConfig;
  FoCdsCriarCamposConfig := DM.cdsCriarCamposConfig;
end;

procedure TContato.DefinirFieldsAcessoDados;
begin
  inherited;

  if (FoCdsDados.FindField(sFIELD_CONTATO_CODIGO_USUARIO) <> nil) then
    FoFieldCodigoUsuario := FoCdsDados.FindField(sFIELD_CONTATO_CODIGO_USUARIO);

  if (FoCdsDados.FindField(sFIELD_CONTATO_NOME) <> nil) then
    FoFieldNome := FoCdsDados.FindField(sFIELD_CONTATO_NOME);

  if (FoCdsDados.FindField(sFIELD_CONTATO_EMAIL) <> nil) then
    FoFieldEmail := FoCdsDados.FindField(sFIELD_CONTATO_EMAIL);
end;

procedure TContato.DefinirComponentesDadosParaNil;
begin
  inherited;
  FoQryCamposConfigContato := nil;
  FoCdsCamposConfigContato := nil;
  FoQryCriarCamposConfig := nil;
  FoCdsCriarCamposConfig := nil;
  FoFieldCodigoUsuario := nil;
  FoFieldNome := nil;
  FoFieldEmail := nil;
end;

function TContato.ValidarFieldsAtivos: Boolean;
begin
  Result := inherited ValidarFieldsAtivos;
  if not(Result) then
    Exit;

  Result := (Assigned(FoFieldCodigoUsuario)) and (Assigned(FoFieldNome))
    and (Assigned(FoFieldEmail));
end;

procedure TContato.CarregarContatosParaCadastro;
begin
  FoCdsDados.Close;
  FoQryDados.Close;
  FoQryDados.SQL.Clear;
  FoQryDados.SQL.Add('SELECT C.codigo, C.codigo_usuario, C.nome, C.email, C.data_cadastro ');
  FoQryDados.SQL.Add('FROM contatos C ');
  FoQryDados.SQL.Add('WHERE C.codigo_usuario = :pCodigoUsuario');
  FoQryDados.ParamByName('pCodigoUsuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  FoQryDados.Open;
  FoCdsDados.Open;
end;

function TContato.ValidarCdsCamposConfigContatoEstahAtivo: Boolean;
begin
  Result := (FoCdsCamposConfigContato <> nil);
end;

function TContato.ValidarCdsCriarCamposConfig: Boolean;
begin
  Result := (FoCdsCriarCamposConfig <> nil);
end;

procedure TContato.CarregarCamposConfiguraveis;
begin
  FoCdsCriarCamposConfig.Close;
  FoQryCriarCamposConfig.Close;
  FoQryCriarCamposConfig.SQL.Clear;
  FoQryCriarCamposConfig.SQL.Add('SELECT C.codigo AS "codigo_campo", C.nome AS "nome_campo", ');
  FoQryCriarCamposConfig.SQL.Add('TC.codigo AS "codigo_tipo_campo", TC.descricao AS "descricao_tipo_campo" ');
  FoQryCriarCamposConfig.SQL.Add('FROM campos C ');
  FoQryCriarCamposConfig.SQL.Add('JOIN "TIPOS_ CAMPOS" TC ON C.codigo_tipo_campo = TC.codigo ');
  FoQryCriarCamposConfig.SQL.Add('WHERE C.codigo_usuario = :pCodigoUsuario');
  FoQryCriarCamposConfig.ParamByName('pCodigoUsuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  FoQryCriarCamposConfig.Open;
  FoCdsCriarCamposConfig.Open;
end;

procedure TContato.CarregarValoresCamposConfiguraveis(const piCodigoContato: Integer);
begin
  FoCdsCamposConfigContato.Close;
  FoQryCamposConfigContato.Close;
  FoQryCamposConfigContato.SQL.Clear;
  FoQryCamposConfigContato.SQL.Add('SELECT C.codigo AS "codigo_campo", C.nome AS "nome_campo", ');
  FoQryCamposConfigContato.SQL.Add('TC.codigo AS "codigo_tipo_campo", TC.descricao AS "descricao_tipo_campo", ');
  FoQryCamposConfigContato.SQL.Add('CC.codigo AS "codigo_contato_campo", CC.codigo_contato AS "codigo_contato", CC.valor AS "valor" ');
  FoQryCamposConfigContato.SQL.Add('FROM campos C ');
  FoQryCamposConfigContato.SQL.Add('JOIN "TIPOS_ CAMPOS" TC ON C.codigo_tipo_campo = TC.codigo ');
  FoQryCamposConfigContato.SQL.Add('LEFT JOIN contato_campo CC ON (C.codigo = CC.codigo_campo AND CC.codigo_contato = :pCodigoContato) ');
  FoQryCamposConfigContato.SQL.Add('WHERE C.codigo_usuario = :pCodigoUsuario');
  FoQryCamposConfigContato.ParamByName('pCodigoUsuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  FoQryCamposConfigContato.ParamByName('pCodigoContato').AsInteger := piCodigoContato;
  FoQryCamposConfigContato.Open;
  FoCdsCamposConfigContato.Open;
end;

end.

