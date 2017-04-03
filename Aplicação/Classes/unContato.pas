unit unContato;

interface

uses
  unClasseBasica, ZDataset, DB, DBClient;

  type TContato = class(TBasica)
    private
      FsNome: String;
      FsEmail: String;
      FoQryContatoCampos: TZQuery;
      FoCdsContatoCampos: TClientDataSet;
      FoQryCriarCamposConfig: TZQuery;
      FoCdsCriarCamposConfig: TClientDataSet;
      FoCdsContatosCamposEdicao: TClientDataSet;
      FoFieldCodigoUsuario: TField;
      FoFieldNome: TField;
      FoFieldEmail: TField;

      function GetNome: String;
      function GetEmail: String;
      function GetCdsContatoCampos: TClientDataSet;
      function GetCdsCriarCamposConfig: TClientDataSet;
      function GetCdsContatosCamposEdicao: TClientDataSet;
      procedure SetNome(const psNome: String);
      procedure SetEmail(const psEmail: String);
      function AtualizarCamposConfiguraveis: Boolean;
      procedure AtualizarCodigoContatoCamposConfiguraveis(const pnCodigo: Integer);
    protected
      function Atualizar: Integer; override;
      function Inserir: Integer; override;
      procedure DefinirComponentesAcessoDados; override;
      procedure DefinirFieldsAcessoDados; override;
      procedure DefinirComponentesDadosParaNil; override;
      function ValidarFieldsAtivos: Boolean; override;
      function ProcessarSalvamento: Integer; override;
    public
      property prpNome: String read GetNome write SetNome;
      property prpEmail: String read GetEmail write SetEmail;
      property prpCdsContatoCampos: TClientDataSet read GetCdsContatoCampos;
      property prpCdsCriarCamposConfig: TClientDataSet read GetCdsCriarCamposConfig;
      property prpCdsContatosCamposEdicao: TClientDataSet read GetCdsContatosCamposEdicao;

      constructor Create;
      destructor Destroy; override;
      procedure Limpar; override;
      function Editar: Boolean; override;
      function Novo: Boolean;override;
      function Salvar: Boolean; override;
      function Deletar(const pnCodigo: Integer): Boolean; override;
      procedure Cancelar; override;
      procedure CarregarContatosParaCadastro;
      function ValidarCdsContatoCamposEstahAtivo: Boolean;
      function ValidarCdsCriarCamposConfigEstahAtivo: Boolean;
      function ValidarCdsContatosCamposEdicaoEstahAtivo: Boolean;
      procedure CarregarCamposConfiguraveis;
      procedure CarregarValoresCamposConfiguraveis(const pnCodigoContato: Integer);
  end;

implementation

uses
  unConstantes, unDM,  unUsuarioSingleton, SysUtils, Variants;

{ TContato }

constructor TContato.Create;
begin
  inherited;
  DefinirGenerator(sGEN_ID_CONTATOS);
end;

destructor TContato.Destroy;
begin
  inherited;
end;

function TContato.GetEmail: String;
begin
  Result := FsEmail;
end;

function TContato.GetCdsContatoCampos: TClientDataSet;
begin
  Result := FoCdsContatoCampos;
end;

function TContato.GetCdsCriarCamposConfig: TClientDataSet;
begin
  Result := FoCdsCriarCamposConfig;
end;

function TContato.GetCdsContatosCamposEdicao: TClientDataSet;
begin
  Result := FoCdsContatosCamposEdicao;
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
end;

function TContato.Deletar(const pnCodigo: Integer): Boolean;
begin
  Result := False;
  try
    IniciarTransacao;

    //deleta os campos dos contatos
    FoQryExecutar.Close;
    FoQryExecutar.SQL.Clear;
    FoQryExecutar.SQL.Add('DELETE FROM contato_campo ');
    FoQryExecutar.SQL.Add('WHERE codigo_contato = :pCodigoContato');
    FoQryExecutar.ParamByName('pCodigoContato').AsInteger := pnCodigo;
    FoQryExecutar.ExecSQL;

    FoQryExecutar.Close;
    FoQryExecutar.SQL.Clear;
    FoQryExecutar.SQL.Add('DELETE FROM contatos ');
    FoQryExecutar.SQL.Add('WHERE codigo = :pCodigo');
    FoQryExecutar.ParamByName('pCodigo').AsInteger := pnCodigo;
    FoQryExecutar.ExecSQL;

    ComitarTransacao;
    Result := True;
  except
    prpMensagem := sMSG_OCORREU_ERRO_DELETAR_CONTATO;
    RollbackTransacao;
  end;
end;

procedure TContato.Cancelar;
begin
  FoCdsDados.Cancel;
end;

