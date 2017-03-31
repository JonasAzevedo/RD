unit unUsuarioSingleton;

interface

uses
  unUsuario;

type
  TUsuarioSingleton = class
  private
    FoUsuario: TUsuario;
    // o construtor � declarado como privado pois o m�todo principal � "ObterInstancia".
    constructor Create;
    procedure DestruirUsuario;
    function GetUsuario: TUsuario;
    function GetCodigoUsuario: Integer;
  public
    property prpUsuario: TUsuario read GetUsuario;
    property prpCodigoUsuario: Integer read GetCodigoUsuario;
    // m�todo principal do Singleton
    class function ObterInstancia: TUsuarioSingleton;

    // m�todo chamado pelo "Create" indiretamente
    class function NewInstance: TObject; override;

    destructor Destroy; override;

    procedure DefinirUsuario(const piCodigoUsuario: Integer);
  end;

var
  goInstancia: TUsuarioSingleton;

implementation

uses
  SysUtils;

{ TUsuarioSingleton }

constructor TUsuarioSingleton.Create;
begin
end;

destructor TUsuarioSingleton.Destroy;
begin
  goInstancia.DestruirUsuario;

  if Assigned(goInstancia) then
    FreeAndNil(goInstancia);

  inherited;
end;

class function TUsuarioSingleton.NewInstance: TObject;
begin
  // se j� houver uma inst�ncia, ela � retornada
  // caso contr�rio, o objeto � instanciado antes de ser retornado

  if not(Assigned(goInstancia)) then
    // chama a fun��o "NewInstance" da heran�a (TObject)
    goInstancia := TUsuarioSingleton(inherited NewInstance);

  result := goInstancia;
end;

class function TUsuarioSingleton.ObterInstancia: TUsuarioSingleton;
begin
  // chama o m�todo Create, que cria (uma �nica vez) e retorna a inst�ncia
  result := TUsuarioSingleton.Create;
end;

procedure TUsuarioSingleton.DefinirUsuario(const piCodigoUsuario: Integer);
begin
  DestruirUsuario;

  goInstancia.FoUsuario := TUsuario.Create;
  if not (goInstancia.FoUsuario.Buscar(piCodigoUsuario)) then
    DestruirUsuario;
end;

procedure TUsuarioSingleton.DestruirUsuario;
begin
  if Assigned(goInstancia.FoUsuario) then
    FreeAndNil(goInstancia.FoUsuario);
end;

function TUsuarioSingleton.GetUsuario: TUsuario;
begin
  Result := FoUsuario;
end;

function TUsuarioSingleton.GetCodigoUsuario: Integer;
begin
  Result := FoUsuario.prpCodigo;
end;

end.
