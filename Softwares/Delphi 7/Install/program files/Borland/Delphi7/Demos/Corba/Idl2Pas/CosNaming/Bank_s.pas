unit Bank_s;

{This file was generated on 11 Aug 2000 20:05:00 GMT by version 03.03.03.C1.06}
{of the Inprise VisiBroker idl2pas CORBA IDL compiler.                        }

{Please do not edit the contents of this file. You should instead edit and    }
{recompile the original IDL which was located in the file account.idl.        }

{Delphi Pascal unit      : Bank_s                                             }
{derived from IDL module : Bank                                               }



interface

uses
  CORBA,
  Bank_i,
  Bank_c;

type
  TAccountSkeleton = class;

  TAccountSkeleton = class(CORBA.TCorbaObject, Bank_i.Account)
  private
    FImplementation : Account;
  public
    constructor Create(const InstanceName: string; const Impl: Account);
    destructor Destroy; override;
    function GetImplementation : Account;
    function  balance : Single;
  published
    procedure _balance(const _Input: CORBA.InputStream; _Cookie: Pointer);
  end;


implementation

constructor TAccountSkeleton.Create(const InstanceName : string; const Impl : Bank_i.Account);
begin
  inherited;
  inherited CreateSkeleton(InstanceName, 'Account', 'IDL:Bank/Account:1.0');
  FImplementation := Impl;
end;

destructor TAccountSkeleton.Destroy;
begin
  FImplementation := nil;
  inherited;
end;

function TAccountSkeleton.GetImplementation : Bank_i.Account;
begin
  result := FImplementation as Bank_i.Account;
end;

function  TAccountSkeleton.balance : Single;
begin
  Result := FImplementation.balance;
end;

procedure TAccountSkeleton._balance(const _Input: CORBA.InputStream; _Cookie: Pointer);
var
  _Output : CORBA.OutputStream;
  _Result : Single;
begin
  _Result := balance;
  GetReplyBuffer(_Cookie, _Output);
  _Output.WriteFloat(_Result);
end;


initialization


end.