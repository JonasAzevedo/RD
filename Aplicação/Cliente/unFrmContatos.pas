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
    bbSalvar: TBitBtn;
    bbExcluir: TBitBtn;
    bbFechar: TBitBtn;
    tsEdicao: TTabSheet;
    lblEmail: TLabel;
    lblNome: TLabel;
    dbEdNome: TDBEdit;
    bbConfirmar: TBitBtn;
    bbCancelar: TBitBtn;
    dsDados: TDataSource;
    dbEdEmail: TDBEdit;
    scBxCamposConfig: TScrollBox;
    lblCamposConfiguraveis: TLabel;
    procedure bbNovoClick(Sender: TObject);
    procedure bbEditarClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure pgCadastroContatosChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbConfirmarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grDadosDblClick(Sender: TObject);
    procedure pgCadastroContatosChange(Sender: TObject);
  private
    FoContatos: TContato;
    FoObjetosCamposConfig: TObjectList;

    function VerificarPreencheuDadosAbaEdicao: Boolean;
    function ValidarPodeRetornarAbaDados: Boolean;
    procedure InserirAtualizar(const poModoInsercao: TModoInsercao);
    function VerificarEmailValido: Boolean;
    procedure CriarComponenteDescricaoCampo(const pnCodigoCampo: Integer;
      const psNomeCampo: String; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampo(const pnCodigoCampo: Integer;
      const psNomeCampo: String; const pnCodigoTipoCampo: Integer; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampoTexto(const pnCodigoCampo: Integer;
      const psNomeCampo: String; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampoAreaTexto(const pnCodigoCampo: Integer;
      const psNomeCampo: String; var pnTopo: Integer);
    procedure CriarComponenteEdicaoCampoCaixaSelecao(const pnCodigoCampo: Integer;
      const psNomeCampo: String; var pnTopo: Integer);
    procedure CriarCamposConfiguraveisParaCadastro;
    procedure CarregarValoresCamposConfiguraveis(const piCodigoContato: Integer);
    procedure LimparValoresCamposConfiguraveies;
    procedure CarregarValoresCampos(const piCodigoCampo: Integer; const psValor: String);
    procedure CalcularNovoTopo(const pnTopoComponenteAtual: Integer;
      const pnHeightComponenteAtual: Integer; const pnAdicional: Integer; var pnTopo: Integer);
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
  FoFuncoes.FocarComponente(dbEdEmail);
end;

function TfrmContatos.ValidarPodeRetornarAbaDados: Boolean;
begin
  Result := VerificarPreencheuDadosAbaEdicao;
  if not(Result) then
  begin
    MessageDlg(sMSG_DEVE_SER_INFORMADO_EMAIL, mtInformation, [mbOK], 0);
    FoFuncoes.FocarComponente(dbEdEmail);
  end;
end;

function TfrmContatos.VerificarPreencheuDadosAbaEdicao: Boolean;
begin
  Result := Trim(dbEdEmail.Text) <> sSTRING_INDEFINIDO;

  if Result then
    Result := VerificarEmailValido;
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

procedure TfrmContatos.bbSalvarClick(Sender: TObject);
begin
  inherited;
  if not(FoContatos.Salvar) then
    MessageDlg(FoContatos.prpMensagem, mtInformation, [mbOK], 0)
  else
    FoContatos.CarregarContatosParaCadastro;
end;

procedure TfrmContatos.bbExcluirClick(Sender: TObject);
begin
  inherited;
  if not(FoContatos.ValidarCdsDadosEstahAtivo) then
    Exit;

  if not(FoContatos.ValidarFieldCodigoEstahAtivo) then
    Exit;

  if (FoContatos.prpFieldCodigo.AsInteger = nNUMERO_INDEFINIDO) then
  begin
    FoContatos.DeletarCdsDados;
    Exit;
  end;

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
    AllowChange := ValidarPodeRetornarAbaDados;
end;

procedure TfrmContatos.bbCancelarClick(Sender: TObject);
begin
  inherited;
  if not(FoContatos.ValidarCdsDadosEstahAtivo) then
    Exit;

  FoContatos.Cancelar;
  pgCadastroContatos.ActivePageIndex := nABA_DADOS;
end;

procedure TfrmContatos.bbConfirmarClick(Sender: TObject);
begin
  inherited;
  if ValidarPodeRetornarAbaDados then
    pgCadastroContatos.ActivePageIndex := nABA_DADOS;
end;

procedure TfrmContatos.bbFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmContatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
  oLabel.Name := sIDENTIFICADOR_LABEL + psNomeCampo;
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
      CriarComponenteEdicaoCampoTexto(pnCodigoCampo, psNomeCampo, pnTopo);

    nCODIGO_TIPO_CAMPO_AREA_TEXTO:
      CriarComponenteEdicaoCampoAreaTexto(pnCodigoCampo, psNomeCampo, pnTopo);

    nCODIGO_TIPO_CAMPO_CAIXA_SELECAO:
      CriarComponenteEdicaoCampoCaixaSelecao(pnCodigoCampo, psNomeCampo, pnTopo);
  end;
end;

procedure TfrmContatos.CriarComponenteEdicaoCampoTexto(const pnCodigoCampo: Integer;
  const psNomeCampo: String; var pnTopo: Integer);
var
  oEdit: TEdit;
begin
  oEdit := TEdit.Create(scBxCamposConfig);
  oEdit.Parent := scBxCamposConfig;
  oEdit.Name := sIDENTIFICADOR_EDIT + psNomeCampo;
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

procedure TfrmContatos.CriarComponenteEdicaoCampoAreaTexto(const pnCodigoCampo: Integer;
  const psNomeCampo: String; var pnTopo: Integer);
var
  oMemo: TMemo;
begin
  oMemo := TMemo.Create(scBxCamposConfig);
  oMemo.Parent := scBxCamposConfig;
  oMemo.Name := sIDENTIFICADOR_MEMO + psNomeCampo;
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
  oCheckBox.Name := sIDENTIFICADOR_CAIXA_SELECAO + psNomeCampo;
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
  if not(FoContatos.ValidarCdsCriarCamposConfig) then
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
    CriarComponenteDescricaoCampo(oFieldCodigoCampo.AsInteger, oFieldNomeCampo.AsString, nTopo);
    CriarComponenteEdicaoCampo(oFieldCodigoCampo.AsInteger, oFieldNomeCampo.AsString,
      oFieldCodigoTipoCampo.AsInteger, nTopo);

    FoContatos.prpCdsCriarCamposConfig.Next;
  end;
end;

procedure TfrmContatos.CarregarValoresCamposConfiguraveis(const piCodigoContato: Integer);
var
  oFieldCodigoCampo: TField;
  oFieldValor: TField;
begin
  LimparValoresCamposConfiguraveies;

  if not(FoContatos.ValidarCdsCamposConfigContatoEstahAtivo) then
    Exit;

  if (piCodigoContato = nNUMERO_INDEFINIDO) then
    Exit;

  FoContatos.CarregarValoresCamposConfiguraveis(piCodigoContato);

  if (FoContatos.prpCdsCamposConfigContato.IsEmpty) then
    Exit;

  oFieldCodigoCampo := nil;
  oFieldValor := nil;

  if (FoContatos.prpCdsCamposConfigContato.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO) <> nil) then
    oFieldCodigoCampo := FoContatos.prpCdsCamposConfigContato.FindField(sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO);

  if (FoContatos.prpCdsCamposConfigContato.FindField(sFIELD_CAMPO_CONFIG_CONTATO_VALOR) <> nil) then
    oFieldValor := FoContatos.prpCdsCamposConfigContato.FindField(sFIELD_CAMPO_CONFIG_CONTATO_VALOR);

  if (not(Assigned(oFieldCodigoCampo))) or (not(Assigned(oFieldValor))) then
    Exit;

  FoContatos.prpCdsCamposConfigContato.First;
  while not(FoContatos.prpCdsCamposConfigContato.Eof) do
  begin
    CarregarValoresCampos(oFieldCodigoCampo.AsInteger, oFieldValor.AsString);
    FoContatos.prpCdsCamposConfigContato.Next;
  end;
end;


procedure TfrmContatos.CarregarValoresCampos(const piCodigoCampo: Integer; const psValor: String);
var
  i: Integer;
begin
  for i:=0 to scBxCamposConfig.ComponentCount-1 do
  begin
    if (scBxCamposConfig.Components[i].Tag <> piCodigoCampo) then
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
      TCheckBox(scBxCamposConfig.Components[i]).Checked := (psValor <> sNUMERO_INDEFINIDO);
      Break;
    end;
  end;
end;

procedure TfrmContatos.CalcularNovoTopo(const pnTopoComponenteAtual: Integer;
  const pnHeightComponenteAtual: Integer; const pnAdicional: Integer; var pnTopo: Integer);
begin
  pnTopo := pnTopoComponenteAtual + pnHeightComponenteAtual + pnAdicional;
end;

end.



