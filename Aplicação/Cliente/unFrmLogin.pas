unit unFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmBasico, StdCtrls, unUsuario, ExtCtrls, Buttons;

type
  TfrmLogin = class(TfrmBasico)
    lblEmail: TLabel;
    lblSenha: TLabel;
    edEmail: TEdit;
    edSenha: TEdit;
    bbCadastrarUsuario: TBitBtn;
    bbLogar: TBitBtn;
    bbFechar: TBitBtn;
    procedure bbLogarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbCadastrarUsuarioClick(Sender: TObject);
  private
    FbRealizouLogin: Boolean;
    FoUsuario: TUsuario;

    procedure RealizarLogin;
  protected
    procedure InicializarTela; override;
    procedure DestruirTela; override;
    procedure Limpar; override;
  public
    property prpRealizouLogin: Boolean read FbRealizouLogin;
  end;

implementation

uses
  unUsuarioSingleton, unFrmUsuarios;

{$R *.dfm}

{ TfrmLogin }

procedure TfrmLogin.InicializarTela;
begin
  inherited;
  FoUsuario := TUsuario.Create;
  FbRealizouLogin := False;
end;

procedure TfrmLogin.DestruirTela;
begin
  if Assigned(FoUsuario) then
    FreeAndNil(FoUsuario);
  inherited;
end;

procedure TfrmLogin.Limpar;
begin
  inherited;
  edEmail.Clear;
  edSenha.Clear;
  FoFuncoes.FocarComponente(edEmail);
end;

procedure TfrmLogin.RealizarLogin;
begin
  FoUsuario.prpEmail := edEmail.Text;
  FoUsuario.prpSenha := edSenha.Text;
  if not(FoUsuario.Login) then
  begin
    MessageDlg(FoUsuario.prpMensagem, mtInformation, [mbOk], 0);
    Exit;
  end;

  TUsuarioSingleton.ObterInstancia.DefinirUsuario(FoUsuario.prpCodigo);
  FbRealizouLogin := True;
  Close;
end;

procedure TfrmLogin.bbLogarClick(Sender: TObject);
begin
  inherited;
  RealizarLogin;
end;

procedure TfrmLogin.bbFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    RealizarLogin;
end;

procedure TfrmLogin.bbCadastrarUsuarioClick(Sender: TObject);
var
  frmUsuarios: TfrmUsuarios;
begin
  inherited;
  frmUsuarios := TfrmUsuarios.Create(Self);
  try
    frmUsuarios.ShowModal;
  finally
    FreeAndNil(frmUsuarios);
  end;
end;

end.