function TContato.Atualizar: Integer;
begin
  try
    FoQryExecutar.Close;
    FoQryExecutar.SQL.Clear;
    FoQryExecutar.SQL.Add('UPDATE contatos ');
    FoQryExecutar.SQL.Add('SET nome = :pNome, email = :pEmail ');
    FoQryExecutar.SQL.Add('WHERE codigo = :pCodigo');
    FoQryExecutar.ParamByName('pNome').AsString := FoFieldNome.AsString;
    FoQryExecutar.ParamByName('pEmail').AsString := FoFieldEmail.AsString;
    FoQryExecutar.ParamByName('pCodigo').AsInteger := FoFieldCodigo.AsInteger;
    FoQryExecutar.ExecSQL;
    Result := FoFieldCodigo.AsInteger;
  except
    Result := nNUMERO_INDEFINIDO;
  end;
end;

function TContato.Inserir: Integer;
begin
  try
    FoQryExecutar.Close;
    FoQryExecutar.SQL.Clear;
    FoQryExecutar.SQL.Add('INSERT INTO contatos (codigo_usuario, nome, email) ');
    FoQryExecutar.SQL.Add('VALUES (:pCodigoUsuario, :pNome, :pEmail)');
    FoQryExecutar.ParamByName('pCodigoUsuario').AsInteger := FoFieldCodigoUsuario.AsInteger;
    FoQryExecutar.ParamByName('pNome').AsString := FoFieldNome.AsString;
    FoQryExecutar.ParamByName('pEmail').AsString := FoFieldEmail.AsString;
    FoQryExecutar.ExecSQL;
    Result := PegarCodigoUltimoRegistro;
    AtualizarCodigoRegistroInserido(Result);
    AtualizarCodigoContatoCamposConfiguraveis(Result);
  except
    Result := nNUMERO_INDEFINIDO;
  end;
end;

procedure TContato.DefinirComponentesAcessoDados;
begin
  inherited;
  FoQryDados := DM.qryContatos;
  FoDspDados := DM.dspContatos;
  FoCdsDados := DM.cdsContatos;
  FoQryContatoCampos := DM.qryContatoCampos;
  FoCdsContatoCampos := DM.cdsContatoCampos;
  FoQryCriarCamposConfig := DM.qryCriarCamposConfig;
  FoCdsCriarCamposConfig := DM.cdsCriarCamposConfig;
  FoCdsContatosCamposEdicao := DM.cdsContatosCamposEdicao;
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
  FoQryContatoCampos := nil;
  FoCdsContatoCampos := nil;
  FoQryCriarCamposConfig := nil;
  FoCdsCriarCamposConfig := nil;
  FoCdsContatosCamposEdicao := nil;
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

function TContato.ProcessarSalvamento: Integer;
begin
  Result := inherited ProcessarSalvamento;

  if (Result = nNUMERO_INDEFINIDO) or (Result = nCANCELA_SALVAMENTO) then
    Exit;

  Result := nNUMERO_INDEFINIDO;

  IniciarTransacao;
  try
    try
      if (FoFieldCodigo.AsInteger = nNUMERO_INDEFINIDO) then
        Result := Inserir
      else
        Result := Atualizar;

      if (Result <> nNUMERO_INDEFINIDO) then
      begin
        if not(AtualizarCamposConfiguraveis) then
          Result := nNUMERO_INDEFINIDO
      end;

      if (Result = nNUMERO_INDEFINIDO) then
      begin
        prpMensagem := sMSG_OCORREU_ERRO_SALVAR_CONTATO;
        Exit;
      end;
    finally
      if (Result = nNUMERO_INDEFINIDO) then
        RollbackTransacao
      else
        ComitarTransacao;
    end;
  except
    prpMensagem := sMSG_OCORREU_ERRO_SALVAR_CONTATO;
    RollbackTransacao;
  end;
end;

