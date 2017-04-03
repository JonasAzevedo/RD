unit unFrmContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmBasico, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Grids,
  DBGrids, ComCtrls, unConstantes, DB, unContato, Contnrs;

type
  TfrmContatos = class(TfrmBasico)
    pgCadastroContatos: TPageControl;
    tsDados: TTabSheet;
    grDados: TDBGrid;
    bbNovo: TBitBtn;
    bbEditar: TBitBtn;
    bbExcluir: TBitBtn;
    bbFechar: TBitBtn;
    tsEdicao: TTabSheet;
    lblEmail: TLabel;
    lblNome: TLabel;
    dbEdNome: TDBEdit;
    bbSalvar: TBitBtn;
    bbCancelar: TBitBtn;
    dsDados: TDataSource;
    dbEdEmail: TDBEdit;
    scBxCamposConfig: TScrollBox;
    lblCamposConfiguraveis: TLabel;
    procedure bbNovoClick(Sender: TObject);
    procedure bbEditarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure pgCadastroContatosChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grDadosDblClick(Sender: TObject);
    procedure pgCadastroContatosChange(Sender: TObject);
  private
    FoContatos: TContato;
    FoObjetosCamposConfig: TObjectList;

    procedure InserirAtualizar(const poModoInsercao: TModoInsercao);
    function VerificarEmailValido: Boolean;
    procedure CriarComponenteDescricaoCampo(const pnCodigoCampo: Integer;
      const psNomeCampo: String; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampo(const pnCodigoCampo: Integer;
      const psNomeCampo: String; const pnCodigoTipoCampo: Integer; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampoTexto(const pnCodigoCampo: Integer; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampoAreaTexto(const pnCodigoCampo: Integer; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampoCaixaSelecao(const pnCodigoCampo: Integer;
      const psNomeCampo: String; var pnTopo: Integer);
    procedure CriarCamposConfiguraveisParaCadastro;
    procedure CarregarValoresCamposConfiguraveis(const pnCodigoContato: Integer);
    procedure LimparValoresCamposConfiguraveies;
    procedure CarregarValoresCampos(const pnCodigoCampo: Integer; const psValor: String);
    procedure CalcularNovoTopo(const pnTopoComponenteAtual: Integer;
      const pnHeightComponenteAtual: Integer; const pnAdicional: Integer; var pnTopo: Integer);
    procedure ConfirmarCamposConfiguraveis;
    function SalvarDados: Boolean;
    function ValidarDadosAntesSalvar: Boolean;
    procedure PosicionarScrollBoxInicio;
  protected
    procedure InicializarTela; override;
    procedure DestruirTela; override;
    procedure Limpar; override;
  end;

implementation

uses unDM;

{$R *.dfm}

{ TfrmContatos }

procedure TfrmContatos.InicializarTela;
begin
  inherited;
  pgCadastroContatos.ActivePageIndex := nABA_DADOS;
  FoContatos := TContato.Create;
  FoContatos.CarregarContatosParaCadastro;
  FoObjetosCamposConfig := TObjectList.Create;
  CriarCamposConfiguraveisParaCadastro;
end;

procedure TfrmContatos.DestruirTela;
begin
  inherited;
  if Assigned(FoContatos) then
    FreeAndNil(FoContatos);

  if Assigned(FoObjetosCamposConfig) then
    FreeAndNil(FoObjetosCamposConfig);
end;

procedure TfrmContatos.Limpar;
begin
  inherited;
end;

procedure TfrmContatos.InserirAtualizar(const poModoInsercao: TModoInsercao);
var
  nCodigoContato: Integer;
begin
  if not(FoContatos.ValidarCdsDadosEstahAtivo) then
    Exit;

  if (poModoInsercao = tmiInserir) then
  begin
    if not(FoContatos.Novo) then
      Exit;
    nCodigoContato := nNUMERO_INDEFINIDO;
  end
  else
  begin
    if not(FoContatos.Editar) then
      Exit;
    nCodigoContato := FoContatos.prpFieldCodigo.AsInteger;
  end;

  CarregarValoresCamposConfiguraveis(nCodigoContato);
  pgCadastroContatos.ActivePageIndex := nABA_EDICAO;
  PosicionarScrollBoxInicio;
  FoFuncoes.FocarComponente(dbEdEmail);
end;

procedure TfrmContatos.bbNovoClick(Sender: TObject);
begin
  inherited;
  InserirAtualizar(tmiInserir);
end;

procedure TfrmContatos.bbEditarClick(Sender: TObject);
begin
  inherited;
  InserirAtualizar(tmiAtualizar);
end;

procedure TfrmContatos.bbExcluirClick(Sender: TObject);
begin
  inherited;
  if not(FoContatos.ValidarCdsDadosEstahAtivo) then
    Exit;

  if not(FoContatos.ValidarFieldCodigoEstahAtivo) then
    Exit;

  if (MessageDlg(sMSG_DESEJA_CONTINUAR_DELECAO_CONTATO, mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    Exit;

  if (FoContatos.Deletar(FoContatos.prpFieldCodigo.AsInteger)) then
  begin
    FoContatos.DeletarCdsDados;
    MessageDlg(sMSG_REGISTRO_DELETADO, mtInformation, [mbOK], 0);
  end
  else
    MessageDlg(FoContatos.prpMensagem, mtInformation, [mbOK], 0);
end;

procedure TfrmContatos.pgCadastroContatosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if (pgCadastroContatos.ActivePage = tsEdicao) then
    AllowChange := SalvarDados;

  if (pgCadastroContatos.ActivePage = tsDados) then
    AllowChange := False;    
end;

procedure TfrmContatos.bbCancelarClick(Sender: TObject);
begin
  inherited;
  if not(FoContatos.ValidarCdsDadosEstahAtivo) then
    Exit;

  FoContatos.Cancelar;
  pgCadastroContatos.ActivePageIndex := nABA_DADOS;
end;

procedure TfrmContatos.bbSalvarClick(Sender: TObject);
begin
  inherited;
  if not(SalvarDados) then
    Exit;
end;

procedure TfrmContatos.bbFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmContatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (MessageDlg(sMSG_DESEJA_FECHAR_TELA, mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    ACtion := caNone;
end;

procedure TfrmContatos.grDadosDblClick(Sender: TObject);
begin
  inherited;
  if not(FoContatos.ValidarCdsDadosEstahAtivo) then
    Exit;

  if (FoContatos.prpCdsDados.IsEmpty) then
    Exit;

  InserirAtualizar(tmiAtualizar);
end;

function TfrmContatos.VerificarEmailValido: Boolean;
begin
  Result := FoFuncoes.ValidarEmail(dbEdEmail.Text);
end;

procedure TfrmContatos.CriarComponenteDescricaoCampo(const pnCodigoCampo: Integer;
  const psNomeCampo: String; var pnTopo: Integer);
var
  oLabel: TLabel;
begin
  oLabel := TLabel.Create(scBxCamposConfig);
  oLabel.Parent := scBxCamposConfig;
  oLabel.Caption := psNomeCampo + ':';
  oLabel.Name := sPREFIXO_LABEL + IntToStr(pnCodigoCampo);
  oLabel.Tag := pnCodigoCampo;
  oLabel.Left := nLEFT_COMPONENTES;
  oLabel.Top := pnTopo;
  oLabel.Width := nWIDTH_COMPONENTES;
  FoObjetosCamposConfig.Add(oLabel);
  CalcularNovoTopo(oLabel.Top, oLabel.Height, nESPACO_ENTRE_DESCRICAO_CAMPO, pnTopo);
end;

procedure TfrmContatos.CriarComponenteEdicaoCampo(const pnCodigoCampo: Integer;
  const psNomeCampo: String; const pnCodigoTipoCampo: Integer; var pnTopo: Integer);
begin
  case pnCodigoTipoCampo of
    nCODIGO_TIPO_CAMPO_TEXTO:
      CriarComponenteEdicaoCampoTexto(pnCodigoCampo, pnTopo);

    nCODIGO_TIPO_CAMPO_AREA_TEXTO:
      CriarComponenteEdicaoCampoAreaTexto(pnCodigoCampo, pnTopo);

    nCODIGO_TIPO_CAMPO_CAIXA_SELECAO:
      CriarComponenteEdicaoCampoCaixaSelecao(pnCodigoCampo, psNomeCampo, pnTopo);
  end;
end;

procedure TfrmContatos.CriarComponenteEdicaoCampoTexto(const pnCodigoCampo: Integer; var pnTopo: Integer);
var
  oEdit: TEdit;
begin
  oEdit := TEdit.Create(scBxCamposConfig);
  oEdit.Parent := scBxCamposConfig;
  oEdit.Name := sPREFIXO_EDIT + IntToStr(pnCodigoCampo);
  oEdit.Tag := pnCodigoCampo;
  oEdit.Left := nLEFT_COMPONENTES;
  oEdit.Top := pnTopo;
  oEdit.Width := nWIDTH_COMPONENTES;
  oEdit.Height := nHEIGHT_COMPONENTE_EDICAO_TEXTO;
  oEdit.Text := sSTRING_INDEFINIDO;
  oEdit.MaxLength := nMAX_LENGTH_COMPONENTES;
  FoObjetosCamposConfig.Add(oEdit);
  CalcularNovoTopo(oEdit.Top, oEdit.Height, nESPACO_ENTRE_CAMPOS, pnTopo);
end;

procedure TfrmContatos.CriarComponenteEdicaoCampoAreaTexto(const pnCodigoCampo: Integer; var pnTopo: Integer);
var
  oMemo: TMemo;
begin
  oMemo := TMemo.Create(scBxCamposConfig);
  oMemo.Parent := scBxCamposConfig;
  oMemo.Name := sPREFIXO_MEMO + IntToStr(pnCodigoCampo);
  oMemo.Tag := pnCodigoCampo;
  oMemo.Left := nLEFT_COMPONENTES;
  oMemo.Top := pnTopo;
  oMemo.Width := nWIDTH_COMPONENTES;
  oMemo.Height := nHEIGHT_COMPONENTE_EDICAO_AREA_TEXTO;
  oMemo.Text := sSTRING_INDEFINIDO;
  oMemo.MaxLength := nMAX_LENGTH_COMPONENTES;
  FoObjetosCamposConfig.Add(oMemo);
  CalcularNovoTopo(oMemo.Top, oMemo.Height, nESPACO_ENTRE_CAMPOS, pnTopo);
end;

procedure TfrmContatos.CriarComponenteEdicaoCampoCaixaSelecao(const pnCodigoCampo: Integer;
  const psNomeCampo: String; var pnTopo: Integer);
var
  oCheckBox: TCheckBox;
begin
  oCheckBox := TCheckBox.Create(scBxCamposConfig);
  oCheckBox.Parent := scBxCamposConfig;
  oCheckBox.Name := sPREFIXO_CAIXA_SELECAO + IntToStr(pnCodigoCampo);
  oCheckBox.Caption := psNomeCampo;
  oCheckBox.Tag := pnCodigoCampo;
  oCheckBox.Left := nLEFT_COMPONENTES;
  oCheckBox.Top := pnTopo;
  oCheckBox.Width := nWIDTH_COMPONENTES;
  oCheckBox.Height := nHEIGHT_COMPONENTE_EDICAO_CAIXA_SELECAO;
  oCheckBox.Checked := False;
  FoObjetosCamposConfig.Add(oCheckBox);
  CalcularNovoTopo(oCheckBox.Top, oCheckBox.Height, nESPACO_ENTRE_CAMPOS, pnTopo);
end;

procedure TfrmContatos.pgCadastroContatosChange(Sender: TObject);
begin
  inherited;
  if (pgCadastroContatos.ActivePage = tsEdicao) then
    InserirAtualizar(tmiAtualizar);
end;

procedure TfrmContatos.LimparValoresCamposConfiguraveies;
var
  i: Integer;
begin
  for i:=0 to scBxCamposConfig.ComponentCount-1 do
  begin
    if (scBxCamposConfig.Components[i] is TEdit) then
      TEdit(scBxCamposConfig.Components[i]).Clear;

    if (scBxCamposConfig.Components[i] is TMemo) then
      TMemo(scBxCamposConfig.Components[i]).Clear;

    if (scBxCamposConfig.Components[i] is TCheckBox) then
      TCheckBox(scBxCamposConfig.Components[i]).Checked := False;
  end;
end;

procedure TfrmContatos.CriarCamposConfiguraveisParaCadastro;
var
  nTopo: Integer;
  oFieldCodigoCampo: TField;
  oFieldNomeCampo: TField;
  oFieldCodigoTipoCampo: TField;
begin
  if not(FoContatos.ValidarCdsCriarCamposConfigEstahAtivo) then
    Exit;

  FoContatos.CarregarCamposConfiguraveis;

  if (FoContatos.prpCdsCriarCamposConfig.IsEmpty) then
    Exit;

  oFieldCodigoCampo := nil;
  oFieldNomeCampo := nil;
  oFieldCodigoTipoCampo := nil;

  if (FoContatos.prpCdsCriarCamposConfig.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO) <> nil) then
    oFieldCodigoCampo := FoContatos.prpCdsCriarCamposConfig.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO);

  if (FoContatos.prpCdsCriarCamposConfig.FindField(sFIELD_CAMPO_CONFIG_CONTATO_NOME_CAMPO) <> nil) then
    oFieldNomeCampo := FoContatos.prpCdsCriarCamposConfig.FindField(sFIELD_CAMPO_CONFIG_CONTATO_NOME_CAMPO);

  if (FoContatos.prpCdsCriarCamposConfig.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_TIPO_CAMPO) <> nil) then
    oFieldCodigoTipoCampo := FoContatos.prpCdsCriarCamposConfig.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_TIPO_CAMPO);

  if (not(Assigned(oFieldCodigoCampo))) or (not(Assigned(oFieldNomeCampo))) or (not(Assigned(oFieldCodigoTipoCampo))) then
    Exit;

  nTopo := nINICIO_TOPO_COMPONENTES;
  FoContatos.prpCdsCriarCamposConfig.First;
  while not(FoContatos.prpCdsCriarCamposConfig.Eof) do
  begin
    if (oFieldCodigoTipoCampo.AsInteger <> nCODIGO_TIPO_CAMPO_CAIXA_SELECAO) then
      CriarComponenteDescricaoCampo(oFieldCodigoCampo.AsInteger, oFieldNomeCampo.AsString, nTopo);
    CriarComponenteEdicaoCampo(oFieldCodigoCampo.AsInteger, oFieldNomeCampo.AsString,
      oFieldCodigoTipoCampo.AsInteger, nTopo);

    FoContatos.prpCdsCriarCamposConfig.Next;
  end;
end;

procedure TfrmContatos.CarregarValoresCamposConfiguraveis(const pnCodigoContato: Integer);
var
  oFieldCodigoCampo: TField;
  oFieldValor: TField;
begin
  LimparValoresCamposConfiguraveies;

  if not(FoContatos.ValidarCdsContatoCamposEstahAtivo) then
    Exit;

  if (pnCodigoContato = nNUMERO_INDEFINIDO) then
    Exit;

  FoContatos.CarregarValoresCamposConfiguraveis(pnCodigoContato);

  if (FoContatos.prpCdsContatoCampos.IsEmpty) then
    Exit;

  oFieldCodigoCampo := nil;
  oFieldValor := nil;

  if (FoContatos.prpCdsContatoCampos.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO) <> nil) then
    oFieldCodigoCampo := FoContatos.prpCdsContatoCampos.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO);

  if (FoContatos.prpCdsContatoCampos.FindField(sFIELD_CAMPO_CONFIG_CONTATO_VALOR) <> nil) then
    oFieldValor := FoContatos.prpCdsContatoCampos.FindField(sFIELD_CAMPO_CONFIG_CONTATO_VALOR);

  if (not(Assigned(oFieldCodigoCampo))) or (not(Assigned(oFieldValor))) then
    Exit;

  FoContatos.prpCdsContatoCampos.First;
  while not(FoContatos.prpCdsContatoCampos.Eof) do
  begin
    CarregarValoresCampos(oFieldCodigoCampo.AsInteger, oFieldValor.AsString);
    FoContatos.prpCdsContatoCampos.Next;
  end;
end;

procedure TfrmContatos.CarregarValoresCampos(const pnCodigoCampo: Integer; const psValor: String);
var
  i: Integer;
begin
  for i:=0 to scBxCamposConfig.ComponentCount-1 do
  begin
    if (scBxCamposConfig.Components[i].Tag <> pnCodigoCampo) then
      Continue;

    if (scBxCamposConfig.Components[i] is TEdit) then
    begin
      TEdit(scBxCamposConfig.Components[i]).Text := psValor;
      Break;
    end;

    if (scBxCamposConfig.Components[i] is TMemo) then
    begin
      TMemo(scBxCamposConfig.Components[i]).Text := psValor;
      Break;
    end;

    if (scBxCamposConfig.Components[i] is TCheckBox) then
    begin
      TCheckBox(scBxCamposConfig.Components[i]).Checked := (psValor = sSIM);
      Break;
    end;
  end;
end;

procedure TfrmContatos.CalcularNovoTopo(const pnTopoComponenteAtual: Integer;
  const pnHeightComponenteAtual: Integer; const pnAdicional: Integer; var pnTopo: Integer);
begin
  pnTopo := pnTopoComponenteAtual + pnHeightComponenteAtual + pnAdicional;
end;

procedure TfrmContatos.ConfirmarCamposConfiguraveis;
var
  i: Integer;
  oFieldCodigoContato: TField;
  oFieldCC_ContatoNovo: TField;
  oFieldCodigoCampo: TField;
  oFieldValor: TField;

  function VerificarComponenteValido(poComponente: TComponent): Boolean;
  begin
    Result := (poComponente is TEdit) or (poComponente is TMemo) or (poComponente is TCheckBox);
  end;

  function DefinirFieldsAcessoDados: Boolean;
  begin
    if (FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_CODIGO_CONTATO) <> nil) then
      oFieldCodigoContato := FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_CODIGO_CONTATO);

    if (FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_CC_CONTATO_NOVO) <> nil) then
      oFieldCC_ContatoNovo := FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_CC_CONTATO_NOVO);

    if (FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_CODIGO_CAMPO) <> nil) then
      oFieldCodigoCampo := FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_CODIGO_CAMPO);

    if (FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_VALOR) <> nil) then
      oFieldValor := FoContatos.prpCdsContatosCamposEdicao.FindField(sFIELD_CONTATO_CAMPO_VALOR);

    Result := (Assigned(oFieldCodigoContato)) and (Assigned(oFieldCC_ContatoNovo)) and
      (Assigned(oFieldCodigoCampo)) and (Assigned(oFieldValor));
  end;

