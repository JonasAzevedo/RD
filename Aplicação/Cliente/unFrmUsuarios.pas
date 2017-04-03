unit unFrmUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmBasico, StdCtrls, Buttons, ExtCtrls, unUsuario;

type
  TfrmUsuarios = class(TfrmBasico)
    lblCodigo: TLabel;
    lblSenha: TLabel;
    lblEmail: TLabel;
    lblNome: TLabel;
    lblConfirmarSenha: TLabel;
    edCodigo: TEdit;
    edConfirmarSenha: TEdit;
    edSenha: TEdit;
    edEmail: TEdit;
    edNome: TEdit;
    bbSalvar: TBitBtn;
    bbFechar: TBitBtn;
    cbMostrarSenha: TCheckBox;
    procedure bbFecharClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure cbMostrarSenhaClick(Sender: TObject);
  private
    FoUsuario: TUsuario;

    procedure MostrarSenha(const pbMostrar: Boolean);
    procedure CarregarDadosUsuarioLogado;
  protected
    procedure InicializarTela; override;
    procedure DestruirTela; override;
    procedure Limpar; override;
  public
  end;

implementation

uses
  unConstantes, unUsuarioSingleton;

{$R *.dfm}

procedure TfrmUsuarios.InicializarTela;
begin
  inherited;
  FoUsuario := TUsuario.Create;
  MostrarSenha(False);

  if Assigned(TUsuarioSingleton.ObterInstancia.prpUsuario) then
    CarregarDadosUsuarioLogado;
end;

procedure TfrmUsuarios.DestruirTela;
begin
  inherited;
  if Assigned(FoUsuario) then
    FreeAndNil(FoUsuario);
end;

procedure TfrmUsuarios.Limpar;
begin
  inherited;
  edCodigo.Clear;
  edNome.Clear;
  edEmail.Clear;
  edSenha.Clear;
  edConfirmarSenha.Clear;
  cbMostrarSenha.Checked := False;
  FoFuncoes.FocarComponente(edNome);
end;

procedure TfrmUsuarios.MostrarSenha(const pbMostrar: Boolean);
begin
  if pbMostrar then
  begin
    edSenha.PasswordChar := sMOSTRAR_SENHA;
    edConfirmarSenha.PasswordChar := sMOSTRAR_SENHA;
  end
  else
  begin
    edSenha.PasswordChar := sESCONDER_SENHA;
    edConfirmarSenha.PasswordChar := sESCONDER_SENHA;
  end;
end;

procedure TfrmUsuarios.bbFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfrmUsuarios.bbSalvarClick(Sender: TObject);
begin
  inherited;
  FoUsuario.prpNome := Trim(edNome.Text);
  FoUsuario.prpEmail := Trim(edEmail.Text);
  FoUsuario.prpSenha := Trim(edSenha.Text);
  FoUsuario.prpConfirmacaoSenha := Trim(edConfirmarSenha.Text);

  if not(FoUsuario.Salvar) then
    MessageDlg(FoUsuario.prpMensagem, mtInformation, [mbOk], 0)
  else
  begin
    MessageDlg(sMSG_USUARIO_SALVO_COM_SUCESSO, mtInformation, [mbOk], 0);
    TUsuarioSingleton.ObterInstancia.DefinirUsuario(FoUsuario.prpCodigo);
  end;
end;

procedure TfrmUsuarios.cbMostrarSenhaClick(Sender: TObject);
begin
  inherited;
  MostrarSenha(cbMostrarSenha.Checked);
end;

procedure TfrmUsuarios.CarregarDadosUsuarioLogado;
begin
  FoUsuario.CarregarDadosUsuarioLogado;
  edCodigo.Text := IntToStr(FoUsuario.prpCodigo);
  edNome.Text := FoUsuario.prpNome;
  edEmail.Text := FoUsuario.prpEmail;
  edSenha.Text := FoUsuario.prpSenha;
  edConfirmarSenha.Text := FoUsuario.prpSenha;
end;

end.
