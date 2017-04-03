// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/cgi-bin/BankAccount_CGI.exe/wsdl/IBankAccount
// Encoding : utf-8
// Version  : 1.0
// (8/1/2002 1:35:22 PM - 1.33.2.5)
// ************************************************************************ //

unit IBankAccount_U;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"

  AuthHeader           = class;                 { "urn:BankAccountIntf"[H] }



  // ************************************************************************ //
  // Namespace : urn:BankAccountIntf
  // ************************************************************************ //
  AuthHeader = class(TSOAPHeader)
  private
    FAccNumber: Integer;
    FTimeStamp: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property AccNumber: Integer read FAccNumber write FAccNumber;
    property TimeStamp: TXSDateTime read FTimeStamp write FTimeStamp;
  end;


  // ************************************************************************ //
  // Namespace : urn:BankAccountIntf-IBankAccount
  // soapAction: urn:BankAccountIntf-IBankAccount#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IBankAccountbinding
  // service   : IBankAccountservice
  // port      : IBankAccountPort
  // URL       : http://localhost/cgi-bin/BankAccount_CGI.exe/soap/IBankAccount
  // ************************************************************************ //
  IBankAccount = interface(IInvokable)
  ['{97D45678-87A4-5253-FEEF-ED247899B9EA}']
    function  login(const UserName: WideString; const Password: WideString): Boolean; stdcall;
    function  logout: Boolean; stdcall;
    function  createAccount(const UserName: WideString; const Password: WideString): Boolean; stdcall;
    function  getBalance: Double; stdcall;
    function  deposit(const amount: Double): Double; stdcall;
    function  withdraw(const amount: Double): Double; stdcall;
  end;

function GetIBankAccount(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IBankAccount;


implementation

function GetIBankAccount(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IBankAccount;
const
  defWSDL = 'http://localhost/cgi-bin/BankAccount_CGI.exe/wsdl/IBankAccount';
  defURL  = 'http://localhost/cgi-bin/BankAccount_CGI.exe/soap/IBankAccount';
  defSvc  = 'IBankAccountservice';
  defPrt  = 'IBankAccountPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IBankAccount);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor AuthHeader.Destroy;
begin
  if Assigned(FTimeStamp) then
    FTimeStamp.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IBankAccount), 'urn:BankAccountIntf-IBankAccount', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IBankAccount), 'urn:BankAccountIntf-IBankAccount#%operationName%');
  InvRegistry.RegisterHeaderClass(TypeInfo(IBankAccount), AuthHeader, 'AuthHeader', 'urn:BankAccountIntf');
  RemClassRegistry.RegisterXSClass(AuthHeader, 'urn:BankAccountIntf', 'AuthHeader');

end.