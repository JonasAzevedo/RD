unit unUsuario;

interface

uses
  unClasseBasica;

  type TUsuario = class(TBasica)
    private
      FsEmail: String;
      FsNome: String;
      FsSenha: String;
      FsConfirmacaoSenha: String;

      function GetEmail: String;
      function GetNome: String;
      function GetSenha: String;
      function GetConfirmacaoSenha: String;
      procedure SetEmail(const psEmail: String);
      procedure SetNome(const psNome: String);
      procedure SetSenha(const psSenha: String);
      procedure SetConfirmacaoSenha(const psConfirmacaoSenha: String);
      function VerificarSenhaIgualConfirmacaoSenha: Boolean;
      function VerificarTamanhoMinimoSenha: Boolean;
      function VerificarEnderecoEmailValido: Boolean;
      function VerificarEmailJahCadastrado: Boolean;
      function CarregarDadosUsuario: Boolean;
    protected
      function Atualizar: Boolean; override;
      function Inserir: Boolean; override;
      procedure DefinirComponentesAcessoDados; override;
      procedure DefinirFieldsAcessoDados; override;
      procedure DefinirComponentesDadosParaNil; override;
      function ValidarFieldsAtivos: Boolean; override;
    public
      property prpEmail: String read GetEmail write SetEmail;
      property prpNome: String read GetNome write SetNome;
      property prpSenha: String read GetSenha write SetSenha;
      property prpConfirmacaoSenha: String read GetConfirmacaoSenha write SetConfirmacaoSenha;

      constructor Create;
      destructor Destroy; override;
      procedure Limpar; override;
      function Editar: Boolean; override;
      function Novo: Boolean; override;
      function Salvar: Boolean; override;
      function Deletar(const piCodigo: Integer): Boolean; override;
      procedure DeletarCdsDados; override;      
      procedure Cancelar; override;
      function Login: Boolean;
      function Buscar(const piCodigo: Integer): Boolean;
      procedure CarregarDadosUsuarioLogado;
  end;

implementation

uses
  unConstantes, unDM, DB, unUsuarioSingleton;

{ TUsuario }

constructor TUsuario.Create;
begin
  inherited Create;
end;

destructor TUsuario.Destroy;
begin
  inherited;
end;

function TUsuario.GetEmail: String;
begin
  Result := FsEmail;
end;

function TUsuario.GetNome: String;
begin
  Result := FsNome;
end;

function TUsuario.GetSenha: String;
begin
  Result := FsSenha;
end;

function TUsuario.GetConfirmacaoSenha: String;
begin
  Result := FsConfirmacaoSenha;
end;

procedure TUsuario.SetEmail(const psEmail: String);
begin
  FsEmail := psEmail;
end;

procedure TUsuario.SetNome(const psNome: String);
begin
  FsNome := psNome;
end;

procedure TUsuario.SetSenha(const psSenha: String);
begin
  FsSenha := psSenha;
end;

procedure TUsuario.SetConfirmacaoSenha(const psConfirmacaoSenha: String);
begin
  FsConfirmacaoSenha := psConfirmacaoSenha;
end;

procedure TUsuario.Limpar;
begin
  inherited;
  prpNome := sSTRING_INDEFINIDO;
  prpEmail := sSTRING_INDEFINIDO;
  prpSenha := sSTRING_INDEFINIDO;
  prpConfirmacaoSenha := sSTRING_INDEFINIDO;
end;

function TUsuario.Editar: Boolean;
begin
//xxxxxxxxx
end;

function TUsuario.Novo: Boolean;
begin
//xxxxxxxxx
end;

