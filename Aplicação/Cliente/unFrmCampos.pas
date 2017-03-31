unit unFrmCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmBasico, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, DBCtrls, Mask, unCampo, DB, unConstantes;

type
  TfrmCampos = class(TfrmBasico)
    pgCadastroCampos: TPageControl;
    tsDados: TTabSheet;
    tsEdicao: TTabSheet;
    grDados: TDBGrid;
    bbNovo: TBitBtn;
    bbEditar: TBitBtn;
    bbSalvar: TBitBtn;
    bbExcluir: TBitBtn;
    bbFechar: TBitBtn;
    lblTipoCampo: TLabel;
    lblNome: TLabel;
    dbEdNome: TDBEdit;
    dbLkCbBxTipoCampo: TDBLookupComboBox;
    dsDados: TDataSource;
    dsTiposCampos: TDataSource;
    bbConfirmar: TBitBtn;
    bbCancelar: TBitBtn;
    procedure bbNovoClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure bbEditarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure pgCadastroCamposChanging(Sender: TObject; var AllowChange: Boolean);
    procedure bbbCancelarClick(Sender: TObject);
    procedure bbConfirmarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grDadosDblClick(Sender: TObject);
    procedure dbLkCbBxTipoCampoExit(Sender: TObject);
    procedure pgCadastroCamposChange(Sender: TObject);
  private
    FoCampos: TCampo;
    function VerificarPreencheuDadosAbaEdicao: Boolean;
    function ValidarPodeRetornarAbaDados: Boolean;
    procedure InserirAtualizar(const poModoInsercao: TModoInsercao);
  protected
    procedure InicializarTela; override;
    procedure DestruirTela; override;
    procedure Limpar; override;
  end;

implementation

uses
  unDM;  

{$R *.dfm}

{ TfrmCampos }

procedure TfrmCampos.InicializarTela;
begin
  inherited;
  pgCadastroCampos.ActivePageIndex := nABA_DADOS;
  FoCampos := TCampo.Create;
  FoCampos.CarregarCamposParaCadastro;
end;

procedure TfrmCampos.DestruirTela;
begin
  inherited;
  if Assigned(FoCampos) then
    FreeAndNil(FoCampos);
end;

procedure TfrmCampos.Limpar;
begin
  inherited;
end;

procedure TfrmCampos.bbNovoClick(Sender: TObject);
begin
  inherited;
  InserirAtualizar(tmiInserir);
end;

procedure TfrmCampos.bbEditarClick(Sender: TObject);
begin
  inherited;
  InserirAtualizar(tmiAtualizar);
end;

procedure TfrmCampos.bbSalvarClick(Sender: TObject);
begin
  inherited;
  if not(FoCampos.Salvar) then
    MessageDlg(FoCampos.prpMensagem, mtInformation, [mbOK], 0)
  else
    FoCampos.CarregarCamposParaCadastro;
end;

procedure TfrmCampos.bbExcluirClick(Sender: TObject);
begin
  inherited;
  if not(FoCampos.ValidarCdsDadosEstahAtivo) then
    Exit;

  if not(FoCampos.ValidarFieldCodigoEstahAtivo) then
    Exit;

  if (FoCampos.prpCdsDados.IsEmpty) then
    Exit;

  if (FoCampos.prpFieldCodigo.AsInteger = nNUMERO_INDEFINIDO) then
  begin
    FoCampos.DeletarCdsDados;
    Exit;
  end;

  if (MessageDlg(sMSG_DESEJA_CONTINUAR_DELECAO_CAMPO, mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    Exit;

  if (FoCampos.Deletar(FoCampos.prpFieldCodigo.AsInteger)) then
  begin
    FoCampos.DeletarCdsDados;
    MessageDlg(sMSG_REGISTRO_DELETADO, mtInformation, [mbOK], 0);
  end
  else
    MessageDlg(FoCampos.prpMensagem, mtInformation, [mbOK], 0);
end;

function TfrmCampos.VerificarPreencheuDadosAbaEdicao: Boolean;
begin
  Result := (Trim(dbEdNome.Text) <> sSTRING_INDEFINIDO) and (dbLkCbBxTipoCampo.KeyValue <> null);
end;

function TfrmCampos.ValidarPodeRetornarAbaDados: Boolean;
begin
  Result := VerificarPreencheuDadosAbaEdicao;
  if not(Result) then
    MessageDlg(sMSG_DEVE_SER_INFORMADO_NOME_TIPO_CAMPO, mtInformation, [mbOK], 0);
end;

procedure TfrmCampos.InserirAtualizar(const poModoInsercao: TModoInsercao);
begin
  if not(FoCampos.ValidarCdsDadosEstahAtivo) then
    Exit;

  pgCadastroCampos.ActivePageIndex := nABA_EDICAO;
  FoFuncoes.FocarComponente(dbEdNome);
  if (poModoInsercao = tmiInserir) then
  begin
    if not(FoCampos.Novo) then
      Exit;
    dbLkCbBxTipoCampo.Enabled := True;
  end
  else
  begin
    if not(FoCampos.Editar) then
      Exit;
    dbLkCbBxTipoCampo.Enabled := False;
  end;
end;

procedure TfrmCampos.pgCadastroCamposChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if (pgCadastroCampos.ActivePage = tsEdicao) then
    AllowChange := ValidarPodeRetornarAbaDados;
end;

procedure TfrmCampos.bbbCancelarClick(Sender: TObject);
begin
  inherited;
  if not(FoCampos.ValidarCdsDadosEstahAtivo) then
    Exit;

  FoCampos.Cancelar;
  pgCadastroCampos.ActivePageIndex := nABA_DADOS;
end;

procedure TfrmCampos.bbConfirmarClick(Sender: TObject);
begin
  inherited;
  if ValidarPodeRetornarAbaDados then
    pgCadastroCampos.ActivePageIndex := nABA_DADOS;
end;

procedure TfrmCampos.bbFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCampos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (MessageDlg(sMSG_DESEJA_FECHAR_TELA, mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    ACtion := caNone;
end;

procedure TfrmCampos.grDadosDblClick(Sender: TObject);
begin
  inherited;
  if not(FoCampos.ValidarCdsDadosEstahAtivo) then
    Exit;

  if (FoCampos.prpCdsDados.IsEmpty) then
    Exit;

  InserirAtualizar(tmiAtualizar);
end;

procedure TfrmCampos.dbLkCbBxTipoCampoExit(Sender: TObject);
begin
  inherited;
  FoCampos.DefinirDescricaoTipoCampo;
end;

procedure TfrmCampos.pgCadastroCamposChange(Sender: TObject);
begin
  inherited;
  if (pgCadastroCampos.ActivePage = tsEdicao) then
    InserirAtualizar(tmiAtualizar);
end;

end.
