[!outputon]
[!if=(Comments, "TRUE")]
{ Invokable implementation File for T[!InterfaceName] which implements I[!InterfaceName] }

[!endif]
unit [!ImplUnitName];

interface

uses InvokeRegistry, Types, XSBuiltIns, [!IntfUnitName];

type

[!if=(Comments, "TRUE")]
  { T[!InterfaceName] }
[!endif]
  T[!InterfaceName] = class(TInvokableClass, I[!InterfaceName])
  public
[!if=(Samples, "TRUE")]
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
[!endif]
  end;

implementation
[!if=(Samples, "TRUE")]

function T[!InterfaceName].echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
[!if=(Comments, "TRUE")]
  { TODO : Implement method echoEnum }
[!endif]
  Result := Value;
end;

function T[!InterfaceName].echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
[!if=(Comments, "TRUE")]
  { TODO : Implement method echoDoubleArray }
[!endif]
  Result := Value;
end;

function T[!InterfaceName].echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
[!if=(Comments, "TRUE")]
  { TODO : Implement method echoMyEmployee }
[!endif]
  Result := TMyEmployee.Create;
end;

function T[!InterfaceName].echoDouble(const Value: Double): Double; stdcall;
begin
[!if=(Comments, "TRUE")]
  { TODO : Implement method echoDouble }
[!endif]
  Result := Value;
end;
[!endif]

initialization
[!if=(Comments, "TRUE")]
  { Invokable classes must be registered }
[!endif]
  InvRegistry.RegisterInvokableClass(T[!InterfaceName]);

end.
