unit BankAccountIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type

  { Authentication header - to keep track of the user we're dealing with }
  AuthHeader = class(TSOAPHeader)
  private
    FAccNumber: Integer;
    FTimeStamp: TDateTime;
  published
    property AccNumber: Integer read FAccNumber write FAccNumber;
    property TimeStamp: TDateTime read FTimeStamp write FTimeStamp;
  end;

  IBankAccount = interface(IInvokable)
  ['{21ECF1AF-AE0B-4C1B-A523-6875450EA58A}']
    function login(const UserName, Password:String):boolean; stdcall;
    function logout():boolean; stdcall;
    function createAccount(const UserName, Password:String):boolean; stdcall;
    function getBalance():currency; stdcall;
    function deposit(const amount:currency):currency; stdcall;
    function withdraw(const amount:currency):currency ;stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IBankAccount));
  InvRegistry.RegisterHeaderClass(TypeInfo(IBankAccount), AuthHeader);
  RemClassRegistry.RegisterXSClass(AuthHeader);

end.
