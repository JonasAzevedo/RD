unit account_s;

{This file was generated on 27 Oct 2000 17:52:20 GMT by version 03.03.03.C1.06}
{of the Inprise VisiBroker idl2pas CORBA IDL compiler.                        }

{Please do not edit the contents of this file. You should instead edit and    }
{recompile the original IDL which was located in the file                     }
{C:\Examples\IDL2PA~1\Arrays\account.idl.                                     }

{Delphi Pascal unit      : account_s                                          }
{derived from IDL module : default                                            }



interface

uses
  CORBA,
  account_i,
  account_c;

type
  TAccountSkeleton = class;

  TAccountSkeleton = class(CORBA.TCorbaObject, account_i.Account)
  private
    FImplementation : Account;
  public
    constructor Create(const InstanceName: string; const Impl: Account);
    destructor Destroy; override;
    function GetImplementation : Account;
    function  balance ( const myArray : account_i.ArrayType): Single;
  published
    procedure _balance(const _Input: CORBA.InputStream; _Cookie: Pointer);
  end;


implementation

constructor TAccountSkeleton.Create(const InstanceName : string; const Impl : account_i.Account);
begin
  inherited;
  inherited CreateSkeleton(InstanceName, 'Account', 'IDL:Account:1.0');
  FImplementation := Impl;
end;

destructor TAccountSkeleton.Destroy;
begin
  FImplementation := nil;
  inherited;
end;

function TAccountSkeleton.GetImplementation : account_i.Account;
begin
  result := FImplementation as account_i.Account;
end;

function  TAccountSkeleton.balance ( const myArray : account_i.ArrayType): Single;
begin
  Result := FImplementation.balance( myArray);
end;

procedure TAccountSkeleton._balance(const _Input: CORBA.InputStream; _Cookie: Pointer);
var
  _Output : CORBA.OutputStream;
  _myArray : account_i.ArrayType;
  _Result : Single;
begin
  _myArray := account_c.TArrayTypeHelper.Read(_Input);
  _Result := balance( _myArray);
  GetReplyBuffer(_Cookie, _Output);
  _Output.WriteFloat(_Result);
end;


initialization


end.