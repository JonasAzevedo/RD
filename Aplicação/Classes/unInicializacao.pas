unit unInicializacao;

interface

uses
  IniFiles;

  type TInicializacao = class
    private
      FsMensagem: String;
      FoArquivo: TIniFile;

      function GetMensagem: String;
      function CarregarArquivoConfiguracoes: Boolean;
      function ConectarBancoDados: Boolean;
      procedure DestruirArquivoIni;
    public
      property prpMensagem: String read GetMensagem;
      constructor Create;
      destructor Destroy; override;
      function InicializarSistema: Boolean;
  end;

implementation

uses
  unConstantes, unDM, SysUtils, Forms;

{ TInicializacao }

constructor TInicializacao.Create;
begin
  inherited;
  FsMensagem := sSTRING_INDEFINIDO;
end;

destructor TInicializacao.Destroy;
begin
  DestruirArquivoIni;
  inherited;
end;

function TInicializacao.GetMensagem: String;
begin
  Result := FsMensagem;
end;

function TInicializacao.InicializarSistema: Boolean;
begin
  Result := False;

  if not ConectarBancoDados then
    Exit;

  Result := True;
end;

function TInicializacao.ConectarBancoDados: Boolean;
begin
  Result := False;

  if not(CarregarArquivoConfiguracoes) then
    Exit;
  try
    DM.zConnection.HostName := FoArquivo.ReadString(sSECAO_BD, sIDENTIFICADOR_HOSTNAME, sSTRING_INDEFINIDO);
    DM.zConnection.Database := FoArquivo.ReadString(sSECAO_BD, sIDENTIFICADOR_DATABASE, sSTRING_INDEFINIDO);
    DM.zConnection.User := FoArquivo.ReadString(sSECAO_BD, sIDENTIFICADOR_USER, sSTRING_INDEFINIDO);
    DM.zConnection.Password := FoArquivo.ReadString(sSECAO_BD, sIDENTIFICADOR_PASSWORD, sSTRING_INDEFINIDO);

    DM.zConnection.Connected := True;
  except
    FsMensagem := sMSG_NAO_FOI_POSSIVEL_CONECTAR_BANCO_DADOS;
    Exit;
  end;

  Result := True;
end;

function TInicializacao.CarregarArquivoConfiguracoes: Boolean;
var
  sDiretorioArquivoIni: String;
begin
  Result := False;

  sDiretorioArquivoIni := ExtractFilePath(Application.ExeName) + sARQUIVO_INI;

  if not(FileExists(sDiretorioArquivoIni)) then
  begin
    FsMensagem := sMSG_ARQUIVO_CONFIGURACAO_NAO_EXISTE;
    Exit;
  end;

  DestruirArquivoIni;
  FoArquivo := TIniFile.Create(sDiretorioArquivoIni);
  Result := True;
end;

procedure TInicializacao.DestruirArquivoIni;
begin
  if Assigned(FoArquivo) then
    FreeAndNil(FoArquivo);
end;

end.