begin
  if not(FoContatos.ValidarCdsContatosCamposEdicaoEstahAtivo) then
    Exit;

  if not(FoContatos.prpCdsContatosCamposEdicao.Active) then
    FoContatos.prpCdsContatosCamposEdicao.Active := True;

  FoContatos.prpCdsContatosCamposEdicao.EmptyDataSet;

  if not(DefinirFieldsAcessoDados) then
    Exit;

  for i:=0 to scBxCamposConfig.ComponentCount-1 do
  begin
    if not(VerificarComponenteValido(scBxCamposConfig.Components[i])) then
      Continue;

    FoContatos.prpCdsContatosCamposEdicao.Append;

    if (FoContatos.prpCodigo = nNUMERO_INDEFINIDO) then
    begin
      oFieldCodigoContato.AsInteger := FoContatos.prpCdsDados.RecNo;
      oFieldCC_ContatoNovo.AsInteger := nNOVO_REGISTRO;
    end
    else
    begin
      oFieldCodigoContato.AsInteger := FoContatos.prpCodigo;
      oFieldCC_ContatoNovo.AsInteger := nREGISTRO_JAH_EXISTENTE;
    end;

    oFieldCodigoCampo.AsInteger := scBxCamposConfig.Components[i].Tag;

    if (scBxCamposConfig.Components[i] is TEdit) then
      oFieldValor.AsString := TEdit(scBxCamposConfig.Components[i]).Text

    else if (scBxCamposConfig.Components[i] is TMemo) then
      oFieldValor.AsString := TMemo(scBxCamposConfig.Components[i]).Text

    else if (scBxCamposConfig.Components[i] is TCheckBox) then
    begin
      if (TCheckBox(scBxCamposConfig.Components[i]).Checked) then
        oFieldValor.AsString := sSIM
      else
        oFieldValor.AsString := sNAO;
    end;

    FoContatos.prpCdsContatosCamposEdicao.Post;
  end;
end;

function TfrmContatos.SalvarDados: Boolean;
begin
  Result := False;
  if not(ValidarDadosAntesSalvar) then
    Exit;

  ConfirmarCamposConfiguraveis;

  if not(FoContatos.Salvar) then
    MessageDlg(FoContatos.prpMensagem, mtInformation, [mbOK], 0)
  else
    pgCadastroContatos.ActivePageIndex := nABA_DADOS;
end;

function TfrmContatos.ValidarDadosAntesSalvar: Boolean;
begin
  Result := (Trim(dbEdEmail.Text) <> sSTRING_INDEFINIDO);

  if Result then
    Result := VerificarEmailValido;  

  if not(Result) then
  begin
    MessageDlg(sMSG_DEVE_SER_INFORMADO_EMAIL_VALIDO, mtInformation, [mbOK], 0);
    FoFuncoes.FocarComponente(dbEdEmail);
  end;
end;

procedure TfrmContatos.PosicionarScrollBoxInicio;
begin
  scBxCamposConfig.VertScrollBar.Position := 0;
end;

end.