function TUsuario.Salvar: Boolean;
begin
  Result := inherited Salvar;

  if not(Result) then
    Exit;

  if not(VerificarSenhaIgualConfirmacaoSenha) then
    Exit;

  if not(VerificarTamanhoMinimoSenha) then
    Exit;

  if not(VerificarEnderecoEmailValido) then
    Exit;

  if VerificarEmailJahCadastrado then
    Exit;

  IniciarTransacao;
  try
    try
      if (prpCodigo = nNUMERO_INDEFINIDO) then
        Result := Inserir
      else
        Result := Atualizar;

      if not(Result) then
      begin
        prpMensagem := sMSG_OCORREU_ERRO_SALVAR_USUARIO;
        Exit;
      end;
    finally
      if not(Result) then
        RollbackTransacao
      else
        ComitarTransacao;
    end;
  except
    prpMensagem := sMSG_OCORREU_ERRO_SALVAR_USUARIO;
    RollbackTransacao;
  end;

  Result := True;
end;

function TUsuario.Deletar(const piCodigo: Integer): Boolean;
begin
  Result := False;
  Exit;
end;

procedure TUsuario.DeletarCdsDados;
begin
  Exit;
end;

procedure TUsuario.Cancelar;
begin
//xxxxxxxxx
end;

function TUsuario.Atualizar: Boolean;
begin
  Result := False;
  FoQryExecutar.Close;
  FoQryExecutar.SQL.Clear;
  FoQryExecutar.SQL.Add('UPDATE usuarios ');
  FoQryExecutar.SQL.Add('SET nome = :pNome, email = :pEmail, senha = :pSenha ');
  FoQryExecutar.SQL.Add('WHERE codigo = :pCodigo');
  FoQryExecutar.ParamByName('pNome').AsString := prpNome;
  FoQryExecutar.ParamByName('pEmail').AsString := prpEmail;
  FoQryExecutar.ParamByName('pSenha').AsString := prpSenha;
  FoQryExecutar.ParamByName('pCodigo').AsInteger := prpCodigo;
  FoQryExecutar.ExecSQL;
  Result := True;
end;

function TUsuario.Inserir: Boolean;
begin
  Result := False;
  FoQryExecutar.Close;
  FoQryExecutar.SQL.Clear;
  FoQryExecutar.SQL.Add('INSERT INTO usuarios (nome, email, senha) ');
  FoQryExecutar.SQL.Add('VALUES (:pNome, :pEmail, :pSenha)');
  FoQryExecutar.ParamByName('pNome').AsString := prpNome;
  FoQryExecutar.ParamByName('pEmail').AsString := prpEmail;
  FoQryExecutar.ParamByName('pSenha').AsString := prpSenha;
  FoQryExecutar.ExecSQL;
  Result := True;
end;

procedure TUsuario.DefinirComponentesAcessoDados;
begin
  inherited;
  FoQryDados := DM.qryUsuarios;
  FoDspDados := DM.dspUsuarios;
  FoCdsDados := DM.cdsUsuarios;
end;

procedure TUsuario.DefinirFieldsAcessoDados;
begin
  inherited;
end;

procedure TUsuario.DefinirComponentesDadosParaNil;
begin
  inherited;
end;

function TUsuario.ValidarFieldsAtivos: Boolean;
begin
  Result := inherited ValidarFieldsAtivos;
  if not(Result) then
    Exit;
end;

function TUsuario.VerificarSenhaIgualConfirmacaoSenha: Boolean;
begin
  Result := (prpSenha = prpConfirmacaoSenha);
  if not(Result) then
    prpMensagem := sMSG_SENHA_NAO_CONFERE;
end;

function TUsuario.VerificarTamanhoMinimoSenha: Boolean;
begin
  Result := False;
  if (Length(prpSenha) < nTAMANHO_MINIMO_SENHA) then
  begin
    prpMensagem := sMSG_SENHA_DEVE_TER_ENTRE_6_E_20_CARACTERES;
    Exit;
  end;
  Result := True;
end;

function TUsuario.VerificarEnderecoEmailValido: Boolean;
begin
  Result := FoFuncoes.ValidarEmail(prpEmail);
  if not(Result) then
    prpMensagem := sMSG_ENDERECO_EMAIL_INVALIDO;
