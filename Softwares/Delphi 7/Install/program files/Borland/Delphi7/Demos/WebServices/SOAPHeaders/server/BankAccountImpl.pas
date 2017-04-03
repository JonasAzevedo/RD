unit BankAccountImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, BankAccountIntf, sysUtils;

type

  TBankAccount = class(TInvokableClass, IBankAccount)
  public
    function login(const UserName, Password:String):boolean; stdcall;
    function logout: Boolean; stdcall;
    function CreateAccount(const UserName, Password:String):boolean; stdcall;
    function getBalance: Currency; stdcall;
    function deposit(const amount: Currency): Currency; stdcall;
    function withdraw(const amount: Currency): Currency; stdcall;
  end;

implementation

uses AccountManagement;

{ TBankAccount }

function TBankAccount.login(const UserName, Password: String): Boolean;
var
  Headers: ISOAPHeaders;
  H: AuthHeader;
  AccNumber: Integer;
begin
  Result := False;

  { Read the User information }
  AccNumber := AuthenticateUser(UserName, Password);
  if AccNumber <> -1 then
  begin
    Headers := Self as ISoapHeaders;

    { Send back information to User as header }
    H := authHeader.Create;

    H.AccNumber := AccNumber;
    H.TimeStamp := Now;
    Headers.Send(H);

    Result := True;
  end;
end;

function TBankAccount.logout: Boolean;
var
  Headers: ISOAPHeaders;
  H: AuthHeader;
begin
  Result := False;
  Headers := Self as ISoapHeaders;
  Headers.Get(authHeader, TSoapHeader(H));
  try
    if H = nil then
      raise ERemotableException.Create('No authentication header, user must login')
    else
    begin
      { Read the accoount to refresh last visit }
      ReadAccount(H);
      Result := True;
    end;
  finally
    H.free;
  end;
end;

function TBankAccount.CreateAccount(const UserName,
  Password: String): boolean;
var
  Headers: ISOAPHeaders;
  H: AuthHeader;
  AccNumber: Integer;
begin
  Result := False;

  { Save user information }
  AccNumber := CreateUser(UserName, Password);
  if AccNumber <> -1 then
  begin
    Headers := Self as ISoapHeaders;

    { Send back header }
    H:= AuthHeader.Create;
    { Return the header with the generated account info }
    H.AccNumber := AccNumber;
    H.TimeStamp := Now;
    Headers.Send(H);
    Result := True;
  end;
end;

function TBankAccount.getBalance: Currency;
var
  Headers: ISOAPHeaders;
  H: AuthHeader;
begin
  Result := 0;
  Headers := Self as ISoapHeaders;
  Headers.Get(authHeader, TSoapHeader(H));
  try
    if H = nil then
      raise ERemotableException.Create('No authentication header, user must Login')
    else
    begin
      Result := ReadAccount(H);
    end;
  finally
    H.Free;
  end;
end;

function TBankAccount.deposit(const amount: Currency): Currency;
var
  Headers: ISOAPHeaders;
  H: AuthHeader;
begin
  Result := 0;
  Headers := Self as ISoapHeaders;
  Headers.Get(AuthHeader, TSoapHeader(H));
  try
    if H = nil then
      raise ERemotableException.Create('No authentication header, user must Login')
    else
    begin
      Result := ReadAccount(H) + amount;
      WriteAccount(H, Result);
    end;
  finally
    H.Free;
  end;
end;

function TBankAccount.withdraw(const amount: Currency): Currency;
var
  Headers: ISOAPHeaders;
  H: AuthHeader;
begin
  Result := 0;
  Headers := Self as ISoapHeaders;
  Headers.Get(AuthHeader, TSoapHeader(H));
  try
    if H = nil then
      raise ERemotableException.Create('No authentication header, user must Login')
    else
    begin
      Result := ReadAccount(H) - amount;
      WriteAccount(H, Result);
    end;
  finally
    H.Free;
  end;
end;


initialization
  InvRegistry.RegisterInvokableClass(TBankAccount);

end.