procedure TContato.CarregarContatosParaCadastro;
begin
  FoCdsDados.Close;
  FoQryDados.Close;
  FoQryDados.SQL.Clear;
  FoQryDados.SQL.Add('SELECT C.codigo, C.codigo_usuario, C.nome, C.email, C.data_cadastro ');
  FoQryDados.SQL.Add('FROM contatos C ');
  FoQryDados.SQL.Add('WHERE C.codigo_usuario = :pCodigoUsuario ');
  FoQryDados.SQL.Add('ORDER BY C.nome');
  FoQryDados.ParamByName('pCodigoUsuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  FoQryDados.Open;
  FoCdsDados.Open;
end;

function TContato.ValidarCdsContatoCamposEstahAtivo: Boolean;
begin
  Result := (FoCdsContatoCampos <> nil);
end;

function TContato.ValidarCdsCriarCamposConfigEstahAtivo: Boolean;
begin
  Result := (FoCdsCriarCamposConfig <> nil);
end;

function TContato.ValidarCdsContatosCamposEdicaoEstahAtivo: Boolean;
begin
  Result := (FoCdsContatosCamposEdicao <> nil);
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
  FoQryCriarCamposConfig.SQL.Add('ORDER BY C.codigo');
  FoQryCriarCamposConfig.ParamByName('pCodigoUsuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  FoQryCriarCamposConfig.Open;
  FoCdsCriarCamposConfig.Open;
end;

procedure TContato.CarregarValoresCamposConfiguraveis(const pnCodigoContato: Integer);
begin
  FoCdsContatoCampos.Close;
  FoQryContatoCampos.Close;
  FoQryContatoCampos.SQL.Clear;
  FoQryContatoCampos.SQL.Add('SELECT C.codigo AS "codigo_campo", C.nome AS "nome_campo", ');
  FoQryContatoCampos.SQL.Add('TC.codigo AS "codigo_tipo_campo", TC.descricao AS "descricao_tipo_campo", ');
  FoQryContatoCampos.SQL.Add('CC.codigo AS "codigo_contato_campo", CC.codigo_contato AS "codigo_contato", CC.valor AS "valor" ');
  FoQryContatoCampos.SQL.Add('FROM campos C ');
  FoQryContatoCampos.SQL.Add('JOIN "TIPOS_ CAMPOS" TC ON C.codigo_tipo_campo = TC.codigo ');
  FoQryContatoCampos.SQL.Add('LEFT JOIN contato_campo CC ON (C.codigo = CC.codigo_campo AND CC.codigo_contato = :pCodigoContato) ');
  FoQryContatoCampos.SQL.Add('WHERE C.codigo_usuario = :pCodigoUsuario ');
  FoQryContatoCampos.SQL.Add('ORDER BY C.codigo');
  FoQryContatoCampos.ParamByName('pCodigoUsuario').AsInteger := TUsuarioSingleton.ObterInstancia.prpCodigoUsuario;
  FoQryContatoCampos.ParamByName('pCodigoContato').AsInteger := pnCodigoContato;
  FoQryContatoCampos.Open;
  FoCdsContatoCampos.Open;
end;

function TContato.AtualizarCamposConfiguraveis: Boolean;
var
  oFieldCodigoCotato: TField;
  oFieldCodigoCampo: TField;
  oFieldValor: TField;
begin
  Result := False;
  try
    FoQryExecutar.Close;
    FoQryExecutar.SQL.Clear;
    FoQryExecutar.SQL.Add('DELETE FROM contato_campo ');
    FoQryExecutar.SQL.Add('WHERE codigo_contato = :pCodigoContato');
    FoQryExecutar.ParamByName('pCodigoContato').AsInteger := FoFieldCodigo.AsInteger;
    FoQryExecutar.ExecSQL;

    if not(ValidarCdsContatosCamposEdicaoEstahAtivo) then
      Exit;

    oFieldCodigoCotato := nil;
    oFieldCodigoCampo := nil;
    oFieldValor := nil;

    if (prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_CODIGO_CONTATO) <> nil) then
      oFieldCodigoCotato := prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_CODIGO_CONTATO);

    if (prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_CODIGO_CAMPO) <> nil) then
      oFieldCodigoCampo := prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_CODIGO_CAMPO);

    if (prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_VALOR) <> nil) then
      oFieldValor := prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_VALOR);

    if (not(Assigned(oFieldCodigoCotato))) or (not(Assigned(oFieldCodigoCampo)))
      or (not(Assigned(oFieldValor))) then
      Exit;

    prpCdsContatosCamposEdicao.First;
    while not(prpCdsContatosCamposEdicao.Eof) do
    begin
      FoQryExecutar.Close;
      FoQryExecutar.SQL.Clear;
      FoQryExecutar.SQL.Add('INSERT INTO contato_campo (codigo_contato,codigo_campo,valor) ');
      FoQryExecutar.SQL.Add('VALUES (:pCodigocontato, :pCodigoCampo, :pValor) ');
      FoQryExecutar.ParamByName('pCodigoContato').AsInteger := oFieldCodigoCotato.AsInteger;
      FoQryExecutar.ParamByName('pCodigoCampo').AsInteger := oFieldCodigoCampo.AsInteger;
      FoQryExecutar.ParamByName('pValor').AsString := oFieldValor.AsString;
      FoQryExecutar.ExecSQL;

      prpCdsContatosCamposEdicao.Next;
    end;
    Result := True;
  except
    Result := False;
    prpMensagem := sMSG_OCORREU_ERRO_SALVAR_CAMPOS_CONTATO;
    Exit;
  end;
end;

procedure TContato.AtualizarCodigoContatoCamposConfiguraveis(const pnCodigo: Integer);
var
  oFieldCodigoContato: TField;
begin
  if not(ValidarCdsContatosCamposEdicaoEstahAtivo) then
    Exit;

  oFieldCodigoContato := nil;
  if (prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_CODIGO_CONTATO) <> nil) then
    oFieldCodigoContato := prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_EDICAO_CODIGO_CONTATO);

  if not(Assigned(oFieldCodigoContato)) then
    Exit;

  prpCdsContatosCamposEdicao.First;
  while not(prpCdsContatosCamposEdicao.Eof) do
  begin
    prpCdsContatosCamposEdicao.Edit;
    oFieldCodigoContato.AsInteger := pnCodigo;
    prpCdsContatosCamposEdicao.Post;
    prpCdsContatosCamposEdicao.Next;
  end;
end;

end.