end;

function TUsuario.VerificarEmailJahCadastrado: Boolean;
begin
  Result := False;

  FoQryExecutar.Close;
  FoQryExecutar.SQL.Clear;
  FoQryExecutar.SQL.Add('SELECT * FROM usuarios WHERE email = :pEmail');
  if (prpCodigo <> nNUMERO_INDEFINIDO) then
  begin
    FoQryExecutar.SQL.Add(' AND codigo <> :pCodigo');
    FoQryExecutar.ParamByName('pCodigo').AsInteger := prpCodigo;
  end;
  FoQryExecutar.ParamByName('pEmail').AsString := prpEmail;
  FoQryExecutar.Open;

  if not(FoQryExecutar.IsEmpty) then
  begin
    Result := True;
    prpMensagem := sMSG_EMAIL_JAH_CADASTRADO_NO_SISTEMA;
    Exit;
  end;
end;

function TUsuario.Login: Boolean;
begin
  Result := False;

  FoQryDados.Close;
  FoQryDados.SQL.Clear;
  FoQryDados.SQL.Add('SELECT * FROM usuarios ');
  FoQryDados.SQL.Add('WHERE email = :pEmail ');
  FoQryDados.SQL.Add('AND senha = :pSenha');
  FoQryDados.ParamByName('pEmail').AsString := prpEmail;
  FoQryDados.ParamByName('pSenha').AsString := prpSenha;
  FoQryDados.Open;

  if (FoQryDados.RecordCount <> 1) then
  begin
    prpMensagem := sMSG_LOGIN_INCORRETO_VERIFIQUE_EMAIL_SENHA_INFORMADOS;
    Exit;
  end;

  Result := CarregarDadosUsuario;
end;

function TUsuario.Buscar(const piCodigo: Integer): Boolean;
begin
  Result := False;

  if not(ValidarQryDadosEstahAtivo) then
    Exit;

  FoQryDados.Close;
  FoQryDados.SQL.Clear;
  FoQryDados.SQL.Add('SELECT * FROM usuarios ');
  FoQryDados.SQL.Add('WHERE codigo = :pCodigo');
  FoQryDados.ParamByName('pCodigo').AsInteger := piCodigo;
  FoQryDados.Open;

  if (FoQryDados.RecordCount <> 1) then
  begin
    prpMensagem := sMSG_NAO_FOI_ENCONTRADO_USUARIO;
    Exit;
  end;

  Result := CarregarDadosUsuario;
end;

function TUsuario.CarregarDadosUsuario: Boolean;
begin
  Result := False;

  if not(ValidarQryDadosEstahAtivo) then
    Exit;

  if (not(FoQryDados.RecordCount = 1)) then
    Exit;

  SetCodigo(FoQryDados.FieldByName('codigo').AsInteger);
  prpEmail := FoQryDados.FieldByName('email').AsString;
  prpNome := FoQryDados.FieldByName('nome').AsString;
  prpSenha := FoQryDados.FieldByName('senha').AsString;
  prpConfirmacaoSenha := FoQryDados.FieldByName('senha').AsString;

  Result := True;
end;

procedure TUsuario.CarregarDadosUsuarioLogado;
begin
  if not(Assigned(TUsuarioSingleton.ObterInstancia.prpUsuario)) then
    Exit;

  SetCodigo(TUsuarioSingleton.ObterInstancia.prpUsuario.prpCodigo);
  prpEmail := TUsuarioSingleton.ObterInstancia.prpUsuario.prpEmail;
  prpNome := TUsuarioSingleton.ObterInstancia.prpUsuario.prpNome;
  prpSenha := TUsuarioSingleton.ObterInstancia.prpUsuario.prpSenha;
  prpConfirmacaoSenha := TUsuarioSingleton.ObterInstancia.prpUsuario.prpSenha;
end;

end.
