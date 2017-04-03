program prjRD;

uses
  Forms,
  Dialogs,
  SysUtils,
  unConstantes in 'Geral\unConstantes.pas',
  unFuncoes in 'Geral\unFuncoes.pas',
  unInicializacao in 'Classes\unInicializacao.pas',
  unClasseBasica in 'Classes\unClasseBasica.pas',
  unCampo in 'Classes\unCampo.pas',
  unContato in 'Classes\unContato.pas',
  unUsuario in 'Classes\unUsuario.pas',
  unUsuarioSingleton in 'Geral\unUsuarioSingleton.pas',
  unDM in 'DM\unDM.pas' {DM: TDataModule},
  unFrmBasico in 'Cliente\unFrmBasico.pas' {frmBasico},
  unFrmLogin in 'Cliente\unFrmLogin.pas' {frmLogin},
  unFrmPrincipal in 'Cliente\unFrmPrincipal.pas' {frmPrincipal},
  unFrmUsuarios in 'Cliente\unFrmUsuarios.pas' {frmUsuarios},
  unFrmCampos in 'Cliente\unFrmCampos.pas' {frmCampos},
  unFrmContatos in 'Cliente\unFrmContatos.pas' {frmContatos};

{$R *.res}

function InicializarSistema: Boolean;
var
  oInicializacao: TInicializacao;
begin
  oInicializacao := TInicializacao.Create;
  try
    Result := oInicializacao.InicializarSistema;
    if not(Result) then
    begin
      MessageDlg(oInicializacao.prpMensagem, mtInformation, [mbOK], 0);
      Exit;
    end;
  finally
    FreeAndNil(oInicializacao);
  end;
end;

function RealizarLogin: Boolean;
var
  oFrmLogin: TfrmLogin;
begin
  oFrmLogin := TfrmLogin.Create(nil);
  try
    oFrmLogin.ShowModal;
    Result := oFrmLogin.prpRealizouLogin;
  finally
    FreeAndNil(oFrmLogin);
  end;
end;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  if not(InicializarSistema) then
  begin
    Application.Terminate;
    Exit;
  end;

  if not(RealizarLogin) then
  begin
    Application.Terminate;
    Exit;
  end;

  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
